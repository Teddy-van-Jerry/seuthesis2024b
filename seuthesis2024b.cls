%% seuthesis2024b.cls
%% ------------------
%% LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors
%% GitHub Repo: https://github.com/Teddy-van-Jerry/seuthesis2024b
%%
%% Author: Teddy van Jerry (Wuqiong Zhao)
%% License: MIT

\NeedsTeXFormat {LaTeX2e}
\RequirePackage {l3keys2e}
\ProvidesExplClass {seuthesis2024b} {2024/06/01} {0.15.0}
  {Southeast University Thesis for Class of 2024 Bachelors}

\str_const:Nn \c__seuthesis_name_str { seuthesis2024b }
\str_const:Nn \c__seuthesis_base_class_str { report }
\str_const:Nn \c__seuthesis_pagesize_str { a4paper }
\str_const:Nn \c__seuthesis_font_pt_str { 12pt }
\str_const:Nn \c__seuthesis_institute_str { 东南大学 }

\keys_define:nn { seuthesis2024b }
  {
    % page setup
    , two side        .bool_set:N = \l__seuthesis_twoside_bool
    , two side        .initial:n  = { false }
    , two~side        .bool_set:N = \l__seuthesis_twoside_bool
    , two-side        .bool_set:N = \l__seuthesis_twoside_bool
    , two sides       .bool_set:N = \l__seuthesis_twoside_bool
    , two~sides       .bool_set:N = \l__seuthesis_twoside_bool
    , two-sides       .bool_set:N = \l__seuthesis_twoside_bool
    , one side        .meta:n     = { two side = false }
    , one~side        .meta:n     = { two side = false }
    , show frame      .bool_set:N = \l__seuthesis_show_frame_bool
    , show frame      .initial:n  = { false }
    , show~frame      .bool_set:N = \l__seuthesis_show_frame_bool
    , show-frame      .bool_set:N = \l__seuthesis_show_frame_bool
    % font options
    , fontset         .tl_set:N   = \l__seuthesis_fontset_tl
    , fontset         .initial:n  = { files }
    , use tex font    .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use tex font    .initial:n  = { false }
    , use~tex~font    .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use-tex-font    .bool_set:N = \l__seuthesis_use_tex_font_bool
    , font dir        .tl_set:N   = \l__seuthesis_font_dir_tl
    , font dir        .initial:n  = { fonts/ }
    , font~dir        .meta:n     = { font dir = #1 }
    , font-dir        .meta:n     = { font dir = #1 }
    % maths options
    , no maths        .bool_set:N = \l__seuthesis_no_maths_bool
    , no maths        .initial:n  = { false }
    , no~maths        .bool_set:N = \l__seuthesis_no_maths_bool
    , no-maths        .bool_set:N = \l__seuthesis_no_maths_bool
    % bibliography
    , bib title case  .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib title case  .initial:n  = { false }
    , bib~title case  .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib-title case  .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib~title~case  .bool_set:N = \l__seuthesis_bib_title_case_bool
    , bib-title-case  .bool_set:N = \l__seuthesis_bib_title_case_bool
    % section
    , bookmarks depth .tl_set:N   = \l__seuthesis_bookmarks_depth_tl
    , bookmarks depth .initial:n  = { 2 }
    , bookmarks~depth .tl_set:N   = \l__seuthesis_bookmarks_depth_tl
    , bookmarks-depth .tl_set:N   = \l__seuthesis_bookmarks_depth_tl
    , toc depth       .tl_set:N   = \l__seuthesis_toc_depth_tl
    , toc depth       .initial:n  = { 2 }
    , toc~depth       .tl_set:N   = \l__seuthesis_toc_depth_tl
    , toc-depth       .tl_set:N   = \l__seuthesis_toc_depth_tl
    % counters
    , continuous cnt  .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , continuous cnt  .initial:n  = { false }
    , continuous~cnt  .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , continuous-cnt  .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt in doc      .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt~in~doc      .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt-in-doc      .bool_set:N = \l__seuthesis_continuous_cnt_bool
    , cnt in chapter  .meta:n     = { continuous cnt = false }
    , cnt~in~chapter  .meta:n     = { continuous cnt = false }
    , cnt-in-chapter  .meta:n     = { continuous cnt = false }
    % my colors
    , my colors       .bool_set:N = \l__seuthesis_my_colors_bool
    , my colors       .initial:n  = { true }
    , my~colors       .bool_set:N = \l__seuthesis_my_colors_bool
    , my-colors       .bool_set:N = \l__seuthesis_my_colors_bool
    , my color        .bool_set:N = \l__seuthesis_my_colors_bool
    , my~color        .bool_set:N = \l__seuthesis_my_colors_bool
    , my-color        .bool_set:N = \l__seuthesis_my_colors_bool
    % accessibility
    , accessibility   .bool_set:N = \l__seuthesis_accessibility_bool
    , accessibility   .initial:n  = { false }
    % anonymous option
    , anonymous       .bool_set:N = \l__seuthesis_anonymous_bool
    , anonymous       .initial:n  = { false }
    , anony           .bool_set:N = \l__seuthesis_anonymous_bool
    % standalone mode
    , standalone      .bool_set:N = \l__seuthesis_standalone_bool
    , standalone      .initial:n  = { false }
    , stand~alone     .bool_set:N = \l__seuthesis_standalone_bool
    , stand-alone     .bool_set:N = \l__seuthesis_standalone_bool
    , tikz            .bool_set:N = \l__sehtiesis_standalone_bool
    , draw            .bool_set:N = \l__seuthesis_standalone_bool
    , drawing         .bool_set:N = \l__seuthesis_standalone_bool
    , input prefix    .tl_set:N   = \l__seuthesis_input_prefix_tl
    , input prefix    .initial:n  = {  }
    , input~prefix    .tl_set:N   = \l__seuthesis_input_prefix_tl
    , input-prefix    .tl_set:N   = \l__seuthesis_input_prefix_tl
    % others
    , unknown         .code:n     =
      {
        \PassOptionsToClass { \CurrentOption } { \c__seuthesis_base_class_str }
      }
  }
\ProcessKeyOptions [ seuthesis2024b ]
\PassOptionsToClass
  {
    , \c__seuthesis_pagesize_str
    , \c__seuthesis_font_pt_str
    , \bool_if:NTF \l__seuthesis_twoside_bool { twoside, openright } { oneside }
  }
  { \c__seuthesis_base_class_str }
\LoadClass { \c__seuthesis_base_class_str }

%% ==========================
%% Utility Packages
%% ==========================
\RequirePackage { xpatch }
% \RequirePackage { etoolbox }

%% ==========================
%% Silence Warnings
%% ==========================
\RequirePackage { silence }
\WarningFilter { caption } { Unused \captionsetup[subalgorithm] }

%% ==========================
%% Font Settings
%% ==========================
\RequirePackage [ no-math ] { fontspec }
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
    , "24EB->"24F4 % ⓫–⓴
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
        % , Scale = MatchLowercase
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
\titlespacing* { \chapter } { \z@ } { -24pt } { 3.6pt }
% --- \section ---
\titleformat { \section }
  { \zihao{4}\heiti } { \thesection } { \widthof{~} } { }
\titlespacing* { \section } { \z@ } { 3.6pt } { 3.6pt }
% --- \subsection ---
\titleformat { \subsection }
  { \zihao{-4}\songti\bfseries } { \normalfont\thesubsection } { \widthof{~} } { }
\titlespacing* { \subsection } { \z@ } { \z@ } { \z@ }
% --- \subsubsection ---
\titleformat { \subsubsection }
  { \zihao{-4}\songti } { \thesubsubsection } { \widthof{~} } { }
\titlespacing* { \subsubsection } { \z@ } { \z@ } { \z@ }
% --- \paragraph ---
\titleformat { \paragraph } [ runin ]
  { \zihao{-4}\songti\bfseries } { } { \widthof{~} } { }
\titlespacing* { \paragraph } { 2\ccwd } { \z@ } { .5\ccwd } % use default Chinese indent

%% ==========================
%% Figures
%% ==========================
\RequirePackage { graphicx }
\RequirePackage [ caption = false, font = small, subrefformat = parens ] { subfig }
\RequirePackage [ dvipsnames] { xcolor }
\RequirePackage { tikz }
\RequirePackage { pgfplots }
\RequirePackage [ export ] { adjustbox }
\pgfplotsset { compat = newest }
\bool_if:nT \l__seuthesis_my_colors_bool
  {
    \definecolor { myblued  } { RGB } {   0, 114, 189 }
    \definecolor { myred    } { RGB } { 217,  83,  25 }
    \definecolor { mygreen  } { RGB } {  32, 134,  48 }
    \definecolor { myyellow } { RGB } { 237, 137,  32 }
    \definecolor { mypurple } { RGB } { 126,  47, 142 }
    \definecolor { myblues  } { RGB } {  77, 190, 238 }
    \definecolor { mypink   } { RGB } { 255, 20 , 147 }
    \pgfplotscreateplotcyclelist { sim }
      {
        , { myblued , thick, mark = o       , mark~size = 2   }
        , { myred   , thick, mark = diamond , mark~size = 2.8 }
        , { mygreen , thick, mark = square  , mark~size = 2   }
        , { myyellow, thick, mark = triangle, mark~size = 3   }
        , { mypurple, thick, mark = asterisk, mark~size = 3   }
        , { myblues , thick, mark = pentagon, mark~size = 3   }
        , { gray    , thick, mark = +       , mark~size = 3   }
      }
  }
\input { \l__seuthesis_input_prefix_tl assets/tikz_extra }

%% ==========================
%% Tables
%% ==========================
\RequirePackage { floatrow } % <-- has to be loaded before xltabular
\RequirePackage { booktabs }
\RequirePackage { multirow }
\RequirePackage { longtable }
\RequirePackage { xltabular }
\RequirePackage { threeparttable }
\newcolumntype{Y}   {>{\centering\arraybackslash}X}     % centered X
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centered p
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centered m
% set font size for environment xltabular
\renewenvironment{xltabular}[1][x]
  {
    \zihao{5}
    \par
    \if l#1
      \LTleft\z@ \LTright\fill
    \else\if r#1
      \LTleft\fill \LTright\z@
    \else\if c#1
      \LTleft\fill \LTright\fill
    \fi\fi\fi
    \let\TX@endtabularx=\XLT@ii@TX@endtabularx
    \let\endtabularx\endxltabular
    \XLT@ii@tabularx
  }
{\def\@currenvir{tabularx}}
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
%% Algorithm
%% ==========================
\RequirePackage
  [
    , italicComments = false
    , commentColor = darkgray
    , noEnd = false
  ] { algpseudocodex }
% \RequirePackage { algpseudocode }
\bool_if:NTF \l__seuthesis_continuous_cnt_bool
  {
    \newfloat { algorithm } { h } { alg }
  }
  {
    \newfloat { algorithm } { h } { alg } [ chapter ]
  }
\newcommand \AlgAboveRule
  {
    \vspace*{-.25\baselineskip}
    \rule{\textwidth}{1pt}%
    \vspace*{-.25\baselineskip}
    % \begin{algorithmic}[1]
  }
\newcommand \AlgBelowRule
  {
    % \end{algorithmic}
    \vspace*{-.50\baselineskip}
    \rule{\textwidth}{1pt}%
    \vspace*{-.25\baselineskip}
  }

%% ==========================
%% Captions
%% ==========================
% set font size as \zihao{5} as well as center contents
\floatsetup [ figure    ] { font = small }
\floatsetup [ table     ] { font = small, capposition = top }
\floatsetup [ algorithm ] { font = small, capposition = top }
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
    \renewcommand \thefigure { \thechapter-\arabic{figure} }
    \renewcommand \thetable  { \thechapter.\arabic{table } }
  }
\captionsetup
  {
    , font = small % = \zihao{5}
    , labelformat = seuthesislabel
    , labelsep = none
  }
\floatname { algorithm } { 算法 }

%% ==========================
%% Maths
%% ==========================
\RequirePackage { mathtools } % <-- this is required
\bool_if:NF \l__seuthesis_no_maths_bool
  {
    \RequirePackage { amssymb }
    \RequirePackage { amsthm }
    \RequirePackage { bm }
    \RequirePackage { siunitx }
    % theorem environments
    \newtheoremstyle { seuthesis } % name
      { .5\baselineskip }          % Space above
      { .5\baselineskip }          % Space below
      { \kaishu }                  % Body font
      { }                          % Indent amount
      { \heiti  }                  % Theorem head font
      { . }                        % Punctuation after theorem head
      { .5\ccwd }                  % Space after theorem head
      { }  % Theorem head spec (can be left empty, meaning `normal')
    \theoremstyle { seuthesis }
    % proof environment
    \providecommand { \proofNameStyle } { \kaishu } % <-- change style from amsthm
    \renewenvironment { proof } [1] [\proofname]
      {
        \par
        \pushQED{\qed}%
        \normalfont \topsep6\p@\@plus6\p@\relax
        \trivlist
        \item[\hskip\labelsep
              \proofNameStyle
          #1\@addpunct{.}]\ignorespaces
      }
      {
        \popQED\endtrivlist\@endpefalse
      }
  }
% Use Chinese parenthesis instead of English one
\def \eqref@tagform@ #1
  {
    \maketag@@@{ \mbox{（\ignorespaces#1\unskip\@@italiccorr）} }
  }
\renewcommand { \eqref } [ 1 ]
  {
    \textup { ~ \eqref@tagform@ { \ref { #1 } } }
  }
\NewDocumentCommand { \Eqref } { s m }
  {
    \bool_if:nF #1 { \unskip }
    公式~\eqref { #2 }
    \ignorespaces
  }

%% ==========================
%% Footnote
%% ==========================
\RequirePackage [ perpage ] { footmisc }
\RequirePackage { circledsteps }
\bool_new:N \c__seuthesis_circled_text_limited_bool
\bool_set_true:N \c__seuthesis_circled_text_limited_bool
\NewDocumentCommand \seuthesis@Circled { s m }
  {
    \bool_if:nTF #1
      {
        \pgfkeys{/csteps/inner~color = white }
        \pgfkeys{/csteps/outer~color = .     }
        \pgfkeys{/csteps/fill~color  = .     }
        \raisebox { .05em }
          {
            \scalebox { 0.9 } { \Circled { #2 } }
          }
      }
      {
        \pgfkeys{/csteps/inner~color = none  }
        \pgfkeys{/csteps/outer~color = none  }
        \pgfkeys{/csteps/fill~color  = none  }
        \raisebox { .05em }
          {
            \scalebox { 0.9 } { \CircledText { #2 } }
          }
      }
  }
\NewDocumentCommand \circNo { s m }
  {
    \bool_if:NTF \c__seuthesis_circled_text_limited_bool
      {
        \bool_if:nTF #1
        {
          \seuthesis@Circled* { #2 }
        }
        {
          \ifcase #2 \relax \seuthesis@Circled{0}
          \or ① \or ② \or ③ \or ④ \or ⑤
          \or ⑥ \or ⑦ \or ⑧ \or ⑨ \or ⑩
          \else
            \seuthesis@Circled { #2 }
          \fi
        }
      }
      {
        \bool_if:nTF #1
        {
          \ifcase #2 \relax ⓿
          \or ❶ \or ❷ \or ❸ \or ❹ \or ❺
          \or ❻ \or ❼ \or ❽ \or ❾ \or ❿
          \or ⓫ \or ⓬ \or ⓭ \or ⓮ \or ⓯
          \or ⓰ \or ⓱ \or ⓲ \or ⓳ \or ⓴
          \else
            \seuthesis@Circled* { #2 }
          \fi
        }
        {
          \ifcase #2 \relax ⓪
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
            \seuthesis@Circled { #2 }
          \fi
        }
      }
  }
\NewDocumentCommand \seuthesis@footnote { m }
  {
    \circNo { #1 }
  }
\RenewDocumentCommand \thefootnote { }
  {
    \seuthesis@footnote { \value { footnote } }
  }

%% ==========================
%% Enumitem
%% ==========================
\RequirePackage { enumitem }
\setlist
  {
    , nosep % no vertical space
  }

%% ==========================
%% Bibliography
%% ==========================
\bool_if:NF \l__seuthesis_standalone_bool
  {
    \RequirePackage
      [
        , backend = biber
        , style = gb7714-2015
        , gbalign = left
      ]
      { biblatex }
    \AtBeginBibliography { \zihao{5} }
    \input { \l__seuthesis_input_prefix_tl assets/bib_custom } % a bunch of settings here

    \DeclareNameFormat { CNauthor }
      {
        \namepartfamily
      }
    \DeclareNameFormat { CNauthorEtAl }
      {
        \ifthenelse { \value{liststop} = 1 } { } { 等 }
      }
    \DeclareCiteCommand* { \CNciteauthor }
      {
        \boolfalse{citetracker}
        \boolfalse{pagetracker}
        \usebibmacro{prenote}}
      {
        \ifciteindex
        {\indexnames{labelname}}
        {}
          \printnames[CNauthor    ][1-1]{labelname}
          \printnames[CNauthorEtAl][2-2]{labelname}
        }
      { \multicitedelim }
      { \usebibmacro{postnote} }

    \NewDocumentCommand \seuthesis@LciteSingle { O{文献} m }
      {
        \CNciteauthor* { #2 } 在 #1 \cite { #2 }
      }
    \NewDocumentCommand \Lcite { O{文献} m O{中} }
      {
        \Lcite_expressed_in:nn { #1 } { #2 } #3
      }
    \clist_new:N \l__seuthesis_Lcite_clist
    \cs_new_protected:Npn \Lcite_expressed_in:nn #1 #2
      {
        \clist_clear:N \l__seuthesis_Lcite_clist
        \clist_map_inline:nn { #2 }
          {
            \clist_put_right:Nx \l__seuthesis_Lcite_clist
              {
                \seuthesis@LciteSingle [ #1 ] { ##1 }
              }
          }
      \clist_use:Nnnn { \l__seuthesis_Lcite_clist } { 和 } { 、 } { 和 }
    }
    \NewDocumentCommand \YLcite { O{文献} m O{中} }
      {
        \citeyear { #2 } 年 \Lcite [ #1 ] { #2 } [ #3 ]
      }
  }

%% ==========================
%% Code Listings
%% ==========================
\newcommand \seuthesis@lst@linespread { 1.2 }
\newcommand \seuthesis@lst@fontsize   { \small }
\newcommand \seuthesis@lst@aboveskip  { .5\baselineskip }
\newcommand \seuthesis@lst@belowskip  { .2\baselineskip }
\newcommand \seuthesis@lst@numcolor   { gray }
\newcommand \seuthesis@lst@keycolor   { Blue }
\newcommand \seuthesis@lst@strcolor   { Purple }
\newcommand \seuthesos@lst@comcolor   { gray }
\newcommand \seuthesis@lst@bgcolor    { gray!3 }
\RequirePackage { listings }
\lstset
  {
    , frame            = lines
    , basicstyle       =
      \linespread{\seuthesis@lst@linespread}
      \seuthesis@lst@fontsize\ttfamily
    , numberstyle      = \scriptsize\sffamily\color{\seuthesis@lst@numcolor}
    , keywordstyle     = \bfseries\color{\seuthesis@lst@keycolor}
    , commentstyle     = \color{\seuthesos@lst@comcolor}
    , stringstyle      = \color{\seuthesis@lst@strcolor}
    , backgroundcolor  = \color{\seuthesis@lst@bgcolor}
    , aboveskip        = \seuthesis@lst@aboveskip
    , belowskip        = \seuthesis@lst@belowskip
    , breaklines       = true
    , upquote          = true
    , columns          = fixed
    , numbers          = left
    , showstringspaces = false
  }

%% ==========================
%% Title Pages
%% ==========================
\RequirePackage { pdfpages } % for signature inclusion
\bool_if:NTF \l__seuthesis_standalone_bool
  {
    \pagestyle { empty }
  }
  {
    % --- hyperref settings ---
    \RequirePackage { hyperref }
    \hypersetup
      {
        , hidelinks
        , pdfsubject = { \c__seuthesis_institute_str 本科毕业设计（论文）报告 }
        , pdfcreator = { LaTeX~with~\c__seuthesis_name_str }
        , bookmarksdepth = \l__seuthesis_bookmarks_depth_tl % 2 for \subsection, 3 for \subsubsection
        , bookmarksnumbered = true
      }
    % --- \title ---
    \bool_new:N \l__seuthesis_title_cont_bool
    \RenewDocumentCommand \title { m O{} O{2} }
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
        \gdef \seuthesis@title@fontsize { #3 } % default title size is \zihao{2}
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
    % --- \signature ----
    \NewDocumentCommand \signature { m }
      {
        \gdef \@signature { #1 }
      }
    \def \@signature { }
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
                  \includegraphics[width=85mm]{\l__seuthesis_input_prefix_tl assets/logo.png}
                }
                {
                  \c__seuthesis_institute_str % alt text for accessibility
                }
            }
            {
              \includegraphics[width=85mm]{\l__seuthesis_input_prefix_tl assets/logo.png}
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
                  题\hspace{.5\ccwd}目： &
                    { \zihao { \seuthesis@title@fontsize } \@title }
                    \\[-4pt] \cmidrule[.5pt]{2-2}
                  \vphantom{泰迪熊} &
                    { \zihao { \seuthesis@title@fontsize } \@titleCont }
                    \\[-4pt] \cmidrule[.5pt]{2-2}
                \end{tabularx}
              }
              {
                \begin{tabularx}{\linewidth-9pt}{cY}
                  题\hspace{.5\ccwd}目： &
                    { \zihao { \seuthesis@title@fontsize } \@title }
                    \\[-4pt] \cmidrule[.5pt]{2-2}
                  % the second line is then hidden
                  \vphantom{泰迪熊} & \\[\dimexpr-4pt+0.5pt+\cmidrulekern]
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
        \ifx \@signature \@empty
          \input { \l__seuthesis_input_prefix_tl assets/declaration.tex }
        \else
          \includepdf { \@signature }
        \fi
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
    \setcounter { tocdepth } { \l__seuthesis_toc_depth_tl }
    \renewcommand { \contentsname } { 目\hspace{2\ccwd}录 }
    \titlecontents { chapter } [ \z@ ]
      { \filright }
      { \contentspush { \seuthesis@chapter@name { \thecontentslabel } \hspace{.5\ccwd} } }
      { } { \titlerule*[3pt]{.}\contentspage }
    \titlecontents { section } [ 2\ccwd ]
      { }
      { \contentspush { \thecontentslabel \hspace{.5\ccwd} } }
      { } { \titlerule*[3pt]{.}\contentspage }
    \titlecontents { subsection } [ 4\ccwd ]
      { }
      { \contentspush { \thecontentslabel \hspace{.5\ccwd} } }
      { } { \titlerule*[3pt]{.}\contentspage }
    \titlecontents { subsubsection } [ 6\ccwd ]
      { }
      { \contentspush { \thecontentslabel \hspace{.5\ccwd} } }
      { } { \titlerule*[3pt]{.}\contentspage }
    \newcommand \seuthesis@toc
      {
        \phantomsection
        \addcontentsline { toc } { chapter }
          {
            \texorpdfstring { 目\hspace{2\ccwd}录 } { 目录 }
          }
        \tableofcontents
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
  }

%% ==========================
%% Special Chapters
%% ==========================
\bool_if:NF \l__seuthesis_standalone_bool
  {
    % --- bibliography ---
    \NewDocumentCommand \chapterBib { }
      {
        \printbibliography [ heading = bibintoc ]
      }
    % --- acknowledgments ---
    \NewDocumentCommand \chapterAck { }
      {
        % In Acknowledgments and later chapters (if any),
        % the TOC depth should be set to 0 (therefore no \section will be shown in ToC).
        \addtocontents { toc } { \protect \setcounter { tocdepth } { 0 } }
        \chapter* { 致\hspace{2\ccwd}谢 }
        \addcontentsline { toc } { chapter }
          {
            \texorpdfstring { 致\hspace{2\ccwd}谢 } { 致谢 }
          }
      }
  }

%% ==========================
%% Other Macros
%% ==========================
\RequirePackage { refcount }
\NewDocumentCommand \StrongItem { m }
  {  
    \noindent\strong { $\blacksquare$ \hspace{.5\ccwd} #1： }
    \par
  }
\NewDocumentCommand \ChapRef { m }
  {
    第 \hyperref [ #1 ] { \zhnumber { \getrefnumber { #1 } } } 章
  }
\NewDocumentCommand \NextChapRef { m }
  {
    \hyperref [ #1 ] { 下一章 }
  }
\NewDocumentCommand \LastChapRef { m }
  {
    \hyperref [ #1 ] { 上一章 }
  }
\NewDocumentCommand \anony { +m +m }
  {
    \bool_if:NTF \l__seuthesis_anonymous_bool
      { #2 } % content for non-anonymous
      { #1 } % content for anonymous
  }
\NewDocumentCommand \name { }
  {
    \anony { \@author } { XXX }
  }
\newcommand \notsotiny
  {
    \@setfontsize\notsotiny\@vipt\@viipt
  }

\endinput
