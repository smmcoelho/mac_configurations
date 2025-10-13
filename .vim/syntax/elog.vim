" Quit when a (custom) syntax file was already loaded
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



syn match trcDate /[0-9]\{2}\/[0-9]\{2}\/[0-9]\{4} / nextgroup=trcTime
syn match trcTime /[0-9]\{2}:[0-9]\{2}:[0-9]\{2}\.[0-9]\{4,6} / nextgroup=trcMachine
syn match trcMachine /Machine:[0-9A-Z]\{4}/ nextgroup=trcAll
syn match trcAll /(.*)\n/

syn match trcId /[A-Z]\{2}-[0-9A-Z]\{4}/

syn region trcEvent start=/SYSTEM EVENT/ end=/^\n/ contains=trcId
syn region trcWarn start=/SYSTEM WARNING/ end=/^\n/ 

syn region trcError start=/SYSTEM ERROR/ end=/^\n/ 
syn region trcMatError start=/MATERIAL ERROR/ end=/^\n/ 



hi def link trcDate     Yellow
hi def link trcTime     Yellow
hi def link trcMachine  DarkGray
hi def link trcAll      DarkGray

hi def link trcId       Cyan

hi def link trcEvent    Type
hi def link trcWarn     Brown

hi def link trcError    Red
hi def link trcMatError Error


let b:current_syntax = "elog"
