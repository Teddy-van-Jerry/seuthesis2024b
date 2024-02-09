%% seuthesis2024b.cls
%% ------------------
%% LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors
%% GitHub Repo: https://github.com/Teddy-van-Jerry/seuthesis2024b
%%
%% Author: Teddy van Jerry (Wuqiong Zhao)
%% License: MIT

\NeedsTeXFormat {LaTeX2e}
\RequirePackage {l3keys2e}
\ProvidesExplClass {seuthesis2024b} {2024/02/09} {0.3.0}
  {Southeast University Thesis for Class of 2024 Bachelors}

\str_const:Nn \c__seuthesis_name_str { seuthesis2024b }
\str_const:Nn \c__seuthesis_base_class_str { report }
\str_const:Nn \c__seuthesis_pagesize_str { a4paper }
\str_const:Nn \c__seuthesis_font_pt_str { 12pt }
\str_const:Nn \c__seuthesis_institute_str { 东南大学 }

\keys_define:nn { seuthesis2024b }
  {
    % page setup
    , two side       .bool_set:N = \l__seuthesis_twoside_bool
    , two side       .initial:n  = { false }
    , two~side       .bool_set:N = \l__seuthesis_twoside_bool
    , two-side       .bool_set:N = \l__seuthesis_twoside_bool
    , two sides      .bool_set:N = \l__seuthesis_twoside_bool
    , two~sides      .bool_set:N = \l__seuthesis_twoside_bool
    , two-sides      .bool_set:N = \l__seuthesis_twoside_bool
    , one side       .meta:n     = { two side = false }
    , one~side       .meta:n     = { two side = false }
    , show frame     .bool_set:N = \l__seuthesis_show_frame_bool
    , show frame     .initial:n  = { false }
    , show~frame     .bool_set:N = \l__seuthesis_show_frame_bool
    , show-frame     .bool_set:N = \l__seuthesis_show_frame_bool
    % font options
    , fontset        .tl_set:N   = \l__seuthesis_fontset_tl
    , fontset        .initial:n  = { files }
    , use tex font   .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use tex font   .initial:n  = { false }
    , use~tex~font   .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use-tex-font   .bool_set:N = \l__seuthesis_use_tex_font_bool
    , font dir       .tl_set:N   = \l__seuthesis_font_dir_tl
    , font dir       .initial:n  = { fonts/ }
    , font~dir       .meta:n     = { font dir = #1 }
    , font-dir       .meta:n     = { font dir = #1 }
    % maths options
    , no maths       .bool_set:N = \l__seuthesis_no_maths_bool
    , no maths       .initial:n  = { false }
    , no~maths       .bool_set:N = \l__seuthesis_no_maths_bool
    , no-maths       .bool_set:N = \l__seuthesis_no_maths_bool
    % bibliography
    , bib title case .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib title case .initial:n  = { false }
    , bib~title case .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib-title case .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib~title~case .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib-title-case .bool_set:N = \l__seuthesis_bib_title_case_bool
    % counters
    , continuous cnt .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , continuous cnt .initial:n  = { false }
    , continuous~cnt .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , continuous-cnt .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt in doc     .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt~in~doc     .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt-in-doc     .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt in chapter .meta:n     = { continuous cnt = false }
    , cnt~in~chapter .meta:n     = { continuous cnt = false }
    , cnt-in-chapter .meta:n     = { continuous cnt = false }
    % accessibility
    , accessibility  .bool_set:N = \l__seuthesis_accessibility_bool
    , accessibility  .initial:n  = { false }
    % others
    , unknown        .code:n     =
      {
        \PassOptionsToClass { \CurrentOption } { \c__seuthesis_base_class_str }
      }
  }
\ProcessKeyOptions [ seuthesis2024b ]
\PassOptionsToClass
  {
    , \c__seuthesis_pagesize_str
    , \c__seuthesis_font_pt_str
    , \bool_if:NTF \l__seuthesis_twoside_bool { twoside } { oneside }
  }
  { \c__seuthesis_base_class_str }
\LoadClass { \c__seuthesis_base_class_str }

%% ==========================
%% Utility Packages
%% ==========================
\RequirePackage { xpatch }
% \RequirePackage { etoolbox }

%% ==========================
%% Font Settings
%% ==========================
\RequirePackage
  [
    , fontset = none
    , zihao = -4
    , linespread = 1.5
  ]
  { ctex }
% Use Chinese fonts for circled numbers
\xeCJKDeclareCharClass { CJK }
  {
    , "24EA        % ⓪
    , "2460->"2473 % ①–⑳
    , "3251->"32BF % ㉑–㊿
    , "24FF        % ⓿
    , "2776->"277F % ❶–❿
    , "24EB->"24F4  % ⓫–⓴
  }

\NewDocumentCommand \seuthesis@SetFont { m }
  {
    \bool_if:NTF \l__seuthesis_use_tex_font_bool
      {
        \setmainfont { texgyretermes }
          [
            , UprightFont = *-regular
            , BoldFont = *-bold
            , ItalicFont = *-italic
            , BoldItalicFont = *-bolditalic
            , Extension = .otf
          ]
      }
      {
        \setmainfont { times }
          [
            , UprightFont = *
            , BoldFont = *bd
            , ItalicFont = *i
            , BoldItalicFont = *bi
            , Extension = .ttf
            , Path = #1
          ]
      }
    % sans serif font
    % there is no specification for the sans serif font, so we use the TeX Gyre Heros
    \setsansfont { texgyreheros }
      [
        , UprightFont = *-regular
        , BoldFont = *-bold
        , ItalicFont = *-italic
        , BoldItalicFont = *-bolditalic
        , Extension = .otf
        , Scale = MatchLowercase
      ]
    \setmonofont { Inconsolatazi4 }
      [
        , AutoFakeSlant
        , UprightFont = *-Regular
        , BoldFont = *-Bold
        , SlantedFont = *-Regular
        , SlantedFeatures = { FakeSlant }
        , BoldSlantedFont = *-Bold
        , BoldSlantedFeatures = { FakeSlant }
        , BoldItalicFont = *-Bold
        , BoldItalicFeatures = { FakeSlant }
        , Extension = .otf
        , Scale = MatchLowercase
        , StylisticSet = 3
      ]
    % Chinese fonts
    \def \CJKFontOptions
      {
        , Path = #1
        , AutoFakeBold
        , AutoFakeSlant
      }
    \def \CJKFontFamilyOptions
      {
        , Path = #1
        , BoldFont = *
        , ItalicFont = *
        , BoldItalicFont = *
        , AutoFakeBold
        , AutoFakeSlant
        , BoldFeatures = { FakeBold = 4 }
      }
    \setCJKmainfont { SimSun   } [ \CJKFontOptions ]
    \setCJKsansfont { SimHei   } [ \CJKFontOptions ]
    \setCJKmonofont { Fangsong } [ \CJKFontOptions ]
    \newCJKfontfamily [ zhsong ] \songti   { SimSun   } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhhei  ] \heiti    { SimHei   } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhkai  ] \kaishu   { Kaiti    } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhfs   ] \fangsong { Fangsong } [ \CJKFontFamilyOptions ]
    \emfontdeclare     { \kaishu\itshape }
    \strongfontdeclare { \heiti\bfseries }
  }
