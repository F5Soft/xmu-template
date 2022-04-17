# XMU-Template

厦门大学本科毕业论文 LaTeX 模版。

本模版基于厦门大学图书馆 i 学堂 LaTeX 讲座中提供的硕博毕业论文模版改编而来，根据《厦门大学本科毕业论文（设计）规范》封装了大量格式设置等内容，使用时无需考虑各种格式指令，只需填充作者信息、摘要、关键词、章节标题、章节内容、附录、参考文献、致谢等内容即可。[模版效果可点击此处查看](https://github.com/F5Soft/xmu-template/blob/main/example.pdf)。

本模版除了主修毕业论文外，还支持辅修版本和毕业设计版本。详细使用示例可查看 example.tex 文件。

![](https://f5soft.site/zh/labs/2022/0416.assets/template.webp)

## Features

- 自动生成封面、诚信承诺书
- 支持将封面改为“本科毕业设计”
- 支持在封面中添加“（辅修）”
- 自动生成中英目录
- 中英文摘要、中英文目录支持
- 章节自动编号
- 自动设置奇数、偶数页眉和页脚
- 根据章节自动进行插图、表格、公式、算法编号
- 支持附录、附表，以及在附录中添加附录章节
- 自带字体文件，兼容缺少 Windows 版宋体和黑体字体的 Linux 和 macOS 系统
- 严格按照《厦门大学本科毕业论文（设计）规范》设置字体、行距等

## 示例

example.tex 文件内有详细的注释和使用示例，最终编译效果在 [example.pdf](https://github.com/F5Soft/xmu-template/blob/main/example.pdf) 中。可以直接在该示例基础上修改。

编译时，需要确保 example.tex 文件和 xmu.cls 文件在同一目录内，并使用 xelatex 进行编译。如果使用 pdflatex 编译则可能编译失败。

论文中的所有插图需统一放在 figures 文件夹内，并根据文件名来包含。

如果您没有接触过 LaTeX 环境，可以尝试安装 Tex Live 和 VSCode 中的 LaTeX Workshop 插件，通过 VSCode 打开 example.tex 文件，并参考网上的 LaTeX 教程以尝试使用本模版。

## 自定义模版

xmu.cls 文件是模版文件，可以自己修改 xmu.cls 模版文件。模版文件中也提供了大量注释便于修改。

如果您认为自己修改的效果不错，可以发起 Pull request 贡献代码。也可以发起 Issue 提出要添加的功能。
