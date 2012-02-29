%%==================================================
%% sjtuphd.cls for SJTU PhD Thesis
%% modified by wei.jianwen@gmail.com
%% version: 2.0a
%% last update: Nov 20th, 2009
%%==================================================


%% ==================================================
% modified by jianwen
% modifications happen at line 81~93 and 104~131.
% contact me by wei.jianwen@gmail.com
% --------------------------------------------------
% !!! This template is intended to be processed by "latex->dvipdfmx" only !!!
% !!! source files .tex should be encoded in GBK
%% ==================================================

%% 
%% This is file `CASthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% CASthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright 2004-2006
%% CTEX.ORG and any individual authors listed elsewhere in this file.
%% 
%% This file was generated from file(s) of the CASthesis package project.
%% ----------------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%% 
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sjtuphd}
  [2009/09/15 v0.1j sjtuphd
   document class]
\newif\ifCAST@typeinfo \CAST@typeinfotrue
\DeclareOption{notypeinfo}{\CAST@typeinfofalse}
\newif\ifCAST@dvips \CAST@dvipsfalse
\DeclareOption{dvips}{\CAST@dvipstrue}
\DeclareOption{dvipdfm}{\CAST@dvipsfalse}
\DeclareOption{pdftex}{\CAST@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[fancyhdr,fntef]{ctexbook}[2005/11/25]
%% check pdfTeX mode
\RequirePackage{ifpdf}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,mathrsfs}

%% Times Fonts
\RequirePackage{times}

%_ added by wei.jianwen@gmail.com
% \RequirePackage{caption2}
\RequirePackage{ccaption}
\captiondelim{\ }
\captionnamefont{\kaishu\zihao{5}}
\captiontitlefont{\kaishu\zihao{5}}

%% graphics packages
\RequirePackage{graphicx}

%% sort and compress citations
\RequirePackage[sort&compress,numbers]{natbib}
% 上标引用
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}


%_ added by wei.jianwen@gmail.com
% 将浮动参数设为较宽松的值
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

%_ added by wei.jianwen@gmail.com
% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand\theequation{\arabic{chapter}--\arabic{equation}}
\renewcommand\thefigure{\arabic{chapter}--\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}--\arabic{table}}


%% hyperref package
%% ==================================================
% modified by jianwen
% contact me by wei.jianwen@gmail.com
% !!! This template is intended to be processed by "latex->dvipdfmx" only !!!
% !!! source files .tex should be encoded in GBK
%% --------------------------------------------------
% %% packages and settings depend on PDF mode
% \ifpdf   % We're running pdfTeX in PDF mode
%   \RequirePackage[pdftex]{hyperref}
%   \DeclareGraphicsExtensions{.pdf}
% \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
%   \ifCAST@dvips
%     \RequirePackage[dvips]{hyperref}
%     \RequirePackage{psfrag}
%     \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
%   \else
%     \RequirePackage[dvipdfm]{hyperref}
%   \fi
%   \DeclareGraphicsExtensions{.eps,.ps}
%   \fi
%% ==================================================


%% ==================================================
% modified by jianwen
% contact me by wei.jianwen@gmail.com
% !!! This template is intended to be processed by "latex->dvipdfmx" only !!!
% !!! source files .tex should be encoded in GBK
%% --------------------------------------------------
\RequirePackage[dvipdfm]{hyperref}
\AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
%% ==================================================


%% ==================================================
% added by jianwen to enable latex to handle .pdf, .jpg, .png
% contact me by wei.jianwen@gmail.com
% !!! This template is intended to be processed by "latex->dvipdfmx" only !!!
% !!! source files .tex should be encoded in GBK
%% --------------------------------------------------
%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
 \DeclareGraphicsExtensions{.eps,.pdf,.jpg,.png}
%% 让 latex 从 .bb 中读取 Bounding Box 信息
\DeclareGraphicsRule{.jpg}{eps}{.bb}{}
\DeclareGraphicsRule{.png}{eps}{.bb}{}
\DeclareGraphicsRule{.pdf}{eps}{.bb}{}
%% ==================================================


% configuration of hyperref
\hypersetup{CJKbookmarks,%
  bookmarksnumbered,%
  colorlinks,%
  linkcolor=blue,%
  citecolor=blue,%
  plainpages=false,%
  pdfstartview=FitH}


\AtEndOfPackage{\makeatletter\input{sjtuphd.cfg}\makeatother}
\oddsidemargin 1.5 true cm
\if@twoside
  \evensidemargin 0 true cm
\else
  \evensidemargin 1.5 true cm
\fi
\textheight 21 true cm
\textwidth 14.5 true cm
\headheight 15pt
\parskip 0.5ex plus 0.25ex minus 0.25ex
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%_  参考文献风格 added by wei.jianwen@gmail.com
\bibliographystyle{GBT7714-2005NLang}
%\bibliographystyle{unsrt}
%\bibliographystyle{sjtu}
%\bibliographystyle{wang}
% \bibliographystyle{sjtu2}
% \bibliographystyle{thubib}
% \def\thudot{\ifthu@bachelor\else\unskip.\fi}
% \def\thumasterbib{\ifthu@doctor [M]\else [Master Thesis]\fi}
% \def\thuphdbib{\ifthu@doctor [D]\else [Doctor Thesis]\fi}
\newcommand\thudot{\unskip.}
\newcommand\thumasterbib{[Master Thesis]}
\newcommand\thuphdbib{[Doctor Thesis]}

%_ CASTspace
\newcommand\CASTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CAST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CASTfiledate{#1}%
  \def\CASTfileversion{#2}%
  \def\CASTfileinfo{#3}}%
\expandafter\ifx\csname ver@sjtuphd.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_sjtuphd.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@sjtuphd.cls\endcsname}
\fi
\expandafter\CAST@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CAST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CASTunderline{\@ifnextchar[\CAST@underline\CTEXunderline}


\newcommand\classification[1]{\def\CAST@value@classification{#1}}
%_ added by wei.jianwen@gmail.com
\newcommand\studentnumber[1]{\def\CAST@value@studentnumber{#1}}
\newcommand\confidential[1]{\def\CAST@value@confidential{#1}}
\newcommand\UDC[1]{\def\CAST@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CAST@value@serialnumber{#1}}
\newcommand\school[1]{\def\CAST@value@school{#1}}
\newcommand\degree[1]{\def\CAST@value@degree{#1}}
\renewcommand\title[2][\CAST@value@title]{%
  \def\CAST@value@title{#2}
  \def\CAST@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\CAST@value@author{#1}}
\newcommand\advisor[1]{\def\CAST@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\CAST@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\CAST@value@major{#1}}
\newcommand\submitdate[1]{\def\CAST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CAST@value@defenddate{#1}}
\newcommand\institute[1]{\def\CAST@value@institute{#1}}
\newcommand\chairman[1]{\def\CAST@value@chairman{#1}}


%_ “绘制”SJTU中文标题页
\renewcommand\maketitle[1]{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
%      \lishu\zihao{-1} \CAST@value@school \\
%      \CAST@value@degree\CAST@label@thesis
      
\songti\zihao{-3}\CAST@label@statement

    \vskip \stretch{1}
%    \bf\songti\zihao{3}
%      \CAST@label@title~ 
%      \bf\heiti\zihao{3} \CASTunderline{~\CAST@value@title~}
       {\heiti\zihao{3} \CAST@value@title}
    \vskip \stretch{1}
    {\fangsong\zihao{4}}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{lc}
      \heiti\CAST@label@author &\songti
      \CASTunderline[150pt]{\CAST@value@author}
    \\
      \heiti\CAST@label@studentnumber &\songti
      \CASTunderline[150pt]{\CAST@value@studentnumber}
    \\
      \heiti\CAST@label@advisor &\songti
      \CASTunderline[150pt]{\CAST@value@advisor}
    \\  
      \heiti\CAST@label@major &\songti
      \CASTunderline[150pt]{\CAST@value@major}
    \\  
      \heiti\CAST@label@defenddate &\songti
      \CASTunderline[150pt]{\CAST@value@defenddate}
    \end{tabular}
  \end{center}
% \vskip 60pt
%  \begin{center}
%     \songti\zihao{4}\CAST@value@school\CAST@value@institute
%   \end{center}   
  \vskip \stretch{0.5}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      % \begin{footnotesize}
      %   \noindent
      %   Typeset by \LaTeXe{} at \CTEX@todayold \\
      %   With package \texttt{CASthesis} \CASTfileversion{} of C\TeX{}.ORG
      % \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
}


%_ English Title Page
\newcommand\englishtitle[1]{\def\CAST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\CAST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\CAST@value@englishadvisor{#1}}
%_ added by wei.jianwen@gmail.com
\newcommand\englishschool[1]{\def\CAST@value@englishschool{#1}}
\newcommand\englishinstitute[1]{\def\CAST@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\CAST@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\CAST@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\CAST@value@englishmajor{#1}}
%_ "绘制"英文标题页
\newcommand\makeenglishtitle[1]{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    {\normalfont\zihao{4} \CAST@label@englishstatement}
    \vspace*{20pt}
    \vskip\stretch{1}
      {\sf\zihao{-1} \CAST@value@englishtitle}
    \vskip \stretch{1}
    {\normalfont\zihao{4} \CAST@value@englishauthor}
    \vskip \stretch{1}
    {\normalfont\zihao{4} \CAST@label@englishadvisor}
    \vskip 3pt
      {\normalfont\zihao{4} \CAST@value@englishadvisor}
    \vskip \stretch{2}
      \normalfont\normalsize \CAST@value@englishinstitute
    \vskip 30pt
      \normalfont\normalsize \CAST@value@englishdate
    \vskip 20pt
    %  \it\normalsize \CAST@label@englishstatement
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%_ 原创性声明
\newcommand\makeDeclareOriginal{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  {\bf\zihao{3} \CAST@value@school}\\
  {\bf\zihao{3} \CAST@label@original}
  \end{center}
  \vskip 10pt
  {\zihao{-4}\CAST@label@originalcontent}
  \vskip 60pt
  \hspace{13em}\CAST@label@authorsign\hrulefill\hspace{1.5em}
  \vskip 15pt
  \hspace{16em}\CAST@label@originalDate\hspace{1em}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}


%_ 授权声明
\newcommand\makeDeclareAuthorization{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  {\bf\zihao{3} \CAST@value@school}\\
  {\bf\zihao{3} \CAST@label@authorization}
  \end{center}
  \vskip 10pt
  {\zihao{-4} \CAST@label@authorizationcontent}
  \vskip 60pt
  
  \CAST@label@authorsign\hrulefill\hspace{3em}\CAST@label@Supervisorsign\hrulefill
  \vskip 15pt
  \CAST@label@originalDate\hfill\hspace{3em}\CAST@label@originalDate
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}


%_ 页眉页脚
\fancypagestyle{plain}{%
  \fancyhf{}%
%  \fancyfoot[C]{\bfseries \small ~第~\thepage~页~}
 \fancyfoot[C]{\small ~---~{\bf\thepage}~---~} %%首页页脚格式
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}

\pagestyle{fancy}
  \fancyhf{}
%  \fancyhead[CE]{\small \CAST@value@titlemark}
  \fancyhead[LE]{\small {\it 上海交通大学博士学位论文}}
   \fancyhead[RE]{\small \CAST@value@titlemark}

  \fancyhead[LO]{\small {\it 上海交通大学博士学位论文}}
%  \fancyhead[RO]{\small \rightmark}
  \fancyhead[RO]{\small \leftmark}
%  \fancyfoot[C]{\bfseries \small ~---~\thepage~---~}
 \fancyfoot[C]{\small ~---~{\bf\thepage}~---~}
% \fancyfoot[LE,RO]{\bfseries \small ~--~\thepage~--~}


 %_ 中文摘要
 \newenvironment{abstract}
 {\chapter[\heiti 摘要]{\CAST@value@title\vskip 20pt\CAST@label@abstract}}
 {}

 %_ 中文关键词
 \newcommand\keywords[1]{%
   \vspace{2ex}\noindent{\bf \CAST@label@keywords} #1}

 %_ 英文摘要
 \newenvironment{englishabstract}
 {\chapter[\heiti ABSTRACT]{\CAST@value@englishtitle\vskip 20pt\bfseries \CAST@label@englishabstract}}
 {}

 % _英文摘要
 \newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \CAST@label@englishkeywords} #1}


%_ 目录
\renewcommand\tableofcontents{%
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse
  \fi
  \chapter{\contentsname}%目录里显示“目录”，否则\chapter*
  \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}


\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

%_ 参考文献环境
\renewenvironment{thebibliography}[1]
     {\chapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

    
\newenvironment{publications}[1]
     {\chapter{\CAST@label@publications}%
      \@mkboth{\MakeUppercase\CAST@label@publications}
              {\MakeUppercase\CAST@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}

    \newenvironment{resume}
  {\chapter{\CAST@label@resume}}
  {}
  
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
   {\endlist}
   
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
   {\endlist}
   
\renewenvironment{thanks}
  {\chapter{\CAST@label@thanks}}
  {}
  
\newenvironment{symbolnote}
  {\chapter{\CAST@label@symbolnote}}
  {} 

  
% 标题深度    
\setcounter{secnumdepth}{4}
    
    
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `sjtuphd.cls'.
