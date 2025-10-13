if exists("b:current_syntax")
    finish
endif
    

""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green
highlight YellowResponse ctermfg=Yellow guifg=Blue
highlight Blue ctermfg=Blue guifg=Blue
hi DarkGoldenrod ctermfg=136 guifg=#af8700 "rgb=175,135,0"


syn region Links start=/^http\|^www/ end=/\n/
syn match Date /[0-9]\{1,2}\/[0-9]\{1,2}\/[0-9]\{1,2}/
"syn match CrNumber /CR [0-9]\{7,8}/
"syn match TaskNumber /TASK [0-9]\{5}/
syn region Cmnt start=/#\|^=/ end=/\n/
syn region BigCmnt start=/^##\|^=/ end=/##\n/
syn match Enumerate /^[0-9]\{1,2}\./
syn match PathPatern /\(\~\)\?\(\/[^:]*\).*\(>\)/

syn match todo /TODO/

syn region Arg start=/\$/ end=/ \|\'\|;\|\./

syn region AfterEnum start=/^\([0-9]\|-\)/ end=/\n/ oneline contains=Enumerate

syn region eg start=/eg\.\|Eg\.\|EG\./ end=/\n/ 



hi def link Enumerate 	Yellow
hi def link TaskNumber 	Brown
hi def link CrNumber 	Red
hi def link Links 	Blue
hi def link Date 	YellowResponse
hi def link Cmnt	DarkGray
hi def link PathPatern 	Cyan
hi def link BigCmnt	Green
hi def link AfterEnum 	DarkGoldenrod

hi def link Arg 	Cyan

hi def link todo        vlack_on_lightblue
hi def link eg          Blue

let b:current_syntax = "text"
