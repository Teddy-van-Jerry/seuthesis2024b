![seuthesis2024b](https://teddy-van-jerry.github.io/seuthesis2024b-cfp/seuthesis2024b-banner-thin.png)

LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors (东南大学 2024 届本科毕设 LaTeX 模板)

**Check out [Call for Papers](https://teddy-van-jerry.github.io/seuthesis2024b-cfp/seuthesis2024b-cfp.pdf)!** ([CFP TeX Source](https://github.com/Teddy-van-Jerry/seuthesis2024b-cfp))

[[**Demo PDF**](https://teddy-van-jerry.github.io/seuthesis2024b/seuthesis2024b.pdf)] [[Demo TeX Source](seuthesis2024b.tex)]

> [!IMPORTANT]
> This project is under active development.
>
> 此**非官方**（unofficial）模版基于《东南大学本科毕业设计（论文）参考模板 (2024年1月修订)》设计。毕设论文具体格式要求请使用者自行确认。

## Template Summary
This project provides a class file based on **LaTeX3** for typesetting thesis of Southeast University [`seuthesis2024b.cls`](seuthesis2024b.cls).
As an end-user, you do not need to know how to code in LaTeX3,
but use the interface LaTeX2e only.
Specifically, you will need to modify based on [`seuthesis2024b.tex`](seuthesis2024b.tex).

Oh, should I use Chinese to explain it one more time? Er, let's skip that. **TL;DR**:
使用此模板请直接修改 [`seuthesis2024b.tex`](seuthesis2024b.tex).

You need to *adjust class options* to suit your need.
For examples, Windows users should set the font correctly and delete `fontset = mac ms`.

## Usage
### Engine Supported
**XeLaTeX** only (TeX Live 2022 or later).
Compile with `latexmk -pdfxe seuthesis2024b.tex`.

### Fonts Preparation
There are two options:
1. Copy the required fonts to the `fonts` directory (or the directory where required fonts can be found). See [`fonts/README.md`](fonts/README.md) for details. Use `font dir = {{/path/to/fonts/}}` to specify the directory *(note the double brace and trailing slash)*. Meanwhile, delete `fontset = ...` or use `fontset = files`.
2. Use `fontset = mac ms` if you have Microsoft Word installed on macOS.

> [!TIP]
> 因东大已有 Microsoft Word 正版授权，SEUer 可以在[东大云盘](https://pan.seu.edu.cn:443/link/687E9269EFC00E2E6FCE197A311D7F03)下载字体压缩包。

## Template for Graduate Students
Check out the [`gradute` branch](https://github.com/Teddy-van-Jerry/seuthesis2024b/tree/graduate).
It is not well finetuned. You may modify the `.cls` file if needed.
[[Issue #3](https://github.com/Teddy-van-Jerry/seuthesis2024b/issues/3)]

## Recommended Readings
- [LaTeX v.s. Typst: What is TeX Community's Future Plan?](https://tex.stackexchange.com/q/705199/234654) (yes, my question on TeX.SX)
- [在 LaTeX 中使用 OpenType 字体（二）](https://stone-zeng.site/2019-07-06-use-opentype-fonts-ii)
- [CTeX 宏集手册](https://mirrors.ctan.org/language/chinese/ctex/ctex.pdf) (or `texdoc ctex` on your PC with local TeX installation)
- [PDF2PPT](https://github.com/Teddy-van-Jerry/pdf2ppt) (convert PDF beamer to MS PPTX presentations)
- [Wuqiong Zhao's Publications](https://wqzhao.org/publications)

## License
This project is distributed by the [MIT License](LICENSE).