\str_if_eq:VnT { \l__seuthesis_fontset_tl } { files }
  {
    \iow_term:x { [\c__seuthesis_name_str]~Use~font~dir:~ \l__seuthesis_font_dir_tl }
    \seuthesis@SetFont { \l__seuthesis_font_dir_tl }
  }
\clist_if_in:nVT { mac ms, mac~ms, mac-ms } { \l__seuthesis_fontset_tl }
  {
    \def \WordPath
      { /Applications/Microsoft~Word.app/Contents/Resources/DFonts/ }
    \seuthesis@SetFont { \WordPath }
  }

%% ==========================
%% Page Setup
%% ==========================
\RequirePackage { geometry }
% the official top/bottom margin is not accurate, as footer and header squeeze the text area.
\geometry
  {
    , margin = 2cm
    , top = 2.3cm
    , bottom = 3.3cm
    , bindingoffset = 5mm
    , headsep = 4.8pt
    , headheight = 22pt
    , footskip = 22pt
  }
\bool_if:NTF \l__seuthesis_show_frame_bool
  {
    \geometry { showframe }
  }
  {
    \geometry { showframe = false }
  }
\RequirePackage { fancyhdr }
\fancypagestyle { mainmatter }
  {
    \pagenumbering{ arabic }
    \fancyhf { }
    \fancyhead [ C ] { \zihao{-5} \c__seuthesis_institute_str 本科毕业设计（论文）\vspace{2pt} }
    \fancyfoot [ C ] { \zihao{-5} \thepage }
    \renewcommand { \headrulewidth } { 0.4pt }
  }
