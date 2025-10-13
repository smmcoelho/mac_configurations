if exists("b:current_syntax")
    finish
endif
    
""""""""""""""""""""""""""""""""""""""""""
""""""""""" EDIFACT stuff """"""""""""""""
""""""""""""""""""""""""""""""""""""""""""
""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green
highlight YellowResponse ctermfg=Yellow guifg=Blue

""QUERY
syn match edifactColon       contained /:\|\%x1F/
syn match edifactPlusSign    contained /+\|\%x1D/
syn match edifactAll         contained /.*/
syn match edifactApostrophe  contained /'\|\%x1C/
syn match edifactIcomercial  contained /&/
syn match edifactSegmentName contained /'[A-Z]\{3}\|UNB/
""REPLY
syn match edifactSegmentName_Reply 	contained /'[A-Z]\{3}\|UNB/
syn match edifactDelimiters_Reply 	contained /:\|+\|&/
syn match edifactAll_Reply         	contained /''[A-Z]\{3}/
syn keyword edifactTkt TKT
syn keyword edifactCpn CPN
"syn keyword edifactTvl TVL

""DCX
"syn region edifactDcx start=/DCX+/ end=/&/

syn match edifactSegmentNameOther contained /^[A-Z]\{3}+/
syn region edifactMessage1 start=/^[A-Z]\{3}+/ skip=/+:''^[A-Z]\{3}+/ end=/'.*\n/ oneline contains=edifactColon,edifactPlusSign,edifactSegmentName,edifactApostrophe,edifactIcomercial,edifactSegmentNameOther
hi def link edifactMessage1 Cyan
hi def link edifactSegmentNameOther  Red


syn region commentPlay start=/^'[^'']/ end=/\n/ oneline contains=edifactMessage1
syn region reply start=/^''/ skip=/+:''[^[A-Z]\{3}+]/ end=/\n/ oneline contains=edifactSegmentName_Reply,edifactDelimiters_Reply,edifactAll_Reply,edifactApostrophe_Response,edifactDoubleApostrophe_Response

syn region commentPlay1 start=/^''[^[0-9]\{3}]/ skip=/+:''[^[A-Z]\{3}+]/ end=/\n/ oneline contains=edifactMessage1

hi def link edifactColon        DarkGray
hi def link edifactPlusSign     Brown
hi def link edifactApostrophe   Brown
hi def link edifactSegmentName  Red
hi def link edifactMessage      Cyan
hi def link edifactIcomercial   DarkGray

hi def link commentPlay         Green
hi def link commentPlay1        Green

hi def link reply               	Yellow
hi def link edifactSegmentName_Reply 	Constant
hi def link edifactDelimiters_Reply 	DarkGray
hi def link edifactAll_Reply 		Constant

hi def link edifactTkt          	Error
hi def link edifactCpn          	Underlined
"hi def link edifactTvl          	Blue

"hi def link edifactDcx 		DarkGray
""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

let b:current_syntax = "tracer"


