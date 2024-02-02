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
    , font dir     .tl_set:N   = \l__seuthesis_font_dir_tl
    , font dir     .initial:n  = { fonts }
    , font~dir     .meta:n     = { font dir = #1 }
    , font-dir     .meta:n     = { font dir = #1 }
    % others
    , unknown      .code:n     = { \PassOptionsToClass { \CurrentOption } { \c__seuthesis_base_class_str } }
  }
\ProcessKeysOptions { seuthesis2024b }
\PassOptionsToClass { a4paper } { \c__seuthesis_base_class_str }
\LoadClass { \c__seuthesis_base_class_str }

%% ==========================
%% Font Settings
%% ==========================
\RequirePackage [ fontset = none ] { ctex }

\NewDocumentCommand \seuthesis@SetFont { m }
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
        \setmainfont{times}
        [
          , UprightFont = *
          , BoldFont = *bd
          , ItalicFont = *i
          , BoldItalicFont = *bi
          , Extension = .ttf
          , Path = #1
        ]
        \def \CJKFontOptions
          { Path=#1, AutoFakeBold, AutoFakeSlant }
        \def \CJKFontFamilyOptions
          { Path=#1, BoldFont=*, ItalicFont=*, BoldItalicFont=* }
      }
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
    % Chinese fonts
    \setCJKmainfont { SimSun   } [ \CJKFontOptions ]
    \setCJKsansfont { SimHei   } [ \CJKFontOptions ]
    \setCJKmonofont { Fangsong } [ \CJKFontOptions ]
    \newCJKfontfamily [ zhsong ] \songti   { SimSun   } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhhei  ] \heiti    { SimHei   } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhkai  ] \kaishu   { Kaiti    } [ \CJKFontFamilyOptions ]
    \newCJKfontfamily [ zhfs   ] \fangsong { Fangsong } [ \CJKFontFamilyOptions ]
  }
\str_if_eq:VnT { \l__seuthesis_fontset_tl } { files }
  {
    \typeout { [\c__seuthesis_name_str]~Use~font~dir:~ \l__seuthesis_font_dir_tl }
    \seuthesis@SetFont { \l__seuthesis_font_dir_tl }
  }
\clist_if_in:nVT { mac ms, mac~ms, mac-ms } { \l__seuthesis_fontset_tl }
  {
    \def \WordPath
      { /Applications/Microsoft~Word.app/Contents/Resources/DFonts/ }
    \seuthesis@SetFont { \WordPath }
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
