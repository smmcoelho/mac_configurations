" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match


syn region c_cyan start=/\/prod\/nds\// end=/\n/
syn region c_brown start=/setenv/ end=/\n/
syn region c_green start=/0\d \. / end=/no/
syn region c_lightGreen start=/0\d \// end=/.sq3/

syn region c_darkGrey start=/\[/ end=/\]/

syn match param /parameter/

syn region c_brown start=/system #end of file/ end=/\n/

""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green

hi def link c_darkGrey 		DarkGray
hi def link c_brown 		Brown
hi def link c_cyan  		Cyan	
hi def link c_red 	        Red 		
hi def link c_green 	        Green 
hi def link c_yellow 		Yellow
hi def link c_lightGreen 	Type
hi def link c_Error 		Error

hi def link param               Yellow
let b:current_syntax = "tracerMapscape"
