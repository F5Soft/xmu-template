\ProvidesClass{xmu}[XMU Undergraduates Dissertation Template]

%%%%%%%% XMU Undergraduates Dissertation Template %%%%%%%%
%%%%%%%%             Made by: F5Soft              %%%%%%%%
%%%%%%%%  https://github.com/F5Soft/xmu-template  %%%%%%%%

\PassOptionsToPackage{AutoFakeBold}{xeCJK}
\LoadClass{ctexbook}

%%%%%%%% 宏包 %%%%%%%%

% 页面尺寸
\RequirePackage[a4paper,top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm,head=1.57cm,foot=1.5cm]{geometry}
% 自定义页眉页脚
\RequirePackage{fancyhdr}
% 自定义章节标题
\RequirePackage{titlesec}
\RequirePackage{titletoc}
% 首行缩进
\RequirePackage{indentfirst}
% 插图
\RequirePackage{graphicx}
\RequirePackage{caption}
% 数学公式
\RequirePackage{array}
\RequirePackage{amsmath}
\RequirePackage{mathptmx}
\RequirePackage{bm}
% 算法
\RequirePackage{algorithm2e}
% 自定义脚注
\RequirePackage{scrextend}
% 自定义参考文献
\RequirePackage[square,super,comma,sort,compress]{natbib}
% 引用、超链接
\RequirePackage[colorlinks,citecolor=black,linkcolor=black,urlcolor=black,bookmarksnumbered=true,bookmarksopen=true]{hyperref}
% 条件编译
\RequirePackage{ifthen}

%%%%%%%% 用户自定义变量 %%%%%%%%

