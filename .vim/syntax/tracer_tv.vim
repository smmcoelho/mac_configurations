" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match

syn match _date /^[0-9]\{4}\/[0-9]\{2}\/[0-9]\{2}\s/ nextgroup=_time

syn match _time /\d\{2}:\d\{2}:\d\{2}\.\d\{3}\s/ nextgroup=_process

syn match _process /\d\{4,5}\s/ nextgroup=_pid

"syn match _pid /\d\{4,5}\s/ nextgroup=_text

"syn match _text /[A-Z]/ nextgroup=_text_critical,_text_error,_text_warning,_text_verbose,_text_debug,_text_default

syn region _text_critical start=/!!!/ end=/\n/
syn region _text_error start=/!!\s/ end=/\n/
syn region _text_warning start=/!\s\s/ end=/\n/
syn region _text_verbose start=/+\s\s/ end=/\n/
syn region _text_debug start=/++\s/ end=/\n/
syn region _text_default start=/\s\{2,3}[A-Z]/ end=/\n/


""define colors
hi Red ctermfg=Red guifg=Red
hi LightBlue ctermfg=LightBlue guifg=LightBlue
hi Yellow ctermfg=Yellow guifg=Yellow
hi Green ctermfg=Green guifg=Green
hi DarkGreen ctermfg=Green guifg=DarkGreen
hi Gray ctermfg=Gray guifg=Gray
hi DarkGray ctermfg=DarkGray guifg=DarkGray
hi DarkGray2 ctermfg=236   guifg=#5fffff  "rgb=95,255,255
hi DarkGray3 ctermfg=239   guifg=#5fffff  "rgb=95,255,255
hi DarkGray4 ctermfg=241   guifg=#5fffff  "rgb=95,255,255
hi Cyan ctermfg=Cyan guifg=Cyan
hi Blue ctermfg=Blue guifg=Blue
hi Brown ctermfg=Brown guifg=Brown
hi DarkBlue ctermfg=Blue guifg=DarkBlue
hi DarkRed ctermfg=52 guifg=#5f0000 "rgb=95,0,0"
hi LessDarkRed ctermfg=88 guifg=#870000 "rgb=135,0,0"
hi HotPink3 ctermfg=168 guifg=#d75f87 "rgb=215,95,135"
hi DarkGreen ctermfg=64 guifg=#5f8700 "rgb=95,135,0"
hi Orange3 ctermfg=172 guifg=#d78700 "rgb=215,135,0"
hi DarkGoldenrod ctermfg=136 guifg=#af8700 "rgb=175,135,0"
hi Gold ctermfg=142 guifg=#afaf00 "rgb=175,175,0"
hi DarkOliveGreen1 ctermfg=192 guifg=#d7ff87 "rgb=215,255,135
hi DarkSeaGreen1 ctermfg=193 guifg=#d7ffaf "rgb=215,255,175


hi def link _date 		DarkGreen
hi def link _time 		Green

hi def link _process 	Blue
hi def link _pid 		Cyan

hi def link _text 		Yellow



hi def link _text_critical 	Red
hi def link _text_error 	Brown
hi def link _text_warning 	Yellow
hi def link _text_verbose 	DarkGray
hi def link _text_debug 	DarkGray3

hi def link _text_default	Type

let b:current_syntax = "tracermapscape"
