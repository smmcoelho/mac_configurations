" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match

syn match trcDate /^[0-9]\{4}\/[0-9]\{2}\/[0-9]\{2} / nextgroup=trcTime
syn match trcTime /[0-9]\{2}:[0-9]\{2}:[0-9]\{2}\.[0-9]\{6} / nextgroup=trcHost 
syn match trcHost /[A-Z]\{8,10}[0-9]\{2,4} / nextgroup=trcBeName,trcInstance
syn match trcBeName / [^ ]*#/
syn match trcInstance /[0-9]\{1,3}-[0-9]\{3,10} /

"syn match trcHost /[^ ]* / contained nextgroup=appErr,appWarn,appNot,appInfo,appDbg
"syn match trcHost /[^ ]* / contained nextgroup=traceErr,traceWarn,traceNot,traceInfo,traceDbg

syn region appNot start=/[A-Z]\{2,4} NOT/ end=/ /
syn region appDbg start=/[A-Z]\{2,4} DBG/ end=/ /
syn region appInfo start=/[A-Z]\{2,4} INFO/ end=/ /
syn region appWarn start=/[A-Z]\{2,4} WARN/ end=/ /
syn region appErr start=/[A-Z]\{2,4} \(ERROR\|FATAL\|CRIT\)/ end=/\n/

syn region appPfx start=/\[PFX/ end=/\]/



""""""""""""""""""""""""""""""""""""""""""
""""""""""" EDIFACT stuff """"""""""""""""
""""""""""""""""""""""""""""""""""""""""""
""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green
"highlight UnderRed ctermfg=Red cterm=underline guifg=Green


syn match edifactColon       contained /:\|\%x1F/
syn match edifactPlusSign    contained /+\|\%x1D/
syn match edifactAll 	     contained /.*/
syn match edifactApostrophe  contained /'\|\%x1C/
syn match edifactIcomercial  contained /&/
syn match edifactSegmentName contained /'[A-Z]\{3}\|UNB/
syn keyword edifactTkt TKT
syn keyword edifactCpn CPN


syn region edifactMessage start=/UNB/ skip=/+:'UNB/ end=/'\n\|\%x1C\n/ oneline contains=edifactColon,edifactPlusSign,edifactSegmentName,edifactApostrophe,edifactIcomercial

syn match edifactSegmentNameOther contained /^[A-Z]\{3}+/
syn region edifactMessage1 start=/[A-Z]\{3}+/ skip=/+:''^[A-Z]\{3}+/ end=/'&\n/ oneline contains=edifactColon,edifactPlusSign,edifactSegmentName,edifactApostrophe,edifactIcomercial,edifactSegmentNameOther
hi def link edifactMessage1 Cyan
hi def link edifactSegmentNameOther  Red


hi def link edifactColon 	DarkGray
hi def link edifactPlusSign 	Brown
hi def link edifactApostrophe 	Brown
hi def link edifactSegmentName 	Red
hi def link edifactMessage  	Cyan	
hi def link edifactIcomercial 	DarkGray
hi def link edifactTkt 	        Error 		"Underlined	
hi def link edifactCpn 		Underlined 	"UnderRed

hi def link appNot 		Red
hi def link appErr 		Red
hi def link appDbg 		Green
hi def link appInfo 		Green
hi def link appWarn 		Brown


hi def link appPfx Type
hi def link trcDate Type
hi def link trcTime Type
"hi def link trcHost DarkGray

hi def link trcHost 		Cyan
"hi def link trcBeName 		DarkGray
hi def link trcInstance 	Yellow


""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

let b:current_syntax = "tracer_amadeus"
