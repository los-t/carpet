hi clear
set bg=dark
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "dgrin-fullcolor"

hi Normal           cterm=none      ctermfg=10  ctermbg=0   gui=none   guifg=#11aa11 guibg=#000000

hi LineNr           cterm=none      ctermfg=239 ctermbg=0   gui=none   guifg=#004040 guibg=#15151f
hi CursorLineNr     cterm=none      ctermfg=10  ctermbg=236            guifg=#009999 guibg=#15151f
hi CursorLine       cterm=none                  ctermbg=236                          guibg=#15151f
hi ColorColumn      cterm=none                  ctermbg=236                          guibg=#15151f

hi Pmenu            cterm=none      ctermfg=71  ctermbg=235
hi PmenuSel         cterm=underline ctermfg=10  ctermbg=235
hi PmenuSbar        cterm=none      ctermfg=233 ctermbg=234
hi PmenuThumb       cterm=none      ctermfg=71  ctermbg=72

hi StatusLine       cterm=none      ctermfg=0   ctermbg=11  gui=none   guifg=#000000 guibg=#009922
hi StatusLineNC     cterm=none      ctermfg=0   ctermbg=29  gui=none   guifg=#000000 guibg=#009922
hi VertSplit        cterm=none      ctermfg=0   ctermbg=29  gui=none   guifg=#333333 guibg=#333333
hi TabLine          cterm=none      ctermfg=0   ctermbg=29  gui=none   guifg=#000000 guibg=#009922
hi TabLineFill      cterm=none      ctermfg=0   ctermbg=29  gui=none   guifg=#000000 guibg=#009922
hi TabLineSel       cterm=bold      ctermfg=10  ctermbg=0   gui=bold   guifg=#00cc33 guibg=#000000
hi Folded           cterm=none      ctermfg=65  ctermbg=237 gui=none   guifg=#004040 guibg=#15151f
hi FoldedColumn     cterm=none      ctermfg=65  ctermbg=237

hi DiffAdd          cterm=none      ctermfg=0   ctermbg=72
hi DiffChange       cterm=none      ctermfg=0   ctermbg=139
hi DiffDelete       cterm=none      ctermfg=123 ctermbg=246
hi DiffText         cterm=none      ctermfg=10  ctermbg=125

hi MatchParen       cterm=bold      ctermfg=15  ctermbg=0              guifg=#aaaaaa guibg=#3300aa

" basics groups
hi Statement                                                gui=none   guifg=#cccc00
hi Type                                                     gui=none   guifg=#99bb99
hi Constant         cterm=none      ctermfg=87  ctermbg=0   gui=none   guifg=#ccccff
hi Identifier       cterm=none      ctermfg=87  ctermbg=0   gui=none   guifg=#666699
hi Comment          cterm=italic    ctermfg=244 ctermbg=0   gui=italic guifg=#666655
hi String           cterm=none      ctermfg=131 ctermbg=0   gui=italic guifg=#996600
hi Number           cterm=none      ctermfg=202 ctermbg=0              guifg=#cc6633

hi Include          cterm=italic    ctermfg=60  ctermbg=0   gui=italic guifg=#996666
hi PreCondit        cterm=italic    ctermfg=60  ctermbg=0   gui=none   guifg=#445577
hi PreProc                                                             guifg=#44aadd

syntax match OperatorChars "?\|+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]\|/\(/\|*\)\@!"
hi OperatorChars guifg=#227755

