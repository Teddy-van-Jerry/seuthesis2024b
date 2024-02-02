%% seuthesis2024b.cls
%% ------------------
%% LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors
%% GitHub Repo: https://github.com/Teddy-van-Jerry/seuthesis2024b.cls
%%
%% Author: Teddy van Jerry (Wuqiong Zhao)
%% License: MIT

\NeedsTeXFormat {LaTeX2e}
\RequirePackage {l3keys2e}
\ProvidesExplClass {seuthesis2024b} {2024/01/26} {0.1.0}
  {Southeast University Thesis for Class of 2024 Bachelors}

\str_const:Nn \c__seuthesis_name_str { seuthesis2024b }
\str_const:Nn \c__seuthesis_base_class_str { report }

\keys_define:nn { seuthesis2024b }
  {
    % page setup
    , two side     .bool_set:N = \l__seuthesis_twoside_bool
    , two side     .initial:n  = { false }
    , one side     .code:n     = { \keys_set:nn { seuthesis } { two side = false } }
    , one~side     .code:n     = { \keys_set:nn { seuthesis } { two side = false } }
    , two side     .code:n     = { \keys_set:nn { seuthesis } { two side = true  } }
    , two~side     .code:n     = { \keys_set:nn { seuthesis } { two side = true  } }
    % font options
    , fontset      .tl_set:N   = \l__seuthesis_fontset_tl
    , fontset      .initial:n  = { files }
    , use tex font .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use tex font .initial:n  = { false }
    , use~tex~font .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use-tex-font .bool_set:N = \l__seuthesis_use_tex_font_bool
    , use times sc .bool_set:N = \l__seuthesis_use_times_sc_bool
    , use times sc .initial:n  = { false }
    , use~times~sc .bool_set:N = \l__seuthesis_use_times_sc_bool
    , use-times-sc .bool_set:N = \l__seuthesis_use_times_sc_bool
    % others
    , unknown  .code:n     = { \PassOptionsToClass { \CurrentOption } { \c__seuthesis_base_class_str } }
  }
\ProcessKeysOptions { seuthesis2024b }
\PassOptionsToClass { a4paper } { \c__seuthesis_base_class_str }
\LoadClass { \c__seuthesis_base_class_str }

%% ==========================
%% Font Settings
%% ==========================
\RequirePackage [ fontset = none ] { ctex }
% if fontset is system, use SimSun as main font

\def \CJKFontOptions
  { Path=\WordPath, AutoFakeBold, AutoFakeSlant }
\def \CJKFontFamilyOptions
  { Path=\WordPath, BoldFont=*, ItalicFont=*, BoldItalicFont=* }
% sans serif font
% there is no specification for the sans serif font, so we use the TeX Gyre Heros
\setsansfont{texgyreheros}
  [
    , UprightFont = *-regular
    , BoldFont = *-bold
    , ItalicFont = *-italic
    , BoldItalicFont = *-bolditalic
    , Extension = .otf
    , Scale = MatchLowercase
  ]
\str_if_eq:VnT { \l__seuthesis_fontset_tl } { files }
  {
    \bool_if:NTF \l__seuthesis_use_tex_font_bool
      {
        \setmainfont{texgyretermes}
          [
            , UprightFont = *-regular
            , BoldFont = *-bold
            , ItalicFont = *-italic
            , BoldItalicFont = *-bolditalic
            , Extension = .otf
          ]
      }
      {
        % TODO: set fonts for files
      }
    \setCJKmainfont { SimSun }
    \setCJKsansfont { SimHei }
  }
\clist_if_in:nVT { mac ms, mac~ms, mac-ms } { \l__seuthesis_fontset_tl }
  {
    \def \WordPath
      { /Applications/Microsoft~Word.app/Contents/Resources/DFonts/ }
    \setmainfont{times}
      [
        , UprightFont = *
        , BoldFont = *bd
        , ItalicFont = *i
        , BoldItalicFont = *bi
        , Extension = .ttf
        , Path = \WordPath
      ]
    \setmainfont{times}
      [
        , UprightFont = *
        , BoldFont = *bd
        , ItalicFont = *i
        , BoldItalicFont = *bi
        , Extension = .ttf
        , Path = \WordPath
      ]  
    \setCJKmainfont { SimSun   } [ \CJKFontOptions ]
    \setCJKsansfont { SimHei   } [ \CJKFontOptions ]
    \setCJKmonofont { Fangsong } [ \CJKFontOptions ]
    \newCJKfontfamily [ zhsong ] \songti   { SimSun   } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhhei  ] \heiti    { SimHei   } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhkai  ] \kaishu   { Kaiti    } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhfs   ] \fangsong { Fangsong } [ \CJKFontFamilyOptions ]
  }

%% ==========================
%% Hyperref
%% ==========================
\RequirePackage { hyperref }
\hypersetup
  {
    , hidelinks
    , pdfcreator = { LaTeX~with~\c__seuthesis_name_str }
  }

\endinput
