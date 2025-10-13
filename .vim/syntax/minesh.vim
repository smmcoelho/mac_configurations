if exists("b:current_syntax")
    finish
endif

if filereadable(glob("~/.vim/syntax/colors.vim"))
    source ~/.vim/syntax/colors.vim
endif

hi orange ctermfg=0208 guifg=#d70087 "rgb=215,0,135"
hi MoreMsg ctermfg=130 guifg=#af5f00 "rgb=175,95,0

""define colors
highlight Red ctermfg=Red guifg=Red
highlight LightBlue ctermfg=LightBlue guifg=LightBlue
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green
highlight DarkGreen ctermfg=Green guifg=DarkGreen
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight Blue ctermfg=Blue guifg=Blue
highlight Brown ctermfg=Brown guifg=Brown
highlight DarkBlue ctermfg=Blue guifg=DarkBlue
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

hi c_logClrToDelete ctermfg=DarkGray guifg=DarkGray ctermbg=LightGreen
"hi vlack_on_lightblue ctermfg=DarkGray guifg=DarkGray ctermbg=LightBlue

"hi c_string ctermfg=22 guifg=#87ffd7 "rgb=135,255,215
hi c_string             cterm=NONE         ctermfg=86     ctermbg=NONE
hi c_number             cterm=bold         ctermfg=22     ctermbg=NONE
hi c_includeFile        cterm=bold         ctermfg=124     ctermbg=NONE
hi c_includeGuards      cterm=NONE         ctermfg=124     ctermbg=NONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""sql part""
""""""""""""
"DDL - Data Definition Language
syn match sql_dll /CREATE \|ALTER \|DROP /

""DML - Data Manipulation Language
syn match sql_dml /INSERT \|UPDATE \|DELETE /

"DCL - Data Control Language
syn match sql_dcl /GRANT \|REVOKE /

""DQL - Data Query Language
syn match sql_dql /SELECT /

"Others
syn match sql_others /AND \|FROM \|WHERE \|LIKE \|LIMIT \|AS \|UNION ALL \|UNION \|NOT EXISTS \|EXISTS \|OR \|IN \|JOIN \|CROSS JOIN \|ON \|WHEN \|THEN \|ELSE \|END \|NOT \|SET \|INTO \|TABLE \|IF \|INNER \|GROUP BY \|VALUES \|CASE \|INDEX \|HAVING \|ORDER BY\|EXCEPT \|DISTINCT /

syn match sql_types /INTEGER \|TEXT \|BLOB \|REAL \|CHAR \|NUMBER \|NUMERIC \|PRIMARY KEY /

syn match sql_st /BEGIN;\|COMMIT;/

