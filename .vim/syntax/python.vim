if exists("b:current_syntax")
    finish
endif

if filereadable(glob("~/.vim/syntax/colors.vim"))
    source ~/.vim/syntax/colors.vim
endif

hi orange ctermfg=0208 guifg=#d70087 "rgb=215,0,135"

""define colors
highlight Red ctermfg=Red guifg=Red
highlight LightBlue ctermfg=LightBlue guifg=LightBlue
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green cterm=bold
highlight DarkGreen ctermfg=Green guifg=DarkGreen
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight Blue ctermfg=Blue guifg=Blue
highlight DarkBlue_class ctermfg=204 guifg=DarkBlue cterm=bold "ctermbg=239
highlight DarkBlue ctermfg=Blue guifg=DarkBlue cterm=bold 
highlight Brown ctermfg=Brown guifg=Brown
hi DarkRed ctermfg=52 guifg=#5f0000 "rgb=95,0,0"
hi LessDarkRed ctermfg=88 guifg=#870000 "rgb=135,0,0"
hi HotPink3 ctermfg=168 guifg=#d75f87 "rgb=215,95,135"
hi DarkGreen ctermfg=64 guifg=#5f8700 "rgb=95,135,0"
hi Orange3 ctermfg=172 guifg=#d78700 "rgb=215,135,0"
hi DarkGoldenrod ctermfg=136 guifg=#af8700 "rgb=175,135,0"
hi Gold ctermfg=142 guifg=#afaf00 "rgb=175,175,0"

hi DarkOliveGreen1 ctermfg=192 guifg=#d7ff87 "rgb=215,255,135
hi DarkSeaGreen1 ctermfg=193 guifg=#d7ffaf "rgb=215,255,175

hi c_dll ctermfg=129 guifg=#af00ff "rgb=175,0,255" 
hi c_dml ctermfg=135 guifg=#af5fff "rgb=175,95,255"
hi c_dcl ctermfg=141 guifg=#af87ff "rgb=175,135,255"
hi c_dql ctermfg=147 guifg=#afafff "rgb=175,175,255"
hi c_others ctermfg=170 guifg=#d75fd7 "rgb=215,95,215"
hi c_beci ctermfg=162 guifg=#d70087 "rgb=215,0,135"
hi c_types ctermfg=182    guifg=#D7AFD7

hi comment_perso cterm=NONE         ctermfg=247     ctermbg=NONE
hi c_commentDoxygen ctermfg=23 guifg=#005f5f "rgb=0,95,95"
hi c_commentDoxygenFields  cterm=underline,bold   ctermfg=23    ctermbg=NONE
hi c_comment_keywords   cterm=underline,bold   ctermfg=247    ctermbg=NONE

hi c_logClrToDelete ctermfg=DarkGray guifg=DarkGray ctermbg=LightGreen

hi c_string             cterm=NONE         ctermfg=86     ctermbg=NONE
hi c_number             cterm=bold         ctermfg=22     ctermbg=NONE
hi c_includeFile        cterm=bold         ctermfg=124    ctermbg=NONE
hi c_includeGuards      ctermfg=124    


syn match self          /self/

syn match voidClr       /\<def\>/
syn match defineClr     /\<import\>\|\<from\>\|\<as\>\|\<__author__\>\|\<__date__\>/
syn match pppClr        /\<public\>\|\<private\>\|\<protected\>/
syn match testClr 	/\<for\>\|\<in\>\|\<or\>\|\<and\>\|\<not\>\|\<while\>\|\<return\>\|\<if\>\|\<try\>\|\<static\>\|\<const\>\|\<typedef\>\|\<else\>\|\<inline\>\|\<this\>\|\<throw\>\|\<switch\>\|\<case\>\|\<break\>\|\<default\>\|\<except\>\|\<pass\>\|\<raise\>\|\<elif\>\|&/
syn match scoelho_type /\<std::vector\>\|\<std::string\>\|\<std::list\>\|\<std::string\>\|\<std::map\>\|\<std::auto_ptr\>\|\<std::type_info\>\|\<iterator\>\|\<const_iterator\>\|\<const_reverse_iterator\>\|\<std::ostream\>\|\<std::istringstream\>\|\<int\>\|\<int,\>\|\<bool\>\|\<char\>\|\<double\>\|\<sqlite_int64\>\|\<int16_t\>\|\<int64_t\>\|\<unsigned\>\|\<sqlite3_int64\>\|\<uint64_t\>\|\<enum\>\|\<sqlite3\>\|\<str\>\|\cnone/

