" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match


hi c_string             cterm=NONE         ctermfg=86     ctermbg=NONE

syn region c_darkGrey start=/^#/ end=/\n/
syn region c_green start=/"/ end=/"/

syn match c_yellow /parameter/
syn match c_yellow /use/
syn match c_brown /setenv/

syn match toChange /\(IN_\|OUT_\).*_NAME/


""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green

syn region c_green start=/0[0-9] . BladeRunner_/ end=/\n/
syn region c_lightGreen start=/0\d \// end=/.sq3/


hi def link c_darkGrey 		DarkGray
hi def link c_brown 		Brown
hi def link c_red 	        Red 		
hi def link c_green 	        c_string
hi def link c_yellow 		Yellow
hi def link c_lightGreen 	Type
hi def link c_Error 		Error

hi def link toChange 	        Red


let b:current_syntax = "conv"
