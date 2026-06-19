# 词库来源说明

本词库由脚本合并去重生成，目标用于 `word-trainer.html`。

## 层级

- `exam`: 公开中考英语词汇表，解析出 1773 条。
- `phrase`: 中考常考短语 220 条。
- `tianjin`: 天津 2020/2023/2024 可抽文本真题中出现、且不在基础考纲层的补充词。2021/2022 当前找到的公开源主要为图片/验证页，已作为人工校验方向，未把不可靠 OCR 结果混入。
- `national`: 北京、上海、杭州、成都、重庆、广州、深圳、武汉、长沙等城市真题抽词，以及北京新东方中考高频 666。
- `common`: 常用 3000 双语词表补齐。

## 计数

exam	1767
phrase	220
tianjin	65
national	334
common	614

## 主要网络来源

- 中考英语词汇表（GitHub raw）：https://raw.githubusercontent.com/mahavivo/english-wordlists/master/%E4%B8%AD%E8%80%83%E8%8B%B1%E8%AF%AD%E8%AF%8D%E6%B1%87%E8%A1%A8.txt
- 常用 3000 双语词表（Strommen）：https://strommeninc.com/most-common-3000-english-words-in-chinese-%E4%B8%AD%E6%96%87%E4%B8%AD%E6%9C%80%E5%B8%B8%E7%94%A8%E7%9A%843000%E4%B8%AA%E8%8B%B1%E8%AF%AD%E5%8D%95%E8%AF%8D/
- 中考高频 666 词汇（北京新东方 PDF）：https://bj.xdf.cn/uploads/soft/181112/zk666jc.pdf
- 2024 天津初中学业水平考试试卷及参考答案 PDF：https://gls.i371.cc/upfile/2024/07/1719889124569.pdf
- 2023 天津中考英语真题（通通好课）：https://www.tthaoke.com/shijuan_52562.html
- 2020 天津中考英语真题（通通好课）：https://www.tthaoke.com/shijuan_53289.html
- 2022 天津中考英语试卷图片版（天津本地宝，已定位但未纳入自动抽词）：https://tj.bendibao.com/edu/2022621/117666.shtm
- 2021 天津中考英语试卷图片版（天津本地宝，已定位但未纳入自动抽词）：https://tj.bendibao.com/edu/2021621/103979.shtm
- 全国城市中考真题入口（通通好课）：https://www.tthaoke.com/shijuan/grade/%E4%B8%AD%E8%80%83%E8%AF%95%E5%8D%B7/subject/%E8%8B%B1%E8%AF%AD.html
- EF 常用 3000 英文词表：https://www.ef.com.cn/english-references/english-vocabulary/top-3000-words/