syn match others /\<print\>/
syn match operatorsClr 	/=\|!=\|||\|&&\|<<\|>>\|++\|+\|>\|<\|?/

syn match constClr 	/\<NULL\>\|\<OK\>\|\<TRUE\>\|\<FALSE\>\|\<null\>\|\<ok\>\|\<True\>\|\<False\>/

syn match catchClr /catch/

syn match todo /\cTODO/

syn region comment start="#" end="\n" contains=todo,dox_keywords
syn region comment start="#" end="\n" contains=todo,dox_keywords,comment_keywords


syn region logClrToDelete  	start=/std::cout\|cout/ end=/endl;\|;/

"class
syn match class /\<class\>/
syn region class_name start=/\<class\>/ end=/:/me=s-1 contains=class

"method name 
"syn match method /\w*::\h\w*\ze([^])]*\()\s*\(const\)\?\)\?$/
syn match par /(/
syn region method start=/\<def\>/ end=/(/me=s-1 contains=voidClr


"number match
syn match numbers /\(\([-+]\d\+\)\|\( \d\+\)\)\(\(\.\d\+\)\)\{0,}\([edED][-+]\=\d\+\)\{0,}/

"include files
syn region includeFile start=/^\(\<import\>\|\<from\>\)/ end=/\n/ contains=defineClr,comment

call matchadd('Blue', '\(public\|private\|protected\) \zs\w*\ze') "inheritance
call matchadd('c_includeGuards', '\(#define\|#ifndef\) \zs\w*\ze') "define


syn region comment1 start=/\'\'\'/ end=/\'\'\'/ contains=str1
syn region comment2 start=/\"\"\"/ end=/\"\"\"/ contains=str2

""highlight strings - under quotes
syn region str1 start="\"" end="\"" contains=includeFile
syn region str2 start="\'" end="\'" contains=includeFile


syn match at /@staticmethod/


""Colors attribution
hi def link voidClr 		Green
hi def link scoelho_type	DarkGreen
"hi def link scoelho_iterator	
"hi def link scoelho_function	
hi def link scoelho_const	const
hi def link others      	DarkSeaGreen1
hi def link defineClr 		orange
"hi def link defineAfterClr      SandyBrown
"LightBlue
hi def link testClr 		Yellow
hi def link operatorsClr 	DarkSeaGreen1
hi def link constClr 		Constant	
hi def link fsmConstClr 	HotPink3
hi def link stringClr 		Red 
hi def link logClr 		DarkGray


hi def link class 		DarkBlue_class
hi def link class_name 		DarkBlue
"hi def link throwClr_ 		Brown
"hi def link throwClr 		Brown
"hi def link trcClr 		Gold

hi def link comment 		c_comment
hi def link comment1 		c_comment
hi def link comment2 		comment_perso
hi def link commentDox		c_commentDoxygen
hi def link dox_keywords        c_commentDoxygenFields
hi def link comment_keywords    c_comment_keywords



"hi def link logClrToDelete      comment_perso
hi def link at                  c_commentDoxygen

hi def link file 	        const
hi def link gtest_keywords	c_others
hi def link asml_keywords	c_others

hi def link pppClr              Yellow2

hi def link method              LightBlue
hi def link inheritance         LightBlue

hi def link includeFile         c_includeFile
hi def link str1                c_string
hi def link str2                c_string

hi def link numbers             c_number
hi def link macros              Red

hi def link log                 comment_perso

"hi def link self                SandyBrown


let b:current_syntax = "python"