syn region sql_statement start=/SELECT/ end=/;/ contains=sql_others, sql_types
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""sql part""
""""""""""""
syn match dox_keywords /\\addindex\|\\addtogroup\|\\anchor\|\\arg\|\\attention\|\\author\|\\authors\|\\brief\|\\bug\|\\callergraph\|\\callgraph\|\\category\|\\cite\|\\class\|\\code\|\\cond\|\\copybrief\|\\copydetails\|\\copydoc\|\\copyright\|\\date\|\\def\|\\defgroup\|\\deprecated\|\\details\|\\diafile\|\\dir\|\\docbookonly\|\\dontinclude\|\\dot\|\\dotfile\|\\else\|\\elseif\|\\em\|\\endcode\|\\endcond\|\\enddocbookonly\|\\enddot\|\\endhtmlonly\|\\endif\|\\endinternal\|\\endlatexonly\|\\endlink\|\\endmanonly\|\\endmsc\|\\endparblock\|\\endrtfonly\|\\endsecreflist\|\\endverbatim\|\\enduml\|\\endxmlonly\|\\enum\|\\example\|\\exception\|\\extends\|\\f$\|\\f[\|\\f]\|\\f{\|\\f}\|\\file\|\\fn\|\\headerfile\|\\hidecallergraph\|\\hidecallgraph\|\\hideinitializer\|\\htmlinclude\|\\htmlonly\|\\idlexcept\|\\if\|\\ifnot\|\\image\|\\implements\|\\include\|\\includedoc\|\\includelineno\|\\ingroup\|\\internal\|\\invariant\|\\interface\|\\latexinclude\|\\latexonly\|\\li\|\\line\|\\link\|\\mainpage\|\\manonly\|\\memberof\|\\msc\|\\mscfile\|\\name\|\\namespace\|\\nosubgrouping\|\\note\|\\overload\|\\package\|\\page\|\\paragraph\|\\param\|\\parblock\|\\post\|\\pre\|\\private\|\\privatesection\|\\property\|\\protected\|\\protectedsection\|\\protocol\|\\public\|\\publicsection\|\\pure\|\\ref\|\\refitem\|\\related\|\\relates\|\\relatedalso\|\\relatesalso\|\\remark\|\\remarks\|\\result\|\\return\|\\returns\|\\retval\|\\rtfonly\|\\sa\|\\secreflist\|\\section\|\\see\|\\short\|\\showinitializer\|\\since\|\\skip\|\\skipline\|\\snippet\|\\snippetdoc\|\\snippetlineno\|\\startuml\|\\struct\|\\subpage\|\\subsection\|\\subsubsection\|\\tableofcontents\|\\test\|\\throw\|\\throws\|\\todo\|\\tparam\|\\typedef\|\\union\|\\until\|\\var\|\\verbatim\|\\verbinclude\|\\version\|\\vhdlflow\|\\warning\|\\weakgroup\|\\xmlonly\|\\xrefitem/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syn match voidClr       /void\|namespace\|Inline\|class \| struct\|^struct\|template\|virtual\|typename\|using/
syn match defineClr     /#include\|#ifndef\|#define\|#ifdef\|#else\|#endif\|#if\|#elif\|extern \|extern\n\|__FILE__\|__LINE__\|__DATE__\|__TIME__\|__TIMESTAMP__\|#undef/
syn match pppClr        /public\|private\|protected/
syn match testClr 	/for \|for(\|while\|return\|if \|if(\|try\n\| try \n\|static\|const\|typedef\|else\|inline\|this\|throw\|switch\|case\|break\|default/
syn match AmdClr 	/std::vector\|std::string\|std::list\|std::string\|DateField\|EtkFldError\|std::map\|std::auto_ptr\|std::type_info\|iterator\|const_iterator\|const_reverse_iterator\|std::ostream\|std::istringstream\|int \|int,\|bool \|char \|double\|sqlite_int64\|int16_t\|int64_t\|unsigned\|sqlite3_int64\|uint64_t\|enum/
syn match operatorsClr 	/=\|!=\|||\|&&\|<<\|>>\|++\|+\|>\|<\|?/
syn match constClr 	/NULL\|null\|true\|false\|nullptr/

syn region logClr  	start=/LOGINFO\|LOGFATAL\|LOGERR/ end=/;\|\n/
syn region throwClr 	start=/THROW_EX(/ end=/;/
syn match catchClr /catch/

syn match todo 	/TODO\|todo\|Todo\|ToDo/

"
syn region comment start="//" end="\n" contains=todo,dox_keywords
syn region comment start="\/\*" end="\*\/" contains=todo,dox_keywords
syn region commentDox start="///" end="\n" contains=todo,dox_keywords
syn region commentDox start="\/\*\*" end="\*\/" contains=todo,dox_keywords
syn region commentDox start="\/\*\!" end="\*\/" contains=todo,dox_keywords



syn region logClrToDelete  	start=/std::cout\|cout/ end=/endl;/


"method name (with class name)
syn match method /\w*::\h\w*\ze([^])]*\()\s*\(const\)\?\)\?$/

"number match
syn match numbers /\( [-+]\d\+\)\|\( \d\+\)/

"include files
syn region includeFile start=/#include/ end=/\(>\|"\)\n/ contains=defineClr

call matchadd('Blue', '^namespace \zs\w*\ze') "namespace
call matchadd('Blue', '  \{-\}class \zs\w*\ze') "class
call matchadd('Blue', '\(public\|private\|protected\) \zs\w*\ze') "inheritance
call matchadd('c_includeGuards', '\(#define\|#ifndef\) \zs\w*\ze') "define



""highlight strings - under quotes
syn region str start="\"" end="\"" contains=sql_dll, sql_dml, sql_dcl, sql_dql, sql_others, sql_types, sql_st, numbers, includeFile, numbers


""Mapscape specific
syn region log start=/MyLogging/ end=/;/ contains=str


""Colors attribution
hi def link voidClr 		Green
hi def link AmdClr 		DarkGreen
hi def link defineClr 		orange
"hi def link defineAfterClr      SandyBrown
"LightBlue
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

hi def link comment 		c_comment
hi def link commentDox		c_commentDoxygen
hi def link dox_keywords        c_commentDoxygenFields

hi def link sql_dll             c_dll
hi def link sql_dml             c_dml
hi def link sql_dcl             c_dcl
hi def link sql_dql             c_dql
hi def link sql_others          c_others
hi def link  sql_st             c_beci
hi def link sql_types           c_types

"hi def link todo                vlack_on_lightblue


hi def link logClrToDelete      c_logClrToDelete

hi def link file 	        const

hi def link pppClr              Yellow2

hi def link method              DeepSkyBlue1
hi def link namespace           Blue
hi def link class               DeepSkyBlue1
hi def link inheritance         DeepSkyBlue1

hi def link includeFile         c_includeFile
hi def link str                 c_string

hi def link numbers             c_number
hi def link macros              Red

hi def link log                 comment_perso

let b:current_syntax = "cpp"



