%% seuthesis2024b.cls
%% ------------------
%% LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors
%% GitHub Repo: https://github.com/Teddy-van-Jerry/seuthesis2024b.cls
%%
%% Author: Teddy van Jerry (Wuqiong Zhao)
%% License: MIT

\NeedsTeXFormat {LaTeX2e}
\RequirePackage {l3keys2e}
\ProvidesExplClass {seuthesis2024b} {2024/02/02} {0.1.0}
  {Southeast University Thesis for Class of 2024 Bachelors}

\str_const:Nn \c__seuthesis_name_str { seuthesis2024b }
\str_const:Nn \c__seuthesis_base_class_str { report }
\str_const:Nn \c__seuthesis_pagesize { a4paper }
\str_const:Nn \c__seuthesis_font_pt { 12pt }

\keys_define:nn { seuthesis2024b }
  {
    % page setup
    , two side     .bool_set:N = \l__seuthesis_twoside_bool
    , two side     .initial:n  = { false }
    , two~side     .bool_set:N = \l__seuthesis_twoside_bool
    , two-side     .bool_set:N = \l__seuthesis_twoside_bool
    , two sides    .bool_set:N = \l__seuthesis_twoside_bool
    , two~sides    .bool_set:N = \l__seuthesis_twoside_bool
    , two-sides    .bool_set:N = \l__seuthesis_twoside_bool
    , one side     .meta:n     = { two side = false }
    , one~side     .meta:n     = { two side = false }
    , show frame   .bool_set:N = \l__seuthesis_show_frame_bool
    , show frame   .initial:n  = { false }
    , show~frame   .bool_set:N = \l__seuthesis_show_frame_bool
    , show-frame   .bool_set:N = \l__seuthesis_show_frame_bool
    % font options
    , fontset      .tl_set:N   = \l__seuthesis_fontset_tl
    , fontset      .initial:n  = { files }
    , use tex font .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use tex font .initial:n  = { false }
    , use~tex~font .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use-tex-font .bool_set:N = \l__seuthesis_use_tex_font_bool
    , font dir     .tl_set:N   = \l__seuthesis_font_dir_tl
    , font dir     .initial:n  = { fonts }
    , font~dir     .meta:n     = { font dir = #1 }
    , font-dir     .meta:n     = { font dir = #1 }
    % maths options
    , no maths     .bool_set:N = \l__seuthesis_no_maths_bool
    , no maths     .initial:n  = { false }
    , no~maths     .bool_set:N = \l__seuthesis_no_maths_bool
    , no-maths     .bool_set:N = \l__seuthesis_no_maths_bool
    % others
    , unknown      .code:n     = { \PassOptionsToClass { \CurrentOption } { \c__seuthesis_base_class_str } }
  }
\ProcessKeyOptions [ seuthesis2024b ]
\PassOptionsToClass
  {
    , \c__seuthesis_pagesize
    , \c__seuthesis_font_pt
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
    \emfontdeclare{\kaishu\itshape}
    \strongfontdeclare{\heiti\bfseries}
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
\chead { \zihao{-5} 东南大学本科毕业设计（论文）\vspace{2pt} }
\cfoot { \zihao{-5} \thepage }
\lhead { }
\rhead { }

%% ==========================
%% Hyperref
%% ==========================
\RequirePackage { hyperref }
\hypersetup
  {
    , hidelinks
    , pdfcreator = { LaTeX~with~\c__seuthesis_name_str }
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
%% Graphics
%% ==========================
\RequirePackage { graphicx }
\RequirePackage { subfig }
\RequirePackage { tikz }
\RequirePackage [ export ] { adjustbox }
\RequirePackage [ dvipsnames, table ] { xcolor }

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

\endinput
