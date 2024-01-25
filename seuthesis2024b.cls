%% seuthesis2024b.cls
%% ------------------
%% LaTeX Template of Southeast University Thesis for Class of 2024 Bachelors
%% GitHub Repo: https://github.com/Teddy-van-Jerry/seuthesis2024b.cls
%%
%% Author: Teddy van Jerry (Wuqiong Zhao)
%% License: MIT

\NeedsTeXFormat{LaTeX2e}
\RequirePackage{l3keys2e}
\ProvidesExplClass{seuthesis2024b}{2024/01/26}{0.1.0}{Southeast University Thesis for Class of 2024 Bachelors}

\str_const:Nn \c__seuthesis_base_class_str { report }

\keys_define:nn { seuthesis2024b }
  {
    , twoside  .bool_set:N = \l__seuthesis_twoside_bool
    , twoside  .initial:n  = { false }
    , oneside  .code:n     = { \keys_set:nn { seuthesis } { twoside = false } }
    , one~side .code:n     = { \keys_set:nn { seuthesis } { twoside = false } }
    , twoside  .code:n     = { \keys_set:nn { seuthesis } { twoside = true  } }
    , two~side .code:n     = { \keys_set:nn { seuthesis } { twoside = true  } }
    , unknown  .code:n     = { \PassOptionsToClass { \CurrentOption } { \c__seuthesis_base_class_str } }
  }
\ProcessKeysOptions { seuthesis2024b }
\PassOptionsToClass { a4paper } { \c__seuthesis_base_class_str }
\LoadClass { \c__seuthesis_base_class_str }

\endinput
