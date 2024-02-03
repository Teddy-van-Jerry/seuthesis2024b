%% seuthesis2024b.cls
%% ------------------
%% LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors
%% GitHub Repo: https://github.com/Teddy-van-Jerry/seuthesis2024b.cls
%%
%% Author: Teddy van Jerry (Wuqiong Zhao)
%% License: MIT

\NeedsTeXFormat {LaTeX2e}
\RequirePackage {l3keys2e}
\ProvidesExplClass {seuthesis2024b} {2024/02/03} {0.1.0}
  {Southeast University Thesis for Class of 2024 Bachelors}

\str_const:Nn \c__seuthesis_name_str { seuthesis2024b }
\str_const:Nn \c__seuthesis_base_class_str { report }
\str_const:Nn \c__seuthesis_pagesize_str { a4paper }
\str_const:Nn \c__seuthesis_font_pt_str { 12pt }
\str_const:Nn \c__seuthesis_institute_str { 东南大学 }

\keys_define:nn { seuthesis2024b }
  {
    % page setup
    , two side      .bool_set:N = \l__seuthesis_twoside_bool
    , two side      .initial:n  = { false }
    , two~side      .bool_set:N = \l__seuthesis_twoside_bool
    , two-side      .bool_set:N = \l__seuthesis_twoside_bool
    , two sides     .bool_set:N = \l__seuthesis_twoside_bool
    , two~sides     .bool_set:N = \l__seuthesis_twoside_bool
    , two-sides     .bool_set:N = \l__seuthesis_twoside_bool
    , one side      .meta:n     = { two side = false }
    , one~side      .meta:n     = { two side = false }
    , show frame    .bool_set:N = \l__seuthesis_show_frame_bool
    , show frame    .initial:n  = { false }
    , show~frame    .bool_set:N = \l__seuthesis_show_frame_bool
    , show-frame    .bool_set:N = \l__seuthesis_show_frame_bool
    % font options
    , fontset       .tl_set:N   = \l__seuthesis_fontset_tl
    , fontset       .initial:n  = { files }
    , use tex font  .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use tex font  .initial:n  = { false }
    , use~tex~font  .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use-tex-font  .bool_set:N = \l__seuthesis_use_tex_font_bool
    , font dir      .tl_set:N   = \l__seuthesis_font_dir_tl
    , font dir      .initial:n  = { fonts }
    , font~dir      .meta:n     = { font dir = #1 }
    , font-dir      .meta:n     = { font dir = #1 }
    % maths options
    , no maths      .bool_set:N = \l__seuthesis_no_maths_bool
    , no maths      .initial:n  = { false }
    , no~maths      .bool_set:N = \l__seuthesis_no_maths_bool
    , no-maths      .bool_set:N = \l__seuthesis_no_maths_bool
    % accessibility
    , accessibility .bool_set:N = \l__seuthesis_accessibility_bool
    , accessibility .initial:n  = { false }
    % others
    , unknown       .code:n     =
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
%% Font Settings
%% ==========================
\RequirePackage
  [
    , fontset = none
    , zihao = -4
    , linespread = 1.5
  ]
  { ctex }

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
\pagestyle { fancy }
\chead { \zihao{-5} \c__seuthesis_institute_str 本科毕业设计（论文）\vspace{2pt} }
\cfoot { \zihao{-5} \thepage }
\lhead { }
\rhead { }
\NewDocumentCommand { \ClearDoublePage } { }
  {
    \bool_if:NTF \l__seuthesis_twoside_bool { \cleardoublepage } { \clearpage }
  }

%% ==========================
%% Heading & Sectioning
%% ==========================
% show the \subsubsection numbering
\setcounter{secnumdepth}{3}
% use Chinese numberings
\RequirePackage { zhnumber }
\renewcommand \thechapter { \zhnum{chapter} }
\renewcommand \thesection { \arabic{chapter}. \arabic{section} }
\RequirePackage { titlesec }
% --- \chapter ---
\titleformat { \chapter }
  { \centering\zihao{3}\bfseries\heiti\thispagestyle{fancy} } { 第 \thechapter 章 } { .5\ccwd } { }
\titlespacing* { \chapter } { 0pt } { -24pt } { 2pt }
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
\RequirePackage { tikz }
\RequirePackage [ export ] { adjustbox }
\RequirePackage [ dvipsnames, table ] { xcolor }

%% ==========================
%% Tables
%% ==========================
\RequirePackage { tabularx }
\RequirePackage { booktabs }
\RequirePackage { multirow }
\RequirePackage { multicol }
\newcolumntype{Y}   {>{\centering\arraybackslash}X}     % centered X
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centered p
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centered m

%% ==========================
%% Captions
%% ==========================
\RequirePackage { caption }
\DeclareCaptionLabelFormat { seuthesislabel } { #1 #2 \hspace{.5\ccwd} }
\renewcommand \thefigure { \arabic{chapter}-\arabic{figure} }
\renewcommand \thetable  { \arabic{chapter}.\arabic{table } }
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
    % \pagenumbering{gobble}

    \null\par % one empty line at top

    \begin{center}
      \bool_if:NTF \l__seuthesis_accessibility_bool
        {
          \pdftooltip
            {
              \includegraphics[width=85mm]{assets/logo.png}
            }
            {
              东南大学 % alt text for accessibility
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
              题\hspace{.5\ccwd}目： & \@title \\[-4pt] \cmidrule{2-2}
              & \@titleCont \\[-4pt] \cmidrule{2-2}
            \end{tabularx}
          }
          {
            \begin{tabularx}{\linewidth-9pt}{cY}
              题\hspace{.5\ccwd}目： & \@title \\[-4pt] \cmidrule{2-2}
              % the second line is then hidden
              & \vphantom{泰迪熊} \\[\dimexpr-4pt+\cmidrulewidth+\cmidrulekern]
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
          学\hspace{2\ccwd}号：& \@studentID  \\[-6pt] \cmidrule{2-2}
          姓\hspace{2\ccwd}名：& \@author     \\[-6pt] \cmidrule{2-2}
          学\hspace{2\ccwd}院：& \@department \\[-6pt] \cmidrule{2-2}
          专\hspace{2\ccwd}业：& \@major      \\[-6pt] \cmidrule{2-2}
          指导教师：& \@supervisor \\[-6pt] \cmidrule{2-2}
          起止日期：& \@date       \\[-6pt] \cmidrule{2-2}
        \end{tabular}
      }
    \end{center}
    \ClearDoublePage
  }
% --- \seuthesis@declaration ---
\newcommand \seuthesis@declaration
  {
    \input { assets/declaration.tex }
    \ClearDoublePage
  }
% --- \maketitle ---
\RenewDocumentCommand \maketitle { }
  {
    \seuthesis@titlepage
    \seuthesis@declaration
    \pagestyle { fancy }
    \setcounter { page } { 1 }
  }

\endinput
