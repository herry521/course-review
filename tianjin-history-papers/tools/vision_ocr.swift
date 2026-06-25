import Foundation
import Vision
import ImageIO

func recognize(path: String) throws -> String {
    let url = URL(fileURLWithPath: path)
    guard let source = CGImageSourceCreateWithURL(url as CFURL, nil),
          let image = CGImageSourceCreateImageAtIndex(source, 0, nil) else {
        throw NSError(domain: "OCR", code: 1, userInfo: [NSLocalizedDescriptionKey: "Cannot open image: \(path)"])
    }

    var output: [String] = []
    let request = VNRecognizeTextRequest { request, error in
        if let error = error {
            output.append("[OCR error: \(error.localizedDescription)]")
            return
        }
        guard let observations = request.results as? [VNRecognizedTextObservation] else {
            return
        }
        let sorted = observations.sorted {
            if abs($0.boundingBox.midY - $1.boundingBox.midY) > 0.01 {
                return $0.boundingBox.midY > $1.boundingBox.midY
            }
            return $0.boundingBox.minX < $1.boundingBox.minX
        }
        for observation in sorted {
            if let candidate = observation.topCandidates(1).first {
                output.append(candidate.string)
            }
        }
    }
    request.recognitionLevel = .accurate
    request.usesLanguageCorrection = true
    request.recognitionLanguages = ["zh-Hans", "en-US"]

    let handler = VNImageRequestHandler(cgImage: image, options: [:])
    try handler.perform([request])
    return output.joined(separator: "\n")
}

let paths = Array(CommandLine.arguments.dropFirst())
if paths.isEmpty {
    fputs("Usage: vision_ocr.swift image1 [image2...]\n", stderr)
    exit(2)
}

for (index, path) in paths.enumerated() {
    if index > 0 {
        print("\n\n--- PAGE BREAK ---\n")
    }
    do {
        print(try recognize(path: path))
    } catch {
        fputs("\(error.localizedDescription)\n", stderr)
    }
}
