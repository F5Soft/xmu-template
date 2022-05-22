# XMU-Template

厦门大学本科毕业论文 LaTeX 模版和答辩幻灯片 LaTeX 模版。

毕业论文模版基于厦门大学图书馆 i 学堂 LaTeX 讲座中提供的硕博毕业论文模版改编而来，根据《厦门大学本科毕业论文（设计）规范》封装了大量格式设置等内容，使用时无需考虑各种格式指令，只需填充作者信息、摘要、关键词、章节标题、章节内容、附录、参考文献、致谢等内容即可。[模版效果可点击此处查看](https://github.com/F5Soft/xmu-template/blob/main/example.pdf)。答辩幻灯片模版则全部自制。

毕业论文模版效果：

![](https://f5soft.site/zh/labs/2022/0416.assets/cover.webp)

![](https://f5soft.site/zh/labs/2022/0416.assets/collection.webp)

毕业答辩幻灯片模版效果：

![](https://f5soft.site/zh/labs/2022/0510.assets/light.webp)

![](https://f5soft.site/zh/labs/2022/0510.assets/blue.webp)

![](https://f5soft.site/zh/labs/2022/0510.assets/orange.webp)

![](https://f5soft.site/zh/labs/2022/0510.assets/pink.webp)

毕业论文模版除了主修毕业论文外，还支持辅修版本和毕业设计版本。详细使用示例可查看 example.tex 文件。

## Features

### 毕业论文模版

- 自动生成封面、诚信承诺书、中英目录
- 支持将封面改为“本科毕业设计”
- 支持在封面中添加“（辅修）”
- 中英文摘要、中英文目录支持
- 章节自动编号
- 根据章节自动进行插图、表格、公式、算法编号
- 自动设置奇数、偶数页眉和页脚
- 支持从 bib 文件导入参考文献，将自动按照 GB/T 7714-2005 设置参考文献的引用格式
- 支持附录、附表，以及在附录中添加附录章节
- 同时支持电子版和打印版，如果设成打印版，将会在某些偶数页产生空白，使得下一部分的内容从奇数页开始
- 致谢环境可以自定义放在摘要前或论文最后
- 自带字体文件，兼容缺少 Windows 版宋体和黑体字体的 Linux 和 macOS 系统
- 严格按照《厦门大学本科毕业论文（设计）规范》设置字体、行距等

### 毕业答辩幻灯片模版

- 自动生成封面、目录
- 自动生成章节转场帧
- 底部包括控制放映等导航条
- 支持4:3/16:9/16:10等多种比例
- 支持自定义颜色
- 含有学校校徽元素
- 正文中文使用黑体、英文使用Arial

## 毕业论文模版示例

最简单的示例 example-minimal.tex，编译时需要确保和 xmu.cls 文件在同一目录内：

> 如果编译失败（尤其是 macOS系统），请**使用 xelatex 进行编译**。如果使用的是 VSCode 的 Latex Workshop 插件，需要选择 Recipe: latexmk (xelatex) 这一项。

```tex
%!TEX program = xelatex
\documentclass{xmu}
\begin{document}

% 基础信息

\print % 电子版 / 打印版（打印版将在某些偶数页产生空白页）
% \arabicchapter % 取消注释后，仅使用数字作为章的编号
% \design % 毕业设计 / 毕业论文（取消注释即为毕业设计）
% \minor % 主修 / 辅修（取消注释即为辅修）
\title{中文标题}{English Title}
\author{你的姓名}
\idn{你的学号}
\college{你的学院}
\subject{你的专业}
\grade{你的年级}
\teacher{校内指导教师\; 职称}
\otherteacher{校外指导教师\; 职称} % 注释则不显示校外指导教师
\pubdate{完成时间}
\keywords{中文关键词}{English keywords}

% 封面、承诺书

\maketitle

% 致谢

\begin{acknowledgement}
    致谢内容。
\end{acknowledgement}

% 中文摘要

\begin{abstract}
    摘要内容。
\end{abstract}

% 英文摘要

\begin{enabstract}
    Abstract Contents.
\end{enabstract}

% 目录

\tableofcontents

% 正文

\xmuchapter{一级标题（章）}{Chapter}
\xmusection{二级标题（节）}{Section}
\xmusubsection{三级标题（小节）}{Subsection}
\subsubsection{四级标题} % 四级标题不显示在目录中，无需英文
正文内容，脚注\footnote{脚注内容}，引用参考文献\cite{cite1}。

% 参考文献

\begin{reference}
    % 如果需要使用 bib 文件导入参考文献，则取消注释下一行
    % \bibliography{references.bib}
    % 已自动按照 GB/T 7714-2005 设置参考文献的引用格式

    % 手动添加参考文献
    \begin{thebibliography}{1} % 括号内数字为参考文献条数
            \bibitem[1]{cite1} 参考文献1
    \end{thebibliography}
\end{reference}

% 附录

\begin{appendix}
    附录内容。
\end{appendix}

% 如果想要将致谢放在最后，可将最前的致谢移动至此

\end{document}
```

详细示例见 example.tex 文件，最终编译效果在 [example.pdf](https://github.com/F5Soft/xmu-template/blob/main/example.pdf) 中。可以直接在该示例基础上修改。

编译时，需要确保 example.tex 文件和 xmu.cls 文件在同一目录内，并使用 xelatex 进行编译。如果使用 pdflatex 编译则可能编译失败。

> 如果编译失败（尤其是 macOS系统），请**使用 xelatex 进行编译**。如果使用的是 VSCode 的 Latex Workshop 插件，需要选择 Recipe: latexmk (xelatex) 这一项。

论文中的所有插图需统一放在 figures 文件夹内，并根据文件名来包含。

如果您没有接触过 LaTeX 环境，可以尝试安装 Tex Live 和 VSCode 中的 LaTeX Workshop 插件，通过 VSCode 打开 example.tex 文件，并参考网上的 LaTeX 教程以尝试使用本模版。

## 毕业答辩幻灯片模版示例

详细可见example-slide.tex，编译好之后的效果[可点击此处查看](https://github.com/F5Soft/xmu-template/blob/main/example-slide.pdf)。

和毕业论文模版一样，该模版同样需要使用xelatex编译。

## 自定义模版

xmu.cls 和 xmu-slide.cls 文件分别是毕业论文模版文件和毕业答辩幻灯片模版文件，可以自己修改这两个模版文件。模版文件中也提供了大量注释便于修改。

如果您认为自己修改的效果不错，可以发起 Pull request 贡献代码。也可以发起 Issue 提出要添加的功能。
