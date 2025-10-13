" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match

syn match _spaces / */
syn match _comma /,/
syn match _space / /

syn match _time /^[0-9]\{2}\:[0-9]\{2}\:[0-9]\{2}\:[0-9]\{2}/ 
"nextgroup=_spaces,_process
"syn match _process /[A-Za-Z]\{5,100}/ nextgroup=_spaces,_pid
"syn match _pid /[A-Z]\{3,5} / nextgroup=_pidnumber
"syn match _pid /pid / nextgroup=_pidnumber
"syn match _pidnumber /[0-9]\{3,5} / nextgroup=_file
syn match _file /file / nextgroup=_filename
syn match _filename /\/[A-Za-z].*, / nextgroup=_line
syn match _line /line/ nextgroup=_linenumber
syn match _linenumber / [0-9]\{1,9}\n/ 

syn match _pid /pid [0-9]\{2,7} /

syn region _log start=/LoggingTimeInfo:/ end=/\n/

"syn region _not start=/[A-Z]\{2,4} NOT/ end=/ /
"syn region _dbg start=/[A-Z]\{2,4} DBG/ end=/ /
"syn region _info start=/[A-Z]\{2,4} INFO/ end=/ /
"syn region _warn start=/[A-Z]\{2,4} WARN/ end=/ /
syn region _err start=/\(SQLITE_ERROR\|FATAL\|ERROR\)/ end=/\n/


syn region _pname start=/   / end=/ / 


""""""""""""
""sql part""
""""""""""""
hi c_dll ctermfg=129 guifg=#af00ff "rgb=175,0,255" 
hi c_dml ctermfg=135 guifg=#af5fff "rgb=175,95,255"
hi c_dcl ctermfg=141 guifg=#af87ff "rgb=175,135,255"
hi c_dql ctermfg=147 guifg=#afafff "rgb=175,175,255"
hi c_others ctermfg=170 guifg=#d75fd7 "rgb=215,95,215"
hi c_beci ctermfg=162 guifg=#d70087 "rgb=215,0,135"
hi c_types ctermfg=182    guifg=#D7AFD7

"DDL - Data Definition Language
syn match sql_dll /CREATE \|ALTER \|DROP /

""DML - Data Manipulation Language
syn match sql_dml /INSERT \|UPDATE \|DELETE /

"DCL - Data Control Language
syn match sql_dcl /GRANT \|REVOKE /

""DQL - Data Query Language
syn match sql_dql /SELECT /

"Others
syn match sql_others /AND \|FROM \|WHERE \|LIKE \|LIMIT \|AS \|UNION ALL \|NOT EXISTS \|EXISTS \|OR \|IN \|JOIN \|ON \|WHEN \|THEN \|ELSE \|END \|NOT \|SET \|INTO \|TABLE \|IF \|INNER \|GROUP BY \|VALUES \|CASE \|INDEX \|HAVING \|ORDER BY/

syn match sql_types /INTEGER\|TEXT\|BLOB\|REAL\|CHAR\|NUMBER\|NUMERIC\|PRIMARY KEY/

syn match sql_st /BEGIN;\|COMMIT;/



hi def link sql_dll             c_dll
hi def link sql_dml             c_dml
hi def link sql_dcl             c_dcl
hi def link sql_dql             c_dql
hi def link sql_others          c_others
hi def link  sql_st             c_beci
hi def link sql_types           c_types

""""""""""""""""""""
"" end of sql part""
""""""""""""""""""""



""define colors
highlight Red ctermfg=Red guifg=Red
highlight Cyan ctermfg=Cyan guifg=Cyan
highlight DarkGray ctermfg=DarkGray guifg=DarkGray
highlight Brown ctermfg=Brown guifg=Brown
highlight Yellow ctermfg=Yellow guifg=Yellow
highlight Green ctermfg=Green guifg=Green


hi def link _log                DarkGray
hi def link _time               Yellow
hi def link _process            Brown
hi def link _pid                DarkGray
hi def link _pidnumber          Cyan

"hi def link _file               Cyan
hi def link _filename           Cyan
"hi def link _line               Green
hi def link _linenumber         Brown

hi def link _pname              Green

hi def link _not 		Red
hi def link _err 		Red
hi def link _dbg 		Green
hi def link _info 		Green
hi def link _warn 		Brown


let b:current_syntax = "tracerMapscapeLog"
