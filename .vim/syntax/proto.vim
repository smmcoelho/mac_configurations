if exists("b:current_syntax")
    finish
endif
    
""define colors
highlight Red ctermfg=Red guifg=Red
highlight LightBlue ctermfg=LightBlue guifg=LightBlue
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight Blue ctermfg=Blue guifg=Blue
highlight Brown ctermfg=Brown guifg=Brown
"highlight Red ctermfg=Red guifg=Red
hi DarkRed ctermfg=52 guifg=#5f0000 "rgb=95,0,0"
hi LessDarkRed ctermfg=88 guifg=#870000 "rgb=135,0,0"
hi HotPink3 ctermfg=168 guifg=#d75f87 "rgb=215,95,135"
hi DarkGreen ctermfg=64 guifg=#5f8700 "rgb=95,135,0"
hi Orange3 ctermfg=172 guifg=#d78700 "rgb=215,135,0"
hi DarkGoldenrod ctermfg=136 guifg=#af8700 "rgb=175,135,0"
hi Gold ctermfg=142 guifg=#afaf00 "rgb=175,175,0"

hi DarkOliveGreen1 ctermfg=192 guifg=#d7ff87 "rgb=215,255,135
hi DarkSeaGreen1 ctermfg=193 guifg=#d7ffaf "rgb=215,255,175

""QUERY
syn match voidClr       /message/
syn match defineClr     /package/
syn match testClr 	/optional\|repeated\|required /
syn match AmdClr 	/string\|uint64\|bool\|bytes/
syn match operatorsClr 	/\d/
"syn match constClr 	/AMD_True\|AMD_False\|NULL\|null\|0\|1\|2\|3\|4\|5\|6\|7\|8\|9/
syn match constClr 	/AMD_True\|AMD_False\|NULL\|null/
syn match fsmConstClr 	/kEVT_Ok\|kSTA_Start\|kEVT_Wait\|kEVT_Request\|kEVT_NextDoc\|kSTA_End/


syn region logClr  	start=/TSR_DEF_\|TSR_DEBUG\|TSR_TRACE\|TRC_TRACE/ end=/)\n\|;\n/
syn region throwClr_ 	start=/TSR_THROW_/ end=/;\|))\|)\n/
syn region throwClr 	start=/TSR_THROW(/ end=/);\|))\|)\n/
syn region catchClr     start=/TSR_CATCH_/ end=/;\|))\|)\n/
syn region trcClr 	start=/TRC_TraceMgr/ end=/;/
syn region requireClr 	start=/REQUIRE\|CHECK/ end=/;/

"syn region stringClr 	star=/\v\"/ end=/\v\"/
"syn match stringClr /"\([^"]*\)"/ 
"syntax region stringClr start=/"/ skip=/\\"/ end=/"/ 


""Colors attribution
hi def link voidClr 		Green
hi def link AmdClr 		DarkGreen
hi def link defineClr 		LightBlue
hi def link testClr 		Yellow
hi def link operatorsClr 	DarkSeaGreen1
hi def link constClr 		Constant	
hi def link fsmConstClr 	HotPink3
hi def link stringClr 		Red 
hi def link logClr 		DarkGray


hi def link catchClr 		Brown
hi def link requireClr 		DarkGoldenrod
hi def link throwClr_ 		Brown
hi def link throwClr 		Brown
hi def link trcClr 		Gold
