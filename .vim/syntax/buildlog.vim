" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match


syn match _time /^[0-9]\{2}:[0-9]\{2}:[0-9]\{2}.[0-9]\{3}/  
syn match _dbg /.*\[DEBUG\].*/ contains=_time
syn match _info /.*\[INFO\].*/ contains=_time
syn match _warn /.*\[WARN\].*/ contains=_time
syn match _err /.*\[ERROR\].*/ contains=_time
syn match _fail /.*\[FAILED\].*/ contains=_time



syn match _lc /.*\[LIFECYCLE\].*/ contains=_time
syn match _qt /.*\[QUIET\].*/ contains=_time


syn match fail /FAILED/ 



"syn region _dbg start=/^/ matchgroup=_debug end=/\n/ contains=_time,_debug


"syn region _not 


""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green


hi def link _time               Yellow

hi def link _not 		Red
hi def link _err 		Red
hi def link _fail 		Red
hi def link _dbg 		DarkGray
hi def link _info 		Green
hi def link _warn 		Brown

hi def link fail 		Red

let b:current_syntax = "buildlog"
