" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match


syn match c_lightGreen /^\[[0-9]\{4}\-[0-9]\{2}\-[0-9]\{2}T[0-9]\{2}\:[0-9]\{2}\:[0-9]\{2}\]/ 
syn match c_cyan /expectedResultCount: \d/

syn match c_red /Test failed!/
syn match c_green /Test passed!/

syn match c_lightGreen /success(es): \d\|SUCCESS/
syn match c_red /error(s): \d*/
syn match c_brown /failures: \d*/

syn match c_red /\d* error(s)/
syn match c_brown /\d* warning(s)/

syn region c_darkGrey start=/DEBUG/ end=/\n/
syn region c_red start=/ERROR\|error/ end=/\n/
syn region c_red start=/FATAL/ end=/\n/
syn region c_red start=/Failed conversion/ end=/\n/
syn region c_yellow start=/PROGRESS/ end=/:/


"syn region c_brown start=/\// end=/\( \|\}\|\n\)/

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


let b:current_syntax = "tracer_mapscape"
