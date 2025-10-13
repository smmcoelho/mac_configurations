" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match

hi Debug cterm=NONE ctermfg=Magenta ctermbg=black guifg=Magenta guibg=black
hi Notif cterm=NONE ctermfg=DarkCyan ctermbg=black guifg=DarkCyan guibg=black
hi comment_perso cterm=NONE         ctermfg=247     ctermbg=NONE
hi Blue ctermfg=Blue guifg=Blue


syn match trcDate /^[0-9]\{4}\/[0-9]\{2}\/[0-9]\{2} / nextgroup=trcTime
syn match trcTime /[0-9]\{1,2}:[0-9]\{2}:[0-9]\{2}\.[0-9]\{6}/ nextgroup=trcHost,trcLog
syn match trcHost /[^ ]* / contained nextgroup=trcErr,trcWarn,trcNot,trcInfo,trcDbg
syn match trcErr /[A-Z]\{2,4} \(ERROR\|FATAL\|CRIT\) .*/ contained
syn match trcWarn /[A-Z]\{2,4} WARN .*/ contained
syn match trcInfo /[A-Z]\{2,4} INFO .*/ contained
syn match trcDbg /[A-Z]\{2,4} DBG .*/ contained
syn match trcNot /[A-Z]\{2,4} NOT .*/ contained


hi def link trcDate Type
hi def link trcTime Normal
hi def link trcHost Type
hi def link trcErr Error
hi def link trcWarn LineNr
hi def link trcInfo String
hi def link trcNot Notif
hi def link trcDbg Debug
hi def link trcLog MoreMsg

""""""""""""""""""""""""""""""""""""""""""
""""""""""" EDIFACT stuff """"""""""""""""
""""""""""""""""""""""""""""""""""""""""""
""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Green ctermfg=Green guifg=Green
"highlight UnderRed ctermfg=Red cterm=underline guifg=Green

hi def link edifactColon 	DarkGray
hi def link edifactPlusSign 	Brown
hi def link edifactApostrophe 	Brown
hi def link edifactSegmentName 	Red
hi def link edifactMessage  	Cyan	
hi def link edifactIcomercial 	DarkGray
hi def link edifactTkt 	        Error 		"Underlined	
hi def link edifactCpn 		Underlined 	"UnderRed
""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""
syn region comment start="==" end="\n" 
syn region debug start=/#scoelho/ end=/\n/


syn match OK /OK\|PASSED/
syn match KO /KO\|NOK\|FAILED/
syn match RUN /RUN/

syn region FAIL start=/FAILED/ end=/\n/ 
syn region PAR start=/^\[/ end=/\]/ oneline contains=OK,KO,RUN
syn region _result start=/Result\|Duration\|SUMMARY/ end=/\n/ oneline contains=OK,KO,RUN,trcTime

syn region _testname start=/test data for lens type/ end=/\n/
"contained nextgroup=trcErr,trcWarn,trcNot,trcInfo,trcDbg


hi def link KO  	Red
hi def link OK 	 	Green
hi def link debug  	Brown


hi def link comment 	c_comment
hi def link FAIL        Red
hi def link PAR         Cyan
hi def link RUN         Cyan

hi def link _result     Blue

hi def link _testname	Blue


let b:current_syntax = "machinetest"