\renewcommand{\title}[2]{\def\xmu@title{#1}\def\xmu@entitle{#2}}        % 标题
\renewcommand{\author}[1]{\def\xmu@author{#1}}                          % 作者
\newcommand{\idn}[1]{\def\xmu@idn{#1}}                                  % 学号
\newcommand{\college}[1]{\def\xmu@college{#1}}                          % 学院
\newcommand{\subject}[1]{\def\xmu@subject{#1}}                          % 专业
\newcommand{\grade}[1]{\def\xmu@grade{#1}}                              % 年级
\newcommand{\teacher}[1]{\def\xmu@teacher{#1}}                          % 指导教师
\newcommand{\otherteacher}[1]{\def\xmu@otherteacher{#1}}                % 校外指导教师
\newcommand{\pubdate}[1]{\def\xmu@pubdate{#1}}                          % 日期
\newcommand{\keywords}[2]{\def\xmu@keywords{#1}\def\xmu@enkeywords{#2}} % 关键字

%%%%%%%% 字体、段落 %%%%%%%%

% 采用 Windows 字体文件以兼容 macOS 和 Linux
\setCJKfamilyfont{simsun}{simsun.ttc}
\setCJKfamilyfont{simhei}{simhei.ttf}
\setCJKfamilyfont{simkai}{simkai.ttf}
\setCJKfamilyfont{simfang}{simfang.ttf}

\renewcommand{\songti}{\CJKfamily{simsun}}    % 宋体
\renewcommand{\heiti}{\CJKfamily{simhei}}     % 黑体
\renewcommand{\kaishu}{\CJKfamily{simkai}}    % 楷体
\renewcommand{\fangsong}{\CJKfamily{simfang}} % 仿宋

% 英文默认字体
\setmainfont{Times New Roman}
% 中文默认字体
\setCJKmainfont[BoldFont=simhei.ttf,ItalicFont=simkai.ttf]{simsun.ttc}
% URL 字体
\urlstyle{same}
% 正文行距
\renewcommand{\baselinestretch}{1.5}

%%%%%%%% 封面 %%%%%%%%

\renewcommand{\maketitle}{
    \clearpage

    % 封面
    \thispagestyle{empty}
    \vspace*{20pt}
    \begin{center}
        \includegraphics[width=208pt]{xmu-logo-text.jpg}
        \vskip 36pt
        \bf\songti\zihao{-2} 本\quad 科\quad 毕\quad 业\quad 论\quad 文
        \vskip 24pt
        \heiti\zihao{2}\mdseries\xmu@title
        \vskip 10pt
        \rm\bf\zihao{3}\xmu@entitle
        \vskip 36pt
        \songti\zihao{4}\mdseries
        \renewcommand\arraystretch{1.2}
        \begin{tabular}{rl}
            姓\qquad 名：\quad & \xmu@author  \\
            学\qquad 号：\quad & \xmu@idn \\
            学\qquad 院：\quad & \xmu@college \\
            专\qquad 业：\quad & \xmu@subject \\
            年\qquad 级：\quad & \xmu@grade \\
            校内指导教师：\quad & \xmu@teacher \\
            \ifthenelse{\isundefined{\xmu@otherteacher}}{}{
                校外指导教师：\quad & \xmu@otherteacher \\
            }
        \end{tabular}
        \vskip 72pt
        \xmu@pubdate
    \end{center}
    \clearpage

    % 诚信承诺书
    \pagestyle{empty}
    \vspace*{8pt}
    \begin{center}
        \heiti\zihao{-2}厦门大学本科学位论文诚信承诺书
    \end{center}
    \vspace{21pt}
    {
        \renewcommand{\baselinestretch}{2}
        \zihao{4}
        \par
        本人呈交的学位论文是在导师指导下独立完成的研究成果。本人在论文写作中参考其他个人或集体已经发表的研究成果，均在文中以适当方式 明确标明，并符合相关法律规范及《厦门大学本科毕业论文（设计）规范》。
        \par
        该学位论文为（\qquad \qquad \qquad \qquad \qquad \qquad）课题（组）的研究成果，获得（\qquad \qquad \qquad \qquad）课题（组）经费或实验室的资助，在（\qquad \qquad \qquad \qquad）实验室完成。（请在以上括号内填写课题或课题组负责人或实验室名称，未有此项声明内容的，可以不作特别声明。）
        \par
        本人承诺辅修专业毕业论文（设计）（如有）的内容与主修专业不存在相同与相近情况。
        \vspace{24pt}
        \par
        \hfill 学生声明（签名）:\qquad \qquad~
        \par
        \hfill 年\qquad 月\qquad 日
        \par
    }
    \clearpage

    % 定义目录前的页码格式为罗马字母
    \pagenumbering{Roman}
    % 正文字号
    \zihao{-4}
}

%%%%%%%% 摘要 %%%%%%%%

% 中文摘要
\newenvironment{abstract}{
    \chapter*{摘\qquad 要}
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    \vspace{12pt}
    \par
}{
    \par
    \vspace{12pt}
    \noindent
    {\heiti\zihao{-4}关键词：}\xmu@keywords
    \clearpage
}

% 英文摘要
\newenvironment{enabstract}{
    \chapter*{Abstract}
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    \vspace{12pt}
    \par
}{
    \par
    \vspace{12pt}
    \noindent
    {\bf\zihao{-4}Key Words: }\xmu@enkeywords
    \clearpage
}

%%%%%%%% 目录 %%%%%%%%

\renewcommand{\tableofcontents}{
    % 中文目录标题
    \begin{center}
        \heiti\zihao{-3}目\qquad 录
    \end{center}
    \vspace{1em}
    % 中文目录页脚
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    % 中文目录内容
    \vspace{12pt}
    \@starttoc{toc}
    \clearpage

    % 英文目录标题
    \begin{center}
        \bf\zihao{-3}Contents
    \end{center}
    \vspace{1em}
    % 英文目录页脚
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    % 英文目录内容
    \vspace{12pt}
    \@starttoc{entoc}
    \clearpage

    % 定义目录后的页码格式为阿拉伯数字
    \pagenumbering{arabic}
}

% 定义英文目录相关指令
\newcommand{\enchapter}[1]{
    \addcontentsline{entoc}{chapter}{
        \protect\numberline{Chapter~\thechapter}#1
    }
}
\newcommand{\ensection}[1]{
    \addcontentsline{entoc}{section}{
        \protect\numberline{\thesection}#1
    }
}

\newcommand{\ensubsection}[1]{
    \addcontentsline{entoc}{subsection}{
        \protect\numberline{\thesubsection}#1
    }
}

% 定义中英双语目录相关指令
\newcommand{\xmuchapter}[2]{
    \chapter{#1}\enchapter{#2}
}

\newcommand{\xmusection}[2]{
    \section{#1}\ensection{#2}
}

\newcommand{\xmusubsection}[2]{
    \subsection{#1}\ensubsection{#2}
}

% 目录字体
\titlecontents{chapter}[0pt]
    {\bf\zihao{4}}{\thecontentslabel\;}{}{\,\bf\titlerule*{.}\contentspage}
\titlecontents{section}[1\ccwd]
    {\bf\zihao{-4}}{\thecontentslabel\;}{}{\,\bf\titlerule*{.}\contentspage}
\titlecontents{subsection}[2\ccwd]
    {\songti\zihao{-4}}{\thecontentslabel\;}{}{\,\titlerule*{.}\contentspage}

%%%%%%%% 章节 %%%%%%%%

\titleformat{\chapter}{\centering\rm\bf\zihao{-3}}{第\zhnumber{\thechapter} 章}{1em}{}
\titleformat{\section}{\rm\bf\zihao{4}}{\thesection}{0.5em}{}
\titleformat{\subsection}{\songti\zihao{-4}}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}{\songti\zihao{-4}}{\thesubsubsection}{0.5em}{}

\titlespacing{\chapter}{\z@}{\z@}{4ex}
\titlespacing{\section}{\z@}{1ex plus 1ex minus 0ex}{1.3ex}
\titlespacing{\subsection}{\z@}{1ex plus 1ex minus 0ex}{1.3ex}
\titlespacing{\subsubsection}{\z@}{1ex plus 1ex minus 0ex}{1.3ex}

\renewcommand{\chapter}{
    \clearpage
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{0.4pt}
    \fancyhead[OC]{\songti\zihao{-5}\leftmark}  %奇数页眉
    \fancyhead[EC]{\songti\zihao{-5}\xmu@title} %偶数页眉
    \fancyfoot[C]{\rm\zihao{-5}\thepage}        %页脚
    \global\@topnum\z@
    \secdef\@chapter\@schapter
}

%%%%%%%% 图表 %%%%%%%%

% 图表目录
\graphicspath{{figures/}}

\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}

\DeclareCaptionFont{simsun5bf}{\bf\songti\zihao{5}}
\captionsetup[figure]{font=simsun5bf}
\captionsetup[table]{position=top,belowskip=2ex,font=simsun5bf}

%%%%%%%% 脚注 %%%%%%%%

\renewcommand{\footnotesep}{1.2em}
\renewcommand{\thefootnote}{\textcircled{\rm\zihao{7}\arabic{footnote}}}
\renewcommand{\thempfootnote}{\textcircled{\rm\zihao{7}\arabic{mpfootnote}}}
\renewcommand{\footnotesize}{\renewcommand{\baselinestretch}{1}\songti\zihao{-5}}
\renewcommand{\footnoterule}{\vspace{1em}\hrule width 0.4\columnwidth height 0.4pt\vspace{0.3em}}
\deffootnote[1em]{1em}{1em}{\textsuperscript{\zihao{6}\thefootnotemark}\,}

%%%%%%%% 参考文献 %%%%%%%%

\newenvironment{reference}{
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[OC]{\songti\zihao{-5}参考文献}
    \fancyhead[EC]{\songti\zihao{-5}\xmu@title}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    \addcontentsline{toc}{chapter}{参考文献}
    \addcontentsline{entoc}{chapter}{References}
}{
    \par
    \clearpage
}

\renewcommand{\bibfont}{\songti\zihao{5}} % 参考文献字体
\renewcommand{\bibsep}{0.5ex}             % 参考文献之间的间距

%%%%%%%% 附录 %%%%%%%%

\renewenvironment{appendix}{
    \chapter*{附\qquad 录}
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[OC]{\songti\zihao{-5}附录}
    \fancyhead[EC]{\songti\zihao{-5}\xmu@title}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    \addcontentsline{toc}{chapter}{附录}
    \addcontentsline{entoc}{chapter}{Appendix}

    % 设置附录编号格式
    \renewcommand{\thefigure}{A-\arabic{figure}}
    \renewcommand{\thetable}{A-\arabic{table}}
    \renewcommand{\theequation}{A-\arabic{equation}}
    \renewcommand{\thesection}{A.\arabic{section}}
    \renewcommand{\thesubsection}{A.\arabic{section}.\arabic{subsection}}
    \setcounter{figure}{0}
    \setcounter{table}{0}
    \setcounter{equation}{0}
    \setcounter{section}{0}
    \setcounter{subsection}{0}
}{
    \par
    \clearpage
}

%%%%%%%% 致谢 %%%%%%%%

\newenvironment{acknowledgement}{
    \chapter*{致\qquad 谢}
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[OC]{\songti\zihao{-5}致谢}
    \fancyhead[EC]{\songti\zihao{-5}\xmu@title}
    \fancyfoot[C]{\rm\zihao{-5}\thepage}
    \addcontentsline{toc}{chapter}{致谢}
    \addcontentsline{entoc}{chapter}{Acknowledgements}
}{
    \par
    \clearpage
}

\endinput
