" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif
 
""define colors
hi DarkSeaGreen ctermfg=193 guifg=#d7ffaf "rgb=215,255,175
highlight Yellow ctermfg=Yellow guifg=Yellow
""end define colors



syn case match

syn match comma /,/
syn match in /> \|< \|: /


syn match cc /^[A-Z]\{4}/ nextgroup=c1 "contains=comma
syn match c1 /,[0-9]/ nextgroup=process contains=comma
syn match process /,[A-Z_a-z_]\{4,40},/ nextgroup=day contains=comma
syn match day /[A-Z]\{1}[a-z]\{2},/ nextgroup=date contains=comma
syn match date / [0-9]\{2} [A-Z]\{1}[a-z]\{2} [0-9]\{4} / nextgroup=hour
syn match hour /[0-9]\{2}:[0-9]\{2}:[0-9]\{2} / nextgroup=runtime
syn match runtime /[0-9]\{4,8}[a-z]\{2} / nextgroup=r1
syn match r1 /+[0-9]\{4}/ nextgroup=method contains=comma
syn match method /,\([a-z]\|[A-Z]\)\(.*\),,,/ nextgroup=linenum contains=comma
syn match linenum /[0-9]\{1,20},/ nextgroup=data contains=comma
"syn match data /,\(>\|<\|:\)\(\(.*\)\(\(\n\)\|\(\%$\)\)\)\{1,100}\(\([A-Z]\{4},\)\|\(\%$\)\)/ contains=in,comma,cc


syn region comment start=/\*\*\*/ end=/\*\*\*/ oneline 

""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green
highlight Blue ctermfg=Blue guifg=Blue

hi def link comment     Gray

hi def link cc          Brown
hi def link c1          DarkGray
hi def link process     DarkSeaGreen
hi def link day         DarkGray
hi def link date        DarkGray
hi def link hour        DarkGray
hi def link runtime     DarkGray
hi def link r1          DarkGray
hi def link method      Cyan
hi def link linenum     DarkGray

"hi def link data        Green
hi def link comma        Yellow

hi def link in          Blue

let b:current_syntax = "tracer_asml"
