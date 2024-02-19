# Fonts Directory

Due to copyright reasons,
the fonts file are not directly included in this repository.
You need to find the following required fonts, and copy to this directory.
Or you can use the option `font dir` to specify the directory of the fonts.

> [!NOTE]
> - The file name should be exactly the same as required.
> - You should also use the newer version of *Times New Roman*, otherwise the small capital shape (used by `\scshape` or `\textsc{}` may not be available).

There is option `fontset = mac ms` if you have Microsoft Word installed on macOS,
so font will be found from `/Applications/Microsoft Word.app/Contents/Resources/DFonts/`.

## Required Fonts

| Font | File Name |
| ---- | --------- |
| Times New Roman (regular) | `times.ttf` |
| **Times New Roman (bold)** | `timesbd.ttf` |
| *Times New Roman (italic)* | `timesi.ttf` |
| ***Times New Roman (bold italic)*** | `timesbi.ttf` |
| SimSun 中易宋体 | `Simsun.ttc` |
| SimHei 中易黑体 | `SimHei.ttf` |
| Kaiti 楷体 | `Kaiti.ttf` |
| Fangsong 仿宋 | `Fangsong.ttf` |

> [!TIP]
> Why is it so troublesome to set up the fonts?
> Because the school requires the use of those *proprietary* fonts!
> We could have used open-source alternatives, for example the *TeX Gyre* fonts for English and *Source Han* for Chinese.
> You may use option `use tex font` if you want to use `TeX Gyre Terms` to replace `Times New Roman`.

因东大已有 Microsoft Word 正版授权，SEUer 可以在[东大云盘](https://pan.seu.edu.cn:443/link/687E9269EFC00E2E6FCE197A311D7F03)下载字体压缩包。

## Fonts Provided by LaTeX

The following fonts should be available with the TeX installation.

| Font | Description |
| ---- | ----------- |
| `TeX Gyre Heros` | A Helvetica clone (sans serif) |