\fancypagestyle { frontmatter }
  {
    \pagenumbering{ Roman }
    \fancyhf { }
    \fancyfoot [ C ] { \zihao{-5} \thepage }
    \renewcommand { \headrulewidth } { 0mm }
  } 
\NewDocumentCommand { \ClearDoublePage } { }
  {
    \bool_if:NTF \l__seuthesis_twoside_bool { \cleardoublepage } { \clearpage }
  }

%% ==========================
%% Heading & Sectioning
%% ==========================
% show the \subsubsection numbering
\setcounter { secnumdepth } { 3 }
% use Chinese numberings
\RequirePackage { zhnumber }
\RequirePackage { titlesec }
% --- \chapter ---
\RequirePackage { xstring }
\newcommand \seuthesis@chapter@name [ 1 ]
  {
    \IfInteger { #1 } { 第 \zhnumber { #1 } 章 } { 附录 #1 }
  }
\titleformat { \chapter }
  { \centering\zihao{3}\bfseries\heiti\thispagestyle{fancy} }
  { \seuthesis@chapter@name { \thechapter } } { .5\ccwd } { }
\titlespacing* { \chapter } { 0pt } { -24pt } { 3.6pt }
% --- \section ---
\titleformat { \section }
  { \zihao{4}\heiti } { \thesection } { \widthof{~} } { }
\titlespacing* { \section } { 0pt } { 3.6pt } { 3.6pt }
% --- \subsection ---
\titleformat { \subsection }
  { \zihao{-4}\heiti } { \thesubsection } { \widthof{~} } { }
\titlespacing* { \subsection } { 0pt } { 0pt } { 0pt }
% --- \subsubsection ---
\titleformat { \subsubsection }
  { \zihao{-4}\songti } { \thesubsubsection } { \widthof{~} } { }
\titlespacing* { \subsubsection } { 0pt } { 0pt } { 0pt }
% --- \paragraph ---
\titleformat { \paragraph } [ runin ]
  { \zihao{-4}\songti\bfseries } { } { \widthof{~} } { }
\titlespacing* { \paragraph } { 2\ccwd } { 0pt } { .5\ccwd } % use default Chinese indent

%% ==========================
%% Figures
%% ==========================
\RequirePackage { graphicx }
\RequirePackage [ caption = false, font = small, subrefformat = parens ] { subfig }
\RequirePackage [ dvipsnames ] { xcolor }
\RequirePackage { tikz }
\RequirePackage [ export ] { adjustbox }

%% ==========================
%% Tables
%% ==========================
\RequirePackage { tabularx }
\RequirePackage { booktabs }
\RequirePackage { multirow }
\RequirePackage { longtable }
\RequirePackage { xltabular }
\RequirePackage { threeparttable }
\newcolumntype{Y}   {>{\centering\arraybackslash}X}     % centered X
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centered p
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centered m
% set rule widths in tables (provided by booktabs)
\lightrulewidth = 1pt
\cmidrulewidth  = 1pt
\xpatchcmd { \@addamp } { \if@firstamp }
  {
    \@ifundefined { c@colcntr }
      { \if@firstamp }
      { \stepcounter{colcntr} \if@firstamp }
  } { } { }
% macro for all columns in a row
\newcommand \allcolumns [2]
  {
    \multicolumn { \number\value{colcntr} } { #1 } { #2 }
  }
% macro for continued caption (typically used in the longtable)
\newcommand \continueTab
  {
    \allcolumns { r @{} } { { \songti\rmfamily \zihao{5} 续表~\thetable } } \\
  }
\newcommand \longTableHdr [1]
  {
    \toprule
    #1
    \midrule
    \endfirsthead
    \continueTab
    \toprule
    #1
    \midrule
    \endhead
    \bottomrule
    \endfoot
  }
\newcounter { colcntr }
\AtBeginEnvironment { longtable } { \setcounter { colcntr } { 1 } }
\AtBeginEnvironment { xltabular } { \setcounter { colcntr } { 1 } }

%% ==========================
%% Captions
%% ==========================
\RequirePackage { floatrow }
% set font size as \zihao{5} as well as center contents
\floatsetup [ figure ] { font = small }
\floatsetup [ table  ] { font = small, capposition = top }
\RequirePackage { caption }
\DeclareCaptionLabelFormat { seuthesislabel } { #1 #2 \hspace{.5\ccwd} }
\bool_if:NTF \l__seuthesis_continuous_cnt_bool
  {
    \counterwithout { figure   } { chapter }
    \counterwithout { table    } { chapter }
    \counterwithout { equation } { chapter }
    \renewcommand \thefigure { \arabic{figure} }
    \renewcommand \thetable  { \arabic{table } }
  }
  {
    \renewcommand \thefigure { \arabic{chapter}-\arabic{figure} }
    \renewcommand \thetable  { \arabic{chapter}.\arabic{table } }
  }
\captionsetup
  {
    , font = small % = \zihao{5}
    , labelformat = seuthesislabel
    , labelsep = none
  }

%% ==========================
%% Maths
%% ==========================
\bool_if:NF \l__seuthesis_no_maths_bool
  {
    \RequirePackage { mathtools }
    \RequirePackage { amssymb }
    \RequirePackage { amsthm }
    \RequirePackage { bm }
    \RequirePackage { siunitx }
  }

%% ==========================
%% Footnote
%% ==========================
\NewDocumentCommand \seuthesis@footnote { m }
  {
    \ifcase #1 \relax
      \or ① \or ② \or ③ \or ④ \or ⑤
      \or ⑥ \or ⑦ \or ⑧ \or ⑨ \or ⑩
      \or ⑪ \or ⑫ \or ⑬ \or ⑭ \or ⑮
      \or ⑯ \or ⑰ \or ⑱ \or ⑲ \or ⑳
      \or ㉑ \or ㉒ \or ㉓ \or ㉔ \or ㉕
      \or ㉖ \or ㉗ \or ㉘ \or ㉙ \or ㉚
      \or ㉛ \or ㉜ \or ㉝ \or ㉞ \or ㉟
      \or ㊱ \or ㊲ \or ㊳ \or ㊴ \or ㊵
      \or ㊶ \or ㊷ \or ㊸ \or ㊹ \or ㊺
      \or ㊻ \or ㊼ \or ㊽ \or ㊾ \or ㊿
    \else
      \@ctrerr
    \fi
  }
\RenewDocumentCommand \thefootnote { }
  {
    \seuthesis@footnote { \value { footnote } }
  }

%% ==========================
%% Bibliography
%% ==========================
\RequirePackage
  [
    , backend = biber
    , style = gb7714-2015
    , gbalign = left
  ]
  { biblatex }
\AtBeginBibliography { \zihao{5} }
% In this class, the default is to use sentence case for titles.
\bool_if:NF \l__seuthesis_bib_title_case_bool
  {
    \DeclareFieldFormat { sentencecase } { \MakeSentenceCase { #1 } }
    % Modified based on
    % https://github.com/hushidong/biblatex-gb7714-2015/blob/15db5aaf6834b2359c605227726c67d1350bc660/gb7714-2015.bbx#L3373-L3406
    \renewbibmacro*{title}{%
      \ifboolexpr{%
        test{\iffieldundef{title}}%
        and
        test{\iffieldundef{subtitle}}}%
        {}%
        {
          \printtext[title]{\bibtitlefont%增加字体控制命令
          \printfield[sentencecase]{title}%
          \ifboolexpr{test {\iffieldundef{subtitle}}}%增加了对子标题的判断
            {}{\setunit{\subtitlepunct}\printfield[sentencecase]{subtitle}}%
          \iffieldundef{titleaddon}{}{\setunit{\subtitlepunct}\printfield{titleaddon}}%判断一下titleaddon
          \ifboolexpr{test{\ifentrytype{book}} and (not test{\iffieldundef{volume}})}%判断一下book类有没有volume
            {\setunit{\subtitlepunct}\printfield{volume}}{}%
          \iftoggle{bbx:gbtype}%
            {\iffieldundef{entrysubtype}{\printfield[gbtypeflag]{usera}}%在标题后直接给出文献标识字母，判断一下，是否是报纸和标准
            {\iffieldequalstr{entrysubtype}{standard}{\printfield[gbtypeflags]{usera}}%判断是否为标准
              {\iffieldequalstr{entrysubtype}{news}{\printfield[gbtypeflagn]{usera}}%判断是否为报纸
              {\printfield[gbtypeflag]{usera}}}}}{}%%其它
          }%
        }%
      }
  }

%% ==========================
%% Title Pages
%% ==========================
% --- hyperref settings ---
\RequirePackage { hyperref }
\hypersetup
  {
    , hidelinks
    , pdfsubject = { \c__seuthesis_institute_str 本科毕业设计（论文）报告 }
    , pdfcreator = { LaTeX~with~\c__seuthesis_name_str }
    , bookmarksdepth = 2 % PDF bookmarks up to \subsection
  }
% --- \title ---
\bool_new:N \l__seuthesis_title_cont_bool
\RenewDocumentCommand \title { m O{} }
  {
    \gdef \@title { #1 }
    \tl_if_blank:nTF { #2 }
      {
        \bool_set_false:N \l__seuthesis_title_cont_bool
        \hypersetup { pdftitle = { #1 } }
      }
      {
        \bool_set_true:N \l__seuthesis_title_cont_bool
        \gdef \@titleCont { #2 }
        \hypersetup { pdftitle = { #1 #2 } }
      }
  }
% --- \studentID ---
\NewDocumentCommand \studentID { m }
  {
    \gdef \@studentID { #1 }
  }
\newcommand \@studentID
  {
    \@latex@warning@no@line { No~\noexpand\studentID~given }
  }
% --- \author ---
\RenewDocumentCommand \author { m }
  {
    \gdef \@author { #1 }
    \hypersetup { pdfauthor = { #1 } }
  }
% --- \department ---
\NewDocumentCommand \department { m }
  {
    \gdef \@department { #1 }
  }
\newcommand \@department
  {
    \@latex@warning@no@line { No~\noexpand\department~given }
  }
% --- \major ---
\NewDocumentCommand \major { m }
  {
    \gdef \@major { #1 }
  }
\newcommand \@major
  {
    \@latex@warning@no@line { No~\noexpand\major~given }
  }
% --- \supervisor ---
\NewDocumentCommand \supervisor { m }
  {
    \gdef \@supervisor { #1 }
  }
\newcommand \@supervisor
  {
    \@latex@warning@no@line { No~\noexpand\supervisor~given }
  }
% --- \seuthesis@titlepage ---
\bool_if:NT \l__seuthesis_accessibility_bool
  {
    \RequirePackage { pdfcomment }
  }
\newcommand \seuthesis@titlepage
  {
    \pagestyle{empty}
    \renewcommand \thepage { 封面 }

    \null\par % one empty line at top

    \begin{center}
      \bool_if:NTF \l__seuthesis_accessibility_bool
        {
          \pdftooltip
            {
              \includegraphics[width=85mm]{assets/logo.png}
            }
            {
              \c__seuthesis_institute_str % alt text for accessibility
            }
        }
        {
          \includegraphics[width=85mm]{assets/logo.png}
        }
      \par
      \vspace{8mm}
      {
        \Huge\heiti\bfseries
        本科毕业设计（论文）报告
      }
      \par
      \vspace{20mm}
      {
        \renewcommand \tabcolsep { 18pt }
        \renewcommand \arraystretch { 1.1 }
        \LARGE\heiti
        \bool_if:NTF { \l__seuthesis_title_cont_bool }
          {
            \begin{tabularx}{\linewidth-9pt}{cY}
              题\hspace{.5\ccwd}目： & \@title \\[-4pt] \cmidrule[.5pt]{2-2}
              & \@titleCont \\[-4pt] \cmidrule[.5pt]{2-2}
            \end{tabularx}
          }
          {
            \begin{tabularx}{\linewidth-9pt}{cY}
              题\hspace{.5\ccwd}目： & \@title \\[-4pt] \cmidrule[.5pt]{2-2}
              % the second line is then hidden
              & \vphantom{泰迪熊} \\[\dimexpr-4pt+0.5pt+\cmidrulekern]
            \end{tabularx}
          }
      }
      \par
      \vspace{18mm}
      {
        \Large
        \renewcommand \tabcolsep { 18pt }
        \renewcommand \arraystretch { 1.3 }
        \begin{tabular}{c P{8cm}}
          学\hspace{2\ccwd}号：& \@studentID  \\[-6pt] \cmidrule[.5pt]{2-2}
          姓\hspace{2\ccwd}名：& \@author     \\[-6pt] \cmidrule[.5pt]{2-2}
          学\hspace{2\ccwd}院：& \@department \\[-6pt] \cmidrule[.5pt]{2-2}
          专\hspace{2\ccwd}业：& \@major      \\[-6pt] \cmidrule[.5pt]{2-2}
          指导教师：& \@supervisor \\[-6pt] \cmidrule[.5pt]{2-2}
          起止日期：& \@date       \\[-6pt] \cmidrule[.5pt]{2-2}
        \end{tabular}
      }
    \end{center}
    \ClearDoublePage
  }
% --- \seuthesis@declaration ---
\newcommand \seuthesis@declaration
  {
    \renewcommand \thepage { 声明 }
    \input { assets/declaration.tex }
    \ClearDoublePage
  }
% --- \CNabstract ---
\NewDocumentCommand \CNabstract { +m m }
  {
    \gdef \@CNabstract { #1 }
    \gdef \@CNkeywords { #2 }
    \tl_new:N \l__seuthesis_keywords_tl
    \tl_set:Nn \l__seuthesis_keywords_tl { #2 }
    \tl_replace_all:Nnn \l__seuthesis_keywords_tl { ， } { ,~ }
    \hypersetup { pdfkeywords = { \l__seuthesis_keywords_tl } }
  }
\newcommand \@CNabstract
  {
    \@latex@warning@no@line { No~\noexpand\CNabstract~given }
  }
\newcommand \@CNkeywords { }
\newcommand \seuthesis@CNabstract
  {
    \chapter* { 摘\hspace{2\ccwd}要 }
    \addcontentsline { toc } { chapter }
      {
        \texorpdfstring { 摘\hspace{2\ccwd}要 } { 摘要 }
      }
    \@CNabstract \par
    \null\par
    \noindent 关键词：\@CNkeywords
    \ClearDoublePage
  }
% --- \ENabstract ---
\NewDocumentCommand \ENabstract { +m m }
  {
    \gdef \@ENabstract { #1 }
    \gdef \@ENkeywords { #2 }
  }
\newcommand \@ENabstract
  {
    \@latex@warning@no@line { No~\noexpand\ENabstract~given }
  }
\newcommand \@ENkeywords { }
\newcommand \seuthesis@ENabstract
  {
    \chapter* { ABSTRACT }
    \addcontentsline { toc } { chapter } { ABSTRACT }
    \@ENabstract \par
    \null\par
    KEY~WORDS:~ \@ENkeywords
    \ClearDoublePage
  }
% --- \seuthesis@toc ---
\RequirePackage { titletoc }
\setcounter { tocdepth } { 1 }
\renewcommand { \contentsname } { 目\hspace{2\ccwd}录 }
\titlecontents { chapter } [ 0pt ]
  { \filright }
  { \contentspush { \seuthesis@chapter@name { \thecontentslabel } \hspace{.5\ccwd} } }
  { } { \titlerule*[3pt]{.}\contentspage }
\titlecontents { section } [ 2\ccwd ]
  { }
  { \contentspush { \thecontentslabel \hspace{.5\ccwd} } }
  { } { \titlerule*[3pt]{.}\contentspage }
\newcommand \seuthesis@toc
  {
    \tableofcontents
    \addcontentsline { toc } { chapter }
      {
        \texorpdfstring { 目\hspace{2\ccwd}录 } { 目录 }
      }
    \ClearDoublePage
  }
% --- \maketitle ---
\RenewDocumentCommand \maketitle { }
  {
    \seuthesis@titlepage
    \seuthesis@declaration
    \pagestyle { frontmatter }
    \setcounter { page } { 1 }
    \seuthesis@CNabstract
    \seuthesis@ENabstract
    \seuthesis@toc
    \pagestyle { mainmatter }
    \setcounter { page } { 1 }
  }

%% ==========================
%% Special Chapters
%% ==========================
% --- bibliography ---
\NewDocumentCommand \chapterBib { }
  {
    \printbibliography [ heading = bibintoc ]
  }
% --- acknowledgments ---
\NewDocumentCommand \chapterAck { }
  {
    \chapter* { 致\hspace{2\ccwd}谢 }
    \addcontentsline { toc } { chapter }
      {
        \texorpdfstring { 致\hspace{2\ccwd}谢 } { 致谢 }
      }
  }

\endinput
