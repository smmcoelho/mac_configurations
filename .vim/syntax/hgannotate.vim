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


""define fields
syn match name /\(\([A-Z]\{1,15}\) \([A-Z]\{1,15}\)\)) /
syn match date /[0-9]\{2}-[0-9]\{2}-[0-9]\{4}/


syn region line start=/(/ end=/\n/ oneline contains=name,date

""hi def link space 	Constant	
hi def link name 	Red
hi def link date 	Green
""hi def link numDate 	Brown
hi def link line 	Constant


let b:current_syntax = "hgAnnotate"

