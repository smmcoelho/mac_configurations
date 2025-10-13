:colorscheme wombat256
":colorscheme Revolution

if has("autocmd")
   augroup GZIP
      " remove all gzip autocommands
      au!
   augroup END

   " we need tabs for a Makefile
   autocmd BufEnter [mM]akefile* set noet

   " I wonder why cindent isn't the default for c++ files...
   autocmd BufEnter *.cpp,*.hpp,*.cc,*.hh,*.h set cindent
   autocmd BufEnter *.cpp,*.hpp,*.cc,*.hh,*.h,*.ddf,*.m,*.py let &colorcolumn=81 "join(range(81,999),",")

   autocmd BufEnter *.java set cindent
   autocmd BufEnter *.i setf cpp hiLight
   "autocmd Syntax cpp call EnhanceSyntax()

   " Amadeus stuff
   "filetype plugin on
   "files without type extension are setted to txt
   "au BufNewFile,BufRead * if &ft == '' | set ft=text | endif
   autocmd BufEnter *.cmt setf cmt
   autocmd BufEnter Make*.inc setf make
   autocmd BufEnter *.mdl.* setf mdl
   autocmd BufEnter *.txt,*.md setf text
   autocmd BufEnter *.proto setf proto
   autocmd BufEnter *.sql setf sql
   autocmd BufEnter *.unittest.log,*.unittest.err.log,*.unittest setf unittest
   autocmd BufEnter *.mtest.log,*.mtest.err.log,*.mtest,*.out setf machinetest
   autocmd BufEnter *.buildlog setf buildlog
   autocmd BufEnter *.xml setf xml
   autocmd BufEnter *.hpp,*.cpp,*.h,*.c,*.ci,*.keep,*.stash,[0-9] setf cpp
   autocmd BufEnter *.ddf,*.csv,*.mdldp setf ddf
   autocmd BufEnter *.m setf matlab
   autocmd BufEnter *.gradle setf gradle
   "autocmd BufEnter *log setf tracerMapscape 
   "autocmd BufEnter *log.b setf tracerMapscapeLog 
   autocmd BufEnter *.mapinfo setf mapinfo 
   autocmd BufEnter *.convert setf conv
   autocmd BufEnter *.acf setf acf
   autocmd BufEnter *.cwbd setf cwbd
   autocmd BufEnter *.py setf python
   autocmd BufEnter *.trace,*.log* setf tracer_tv
   autocmd BufEnter ER_event_log*,*_log setf elog
   autocmd BufEnter *.plantuml setf plantuml
   "autocmd BufEnter *.cpp,*.c,*.hpp,*.h nested TagbarOpen
   let g:tagbar_width=60



   au BufWinLeave ?* mkview
   au BufWinEnter ?* silent loadview


   "for python"
   autocmd Filetype python setlocal
      \ tabstop=4
      \ softtabstop=4
      \ shiftwidth=4
      "\ textwidth=79
      \ expandtab
      \ autoindent
      \ fileformat=unix
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" scoelho setup """"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
set autoindent

""set .bashrc interactive to be able to run alias from vim
":set shellcmdflag=-ic

:set number	     "set line number on
:set cursorline                  
:set modeline

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo"

set incsearch     " show search matches as you type"

:set hlsearch  

:set title           " show title in console title bar
:syntax on           " syntax highlighing
au VimEnter * if &diff | execute 'windo set wrap' | endif ":windo set wrap ":set wrap

set encoding=utf-8 nobomb

"map ignorecase toggle
nmap \ic :set ignorecase! ignorecase? <CR>
"to search case sensitive 
":set noic
"to search with case insensitive
:set ic

"to move in the buffer without saving the files
:set hidden 

"to delete word after cursor
":imap <C-d> <C-[>diwi
"imap <C-d> dw

":imap <M-d> <C-[>diwi

"to move one word forward or backward
map <C-Left> b 
map <A-Left> b
map <C-Right> w 
map <A-Right> w

"map <C-M> <C-]>
map <F3> <C-]>
map <F2> <C-T>
map <F4> %
"imap <F4> <esc> % i

""map /. to search word under cursor
map /. *<CR>
map ?> #<CR>
vnoremap // y/<C-R>"<CR>

""map going to begin and end of method
map <F5> [{
""[M
map <F6> ]M
"map <SHIFT-F6> [m

"auto close braces (brackets)
"ino " ""<left>
"ino ( ()<left>
"ino [ []<left>
ino {<CR> {<CR>}<ESC>O
"ino { {<CR>}<ESC>O

""c++ auto complete
ino #i #include ""<left>
"ino if( if()<cr>{<cr>}<ESC>O
ino cout std::cout << " " << std::endl;<left>


" to jump cursor with mouse 
"set mouse=v ""a ""v
"set 4 spaces insteadof tab
set tabstop=3
set softtabstop=0 noexpandtab
set shiftwidth=3
set tabstop=6 softtabstop=0 expandtab shiftwidth=3 smarttab
	


"" map reload vimrc file without closing vim
:map sz :source ~/.vimrc <CR>

""map search double click word
":vmap <2-LeftMouse> *<CR>

" type ` to show buffer list
:nnoremap ` :buffers<CR>:buffer<Space>
:nnoremap `1 :b1<CR>
:nnoremap `2 :b2<CR>
:nnoremap `3 :b3<CR>
:nnoremap `4 :b4<CR>
:nnoremap `5 :b5<CR>
:nnoremap `6 :b6<CR>
:nnoremap `7 :b7<CR>
:nnoremap `8 :b8<CR>
:nnoremap `9 :b9<CR>

:nnoremap c` :bd<CR>
:nnoremap c1 :bd1<CR>
:nnoremap c2 :bd2<CR>
:nnoremap c3 :bd3<CR>
:nnoremap c4 :bd4<CR>
:nnoremap c5 :bd5<CR>
:nnoremap c6 :bd6<CR>
:nnoremap c7 :bd7<CR>
:nnoremap c8 :bd8<CR>
:nnoremap c9 :bd9<CR>

:nnoremap ! :bnext<CR>
:nnoremap ~ :bprevious<CR>

""fold block 
vmap \f :fold<CR>
""expand block 
map \g zo<CR>

""create new empty buffer [No Name]
map \n :enew<CR>

set viewoptions-=options
""save automatically fold view
"autocmd BufWinLeave *.* mkview!
""autoload automatically fold view
autocmd BufWinEnter *.* silent loadview

""dummy search for reset highlight
"nmap \/ :/dsfkgjhdkjfgh<CR>
nmap \/ :let @/ = "" <CR>
"nnoremap <Esc-Left> :/dsfkgjhdkjfgh<CR>

"highlight (with red) when search reaches the buttom
hi WarningMsg ctermfg=white ctermbg=red guifg=White guibg=Red gui=None

" set qq to quit without need to :q Enter
nmap qq :qa<CR>
" set ww to save without need to :w Enter
nmap ww :w<CR>
" set we to save without need to :w Enter
nmap w1 :w!<CR>
" set qa to quit withou saving no need to :q! Enter
nmap qa :qa!<CR>
" set wq to save without need to :wq Enter
nmap wq :wq<CR>

"map \f  :ClangFormat <CR>

""Togle paste mode (for insert text with no format)
set pastetoggle=[p

" set pl to past into next line
:nmap pl :pu<CR>

" In Visual mode, backspace deletes selection
vnoremap <BS> d

function! CloseHiddenBuffers()
	let i = 0
	let n = bufnr('$')
	while i < n
		let i = i + 1
		if bufloaded(i) && bufwinnr(i) < 0
			exe 'bd ' . i
		endif
	endwhile
endfunction
nmap qw :call CloseHiddenBuffers()<CR>

"synchronize NERDTree with current opened tab file path
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

""to get the symbols of expand well
"let g:NERDTreeDirArrows=0
map \q :NERDTreeToggle<CR>
map \w :NERDTreeToggle<CR> :set nu ! <CR> :SignifyToggle <CR>
map \e :set nu <CR> :NERDTreeToggle<CR>

""LineDiff
vmap \d :Linediff<CR>
nmap \r :LinediffReset<CR>

"vimdiff get all diferences
nmap dl :1,$+1diffget<CR>
nmap du :diffupdate<CR>

"" VCSVimDiff 
nmap \g :VCSVimDiff<CR>



""to show indentention lines (indentline)
let g:indentLine_fileType = ['toolspec', 'xml']
let g:indentLine_fileTypeExclude = ['c', 'cpp', 'h', 'hpp']
let g:indentLine_char = '|'
map \i :IndentLinesToggle<CR>

" Toggle spellchecking
function! ToggleSpellCheck()
    set spell!
    if &spell
        echo "Spellcheck ON"
    else
        echo "Spellcheck OFF"
    endif
endfunction
nmap \s :call ToggleSpellCheck()<CR>


""NERD Commenter
filetype plugin on
vmap \\ \ci 
map \\ \ci
vmap \] \cn 
map \] \cn
map \= \cc
vmap\= \cc
map \- \cm
vmap\- \cm

augroup SetCMS
        autocmd FileType ocaml let &l:commentstring='(*%s*)'
augroup END


""get full file name function
function! GetName()
    :echo expand('%:p') 
endfunction
nmap gn :call GetName()<CR>

"NERDCommenter settings - added to file ~/.vim/plugin/NERD_commenter.vim - not needed here anymore 
let g:NERDCustomDelimiters = {  'text': { 'left': '#' }, 'ddf': { 'left': '#' } , 'plantuml': { 'left': "'" }  }
"let g:NERDCustomDelimiters = {
     "\ 'conf': { 'left': '#' },
     "\ 'conv': { 'left': '#' }
     "\ }

" vimdiff ignore whitespaces
"set diffopt+=iwhite

set backspace=indent,eol,start


" Cscope stuff (very useful for developers!)
if has("cscope")
"    set csprg=cscope
    set cspc=3
    set csto=0
    set nocst " strange display sometimes
"     set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DIR != ""
        cs add $CSCOPE_DIR/cscope.out
        cd $CSCOPE_DIR
    endif
    set csverb

    " Useful mappings
    nmap ,cs :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap ,cg :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap ,cd :cs find d <C-R>=expand("<cword>")<CR><CR>
    nmap ,cc :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap ,ct :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap ,ce :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap ,cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap ,ci :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    " Special one, to find where the current file is #included
    nmap ,c% :cs find i <C-R>=expand("%:t")<CR><CR>

    " Abbreviation for commandline
    cab csf cs find
endif



" Shortcuts for autocompletion
inoremap <C-L> <C-X><C-L>
inoremap <C-N> <C-X><C-N>
inoremap <C-P> <C-X><C-P>


""" auto complete """
set tags=./tags;/;.;
"set tags=/home/smotacoe/.tags

inoremap <Tab> <C-R>=InsertTabWrapper("backward")<cr>
"inoremap <S-Tab> <C-R>=InsertTabWrapper("forward")<cr>

function! InsertTabWrapper(direction)
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	elseif "backward" == a:direction
		return "\<c-p>"
	else
	        return "\<c-n>"
	endif
endfunction
""" end of auto complete """


"" Use Control-Tab for switch between header and source file
"set path=.,./*,,,../../include/*,../../src/*,../include/*,../src/*,../../../include/*,../../../src/*,
"set path=.,./*,,,./../inc/*,../../lib/*,../inc/*,../lib/*,../../../inc/*,../../../lib/*
set path=$PWD/com/**,../com/**,../../com**,../../../com/**
"set path+=**

function! SwitchSourceHeader()
	if (expand ("%:e") == "cpp")
                try | find  %:t:r.hpp | catch /Can't find file/  | endtry
	elseif (expand ("%:e") == "hpp")
            try | find  %:t:r.cpp | catch /Can't find file/ | endtry
	elseif (expand ("%:e") == "h")
            try | find  %:t:r.c | catch /Can't find file/ | endtry
	elseif (expand ("%:e") == "h")
            try | find  %:t:r.c | catch /Can't find file/ | endtry
	endif
endfunction
nmap <S-Tab> :call SwitchSourceHeader()<CR>

"""""""""""""""""""
"" dOxygen Stuff ""
""""""""""""""""""""

function! Doxy_author()
	let s:line=line(".")
	call setline(s:line,"/**")
	call append(s:line,"* \\file ".expand('%b'))
        call append(s:line+1,"* ")
	call append(s:line+2,"* Copyright of this program is the property of AMADEUS,")
	call append(s:line+3,"* without whose written permission reproduction in ")
	call append(s:line+4,"* whole or in part is prohibited.")
	call append(s:line+5,"*/")
	call append(s:line,"")
	unlet s:line
endfunction
nmap da :call Doxy_author()<CR>

function! Doxy_func()
	":s/$/\/**\r* \\brief DESCRIPTION\r*\r* \\param[in] .\r* \\param[out] .\r* \\param[in,out] .\r* \\return None.\r*\//g
	:s/$/\/\/! @brief DESCRIPTION\r\/\/! @param[in,out] .\r\/\/! @return None.\r\/\/!/g
endfunction
nmap df :call Doxy_func()<CR>

function! Doxy_argument()
	:s/$/\/\/! /g
endfunction
nmap dc :call Doxy_argument()<CR>


function! ShowAnnotationsHg()
	let line=getline('.')
        ":vnew | r !git annotate #| cut -d '(' -f 2 | cut -d ')' -f 1 | sed 's/\t/ /g' | cut -d ' ' -f 2,3,4
        :vnew | r !git annotate # | cut -d '(' -f 2 | cut -d ')' -f 1 | sed 's/\t/ /g' | sed "s/\(.*\) \(.*\)-\(.*\)-\(.*\) \(.*\):\(.*\)/(\1) \4-\3-\2/g" | sed 's/( /(/g'
	:setlocal nowrap
	:vertical res 36
	:g/^$/d
	call setline('.', line)
	:set syntax=hgannotate
	:windo set scrollbind
endfunction
nmap \aa :call ShowAnnotationsHg() <CR>


function Grep(str)
    :!/home/smotacoe/bin/grepOn . -c++ -p a:str
endfunction
"command! -nargs=1 MyCommand call s:FindFileInCurrentDirectory(myParam)
"command! -nargs=1 grep call s:FindFileInCurrentDirectory(<f-args>)
"nmap \ff: GrepCurrentDirectory pois 


"execute last substitution command
nmap hh :<up> <CR>

" check if there are modified files
nmap mm ::set mod? <CR>

""ctrlp plugin - https://github.com/kien/ctrlp.vim - git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
map \p <C-P><C-\>w
"map <F5> <C-P><C-\>w

""vim-visual-increment - use <C-A> to increment and <C-Z> to decrease
"set nrformats=dec
cnoremap <C-A> <Home>


set laststatus=2
set statusline+=%y

"auto load plugins - pathogen - https://github.com/tpope/vim-pathogen
execute pathogen#infect()
filetype plugin indent on


" put some color for more that 80 caracters per line
"set colorcolumn=81
"let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=23


"vim-signify - https://github.com/mhinz/vim-signify
"vimdiff color 
let g:signify_vcs_list = [ 'git', 'hg' , 'cvs', 'svn' ]
let g:signify_sign_change = '~'
let g:signify_skip_filetype = { 'vim': 1, 'txt': 1, 'tracer': 1  }
highlight DiffAdd           cterm=bold ctermbg=233 ctermfg=blue
highlight DiffDelete        cterm=bold ctermbg=233 ctermfg=red
highlight DiffChange        cterm=bold ctermbg=233 ctermfg=208 "orange
highlight DiffText          cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

map ]] :SignifyToggleHighlight <CR>
"let g:signify_line_highlight=1




let g:tagbar_usearrows = 1
nnoremap \tb :TagbarToggle<CR>



:set showtabline=2
hi TabLine      ctermfg=magenta 	ctermbg=black     	cterm=NONE
hi TabLineFill  ctermfg=red  		ctermbg=black     	cterm=NONE
hi TabLineSel   ctermfg=Blue 	 	ctermbg=lightGreen  	cterm=NONE

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
""show just filename in the buffer
let g:airline#extensions#tabline#fnamemod = ':t'
""show buffer number with the name
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s)'

let g:airline#extensions#tagbar#enabled = 1

"let g:airline_section_b = ['hunks', branch'] 
let g:airline_section_b = '%{getcwd()}'
let g:airline_theme='murmur'


function RunProgram() 
         if &filetype == 'python'        
                 :!python '%:t'
         elseif &filetype == 'cpp'
                 :!clear && ./main
         elseif &filetype == 'sh'
                 :!./'%:t'
         endif
endfunction
nmap rr :call RunProgram() <CR>

function CompileProgram() 
         if &filetype == 'cpp'
                 :!clear && make
         endif
endfunction
nmap make :call CompileProgram() <CR>

"nmap tt :set syntax=tracer <CR>

" Uncomment the following to have Vim jump to the last position when        
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

:noremap  <MiddleMouse> <nop>
:noremap! <MiddleMouse> <nop>


""""""""""""""""""""""
""Amadeus specific
""""""""""""""""""""""
"function! CleanUnbAndUnt()
	":%s/&\n*UNT.*\nUNZ.*\|&\n*''UNT.*\n''UNZ.*//g
	":%s/&\n*UNT.*\|&\n*''UNT.*//g
	":%s/UNB+\(.*\)+\(.*\)+\(.*\)+\(.*\):\(.*\)+\(.*\)+\(.*\)+\(.*\)/UNB+\1+\2+\3+:++\8/g
"endfunction
"nmap \]' :call CleanUnbAndUnt() <CR>


""""""""""""""""""""""
""Mapscape specific
""""""""""""""""""""""
"function! DebugCode()
	":s/$/suspend_for_debug();/g
"endfunction
"nmap \d :call DebugCode()<CR>


function! CleanColoredEcho()
   :%s/[^[:print:]]\[\d\dm//g
   :%s/[^[:print:]](B[^[:print:]]\[m//g
endfunction
nmap <F9> :call CleanColoredEcho() <CR>



""add LOG
function! Log1()
        let s:line=line(".")
        "call append(s:line,"std::cout << \"# \" << __FILE__ << \":\" << __LINE__ << \" : \" << << std::endl;")
        call append(s:line,"std::cout <<  \" : \" <<  << std::endl;")
endfunction
nmap \l1 :call Log1()<CR>


function! Log( word )
        let s:line=line(".")
        call append(s:line,"std::cout << \""  . a:word . ":\\n\" << " . a:word . "  << std::endl;")
endfunction
nnoremap \ll :call Log( '<C-R>=expand( '<cWORD>' )<CR>' )<CR>




"function! Log2()
	"let s:line=line(".")
	"call append(s:line,"MyLogging(\"#scoelho \");")
"endfunction
"nmap \; :call Log2()<CR>

"function! Count( word )
   "redir => nth
   "silent exe '0,.s/' . a:word . '//n'
   "redir => cnt
   "silent exe '%s/' . a:word . '//n'
   "redir END
   "silent exe 's/.*/& ' . matchstr( nth, '\d\+' ) . '/'
   "echo a:word . ': ' . matchstr( nth, '\d\+' ) 
"endfunction
"nnoremap  \c  :call Count( '<C-R>=expand( '<cWORD>' )<CR>' )<CR>

"count number of occurrences of word under cursor
:nmap cou :execute ":%s@\\<" . expand("<cword>") . "\\>\@&@gn"<CR>
:nmap del :execute ":g@\\<" . expand("<cword>") . "\\>\@&@d"<CR>


""""""""""
"" ASML ""
"""""""""
"clear case
"checkout file
nmap co :!ct_co %:p <CR> 
"uncheckout file
nmap un :!ct_unco %:p <CR> 
"see diff with view
nmap \dd :Ctdiff<CR>
"close diff with view
nmap \cd :bd<CR>


let g:clang_dotfile = '.clang'
"let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'



let g:C_UseTool_cmake   = 'yes'
let g:C_UseTool_doxygen = 'yes'


:nnoremap grep :grep -r <cword> <CR>


noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
noremap <silent> <C-Tab> :vs<CR>
command Vtv :botright vert term 
command Vth :bot term
cnoreabbrev  Vs botright vertical split 
cnoreabbrev  Vh bot split 


function! RemoveBlankLines()
   :g/^$/d
endfunction
nmap rl :call RemoveBlankLines()<CR>


