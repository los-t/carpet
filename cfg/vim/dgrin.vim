" Vim color file
" Maintainer:	Vladimir Dranyonkov <los-t@ya.ru>
" Last Change:	2013 Sep 26

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

hi LineNr              cterm=none         ctermfg=239    ctermbg=0
hi CursorLineNr        cterm=none         ctermfg=10     ctermbg=235
hi CursorLine          cterm=none                        ctermbg=235
hi ColorColumn         cterm=none                        ctermbg=235

hi Pmenu               cterm=none         ctermfg=71     ctermbg=234
hi PmenuSel            cterm=underline    ctermfg=10     ctermbg=234
hi PmenuSbar           cterm=none         ctermfg=233    ctermbg=233
hi PmenuThumb          cterm=none         ctermfg=71     ctermbg=71

hi StatusLine          cterm=none         ctermfg=0      ctermbg=10
hi StatusLineNC        cterm=none         ctermfg=0      ctermbg=28
hi VertSplit           cterm=none         ctermfg=0      ctermbg=28
hi TabLine             cterm=none         ctermfg=0      ctermbg=28
hi TabLineFill         cterm=none         ctermfg=0      ctermbg=28
hi TabLineSel          cterm=bold         ctermfg=10     ctermbg=0
hi Folded              cterm=none         ctermfg=65     ctermbg=236
hi FoldedColumn        cterm=none         ctermfg=65     ctermbg=236

hi DiffAdd             cterm=none         ctermfg=0      ctermbg=71
hi DiffChange          cterm=none         ctermfg=0      ctermbg=138
hi DiffDelete          cterm=none         ctermfg=123    ctermbg=245
hi DiffText            cterm=none         ctermfg=10     ctermbg=124

hi MatchParen          cterm=bold         ctermfg=15     ctermbg=0

hi Normal              cterm=none         ctermfg=10     ctermbg=0

hi Constant            cterm=none         ctermfg=87     ctermbg=0
hi Comment             cterm=italic       ctermfg=244    ctermbg=0
hi String              cterm=none         ctermfg=131    ctermbg=0
hi Number              cterm=none         ctermfg=202    ctermbg=0

hi Include             cterm=italic       ctermfg=60     ctermbg=0
hi PreCondit           cterm=italic       ctermfg=60     ctermbg=0

let colors_name = "dgrin"
