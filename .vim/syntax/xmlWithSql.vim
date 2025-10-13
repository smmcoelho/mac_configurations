" Tracer vim syntax file
" Type :setf tracer
" to activate the syntax file

if exists("b:current_syntax")
    finish
endif

syn case match



syn region c_green start=/<\([a-z]\|[A-Z]\|\/\)/ end=/>/
syn region c_brown start=/<?/ end=/?>/
"syn match c_blue /<.*>/

syn match c_yellow /<\!\[CDATA\[/
syn match c_yellow /]]>/


syn region c_cyan start=/<\!--/ end=/-->/


""""""""""""
""sql part""
""""""""""""
"DDL - Data Definition Language
syn match sql_dll /CREATE \|ALTER \|DROP /

""DML - Data Manipulation Language
syn match sql_dml /INSERT \|UPDATE \|DELETE /

"DCL - Data Control Language
syn match sql_dcl /GRANT \|REVOKE /

""DQL - Data Query Language
syn match sql_dql /\<SELECT\>/

"Others
syn match sql_others /AND \|AND\n\|FROM \|FROM\n\|WHERE \|WHERE\n\|LIKE \|LIMIT \|AS \|UNION ALL \|UNION ALL\n\|NOT EXISTS \|EXISTS \|OR \| IN \|JOIN \|JOIN\n\|ON \|WHEN \|THEN \|ELSE \|END \|NOT \|SET \|INTO \|TABLE \|IF \|INNER \|GROUP BY \|GROUP BY\n\|HAVING \|COUNT \|MIN \|MAX \|GRADIENT \|COUNT\|count\|LEFT \|DISTINCT \|EXISTS \|EXISTS\n\|COALESCE( \|COALESCE(\n\|CASE \|CASE\n\|THEN \|THEN\n\|END \|END\n\|HAVING \|HAVING\n\|CROSS \|CROSS\n/

syn match sql_st /BEGIN;\|COMMIT;/
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
highlight Blue ctermfg=Blue guifg=Blue

""sql part""
hi c_dll ctermfg=129 guifg=#af00ff "rgb=175,0,255" 
hi c_dml ctermfg=135 guifg=#af5fff "rgb=175,95,255"
hi c_dcl ctermfg=141 guifg=#af87ff "rgb=175,135,255"
hi c_dql ctermfg=147 guifg=#afafff "rgb=175,175,255"
hi c_others ctermfg=170 guifg=#d75fd7 "rgb=215,95,215"
hi c_beci ctermfg=162 guifg=#d70087 "rgb=215,0,135"


hi def link c_darkGrey 		DarkGray
hi def link c_brown 		Brown
hi def link c_cyan  		Cyan	
hi def link c_red 	        Red 		
hi def link c_green 	        Green 
hi def link c_yellow 		Yellow
hi def link c_blue 		Blue
hi def link c_lightGreen 	Type
hi def link c_Error 		Error

""sql part""
hi def link sql_dll             c_dll
hi def link sql_dml             c_dml
hi def link sql_dcl             c_dcl
hi def link sql_dql             c_dql
hi def link sql_others          c_others
hi def link  sql_st             c_beci


let b:current_syntax = "xmlWithSql"
