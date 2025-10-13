set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif
set t_Co=256
let colors_name = "wombat256"


" Vim >= 7.0 specific colors
if version >= 700
  "hi CursorLine   guibg=#2d2d2d
  hi CursorLine guifg=NONE guibg=#161616 guisp=#161616 gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu        guifg=#f6f3e8 guibg=#444444
  hi PmenuSel     guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor         guifg=NONE    guibg=#656565 gui=none
hi Normal         guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText        guifg=#808080 guibg=#303030 gui=none
"hi LineNr         guifg=#857b6f guibg=#000000 gui=none
hi LineNr guifg=#525252 guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
hi StatusLine     guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC   guifg=#857b6f guibg=#444444 gui=none
"hi StatusLineNC guifg=#bdae88 guibg=#4b4b4b guisp=#4b4b4b gui=bold ctermfg=144 ctermbg=239 cterm=bold
hi StatusLine guifg=#bdae88 guibg=#613830 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit      guifg=#444444 guibg=#444444 gui=none
hi Folded         guibg=#384048 guifg=#a0a8b0 gui=none
hi Title          guifg=#f6f3e8 guibg=NONE    gui=bold
hi Visual         guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey     guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
"hi Comment        guifg=#99968b gui=italic
hi Comment        cterm=NONE         ctermfg=243     ctermbg=NONE gui=italic
"hi Todo           guifg=#8f8f8f gui=italic
hi Todo           cterm=NONE         ctermfg=NONE     ctermbg=22 gui=italic
hi Constant       guifg=#e5786d gui=none
hi String         guifg=#95e454 gui=none
hi Identifier     guifg=#cae682 gui=none
hi Function       guifg=#cae682 gui=none
hi Type           guifg=#cae682 gui=none
hi Statement      guifg=#8ac6f2 gui=none
hi Keyword        guifg=#8ac6f2 gui=none
hi PreProc        guifg=#e5786d gui=none
hi Number         guifg=#e5786d gui=none
hi Special        guifg=#e7f6da gui=none

" My new stuff starts here
hi Label          guifg=#47e0c3 gui=none

":hi Search guibg=LightGreen
:hi Search ctermbg=Lightblue 

