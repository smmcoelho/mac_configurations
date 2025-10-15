
colorscheme wombat256 " file must be present in /.vim/colors

set number " view line number
highlight LineNr ctermfg=darkgrey "set color of line number
highlight CursorLineNr cterm=NONE ctermbg=darkgrey


set cursorline
highlight CursorLine cterm=NONE ctermbg=darkgrey " set cursorline color

"set modeline 
syntax on
filetype plugin indent on
set noerrorbells visualbell t_vb= " disable bell
set hlsearch " highlight search

"map ignorecase toggle
nmap \ic :set ignorecase! ignorecase? <CR>
set ic "to search with case insensitive

set hidden "to move in the buffer without saving the files

"reload file content automatically
set autoread

"set 4 spaces insteadof tab TODO: check the need of the following 4 lines
"set tabstop=3
"set softtabstop=0 noexpandtab
"set shiftwidth=3
"set tabstop=6 softtabstop=0 expandtab shiftwidth=3 smarttab


"to remove windows end-line chars without editing the file
nnoremap dos :e ++ff=dos<CR>
nnoremap un :e ++ff=unix<CR>



""""""""""""""""""""""""""""""""
""""" syntax highlight  """"""""
""""""""""""""""""""""""""""""""

autocmd BufEnter *.trace,*.log* setf tracer_tv
autocmd BufEnter *.cql,*.sql setf sql_tv
autocmd BufEnter *.h,*.hpp,*.c,*.cpp,*.bcmd setf cpp

""""""""""""""""""""""
""""" plugins """"""""
""""""""""""""""""""""

"pathogen to install plugins - https://github.com/tpope/vim-pathogen
execute pathogen#infect()


" vim look - vim-airline - https://github.com/vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
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

" themes for airline - https://github.com/vim-airline/vim-airline-themes
let g:airline_theme='murmur'


""NERD Commenter - https://github.com/preservim/nerdcommenter
filetype plugin on
vmap \\ \ci 
map \\ \ci
vmap \] \cn 
map \] \cn
map \= \cc
vmap\= \cc
map \- \cm
vmap\- \cm
let g:NERDCustomDelimiters = {  'text': { 'left': '#' }, 'ddf': { 'left': '#' } , 'plantuml': { 'left': "'" }, 'sql_tv': { 'left': "--" }  }


""NerdTree - https://github.com/preservim/nerdtree
map \q :NERDTreeToggle<CR>
map \w :NERDTreeToggle<CR> :set nu ! <CR> :SignifyToggle <CR>
map \e :set nu <CR> :NERDTreeToggle<CR>

""ctrlp plugin - https://github.com/kien/ctrlp.vim - git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"map \p <C-P><C-\>w
map \p <C-P><C-\>w
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

""""""""""""""""""""""""
"""" key mapping """""""
""""""""""""""""""""""""
" set qq to quit without need to :q Enter
nmap qq :qa<CR>
" set ww to save without need to :w Enter
nmap ww :w<CR>
" " set we to save without need to :w Enter
nmap w1 :w!<CR>
" " set qa to quit withou saving no need to :q! Enter
nmap qa :qa!<CR>
" " set wq to save without need to :wq Enter
nmap wq :wq<CR>

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

" set pl to past into next line
:nmap pl :pu<CR>

""fold block
vmap \f :fold<CR>
""expand block
map \g zo<CR>

""create new empty buffer [No Name]
map \n :enew<CR>

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

"execute last substitution command
nmap hh :<up> <CR>

"" map reload vimrc file without closing vim
:map sz :source ~/.vimrc <CR>





""  see tabs  ""
:map \t :set listchars=space:.,eol:$,tab:>..,trail:+ \|set list! list? <CR>

""save files without trailing whitespaces
autocmd BufWritePre *.sql,*cql,* :%s/\s\+$//e

"highlight \t and space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t\|[^\t]\zs\t\+/

"highlight ++
highlight SpecialKey ctermbg=blue guibg=blue
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

""  end of see tabs  ""



function! GitAnnotations()
	let line=getline('.')
        ":vnew | r !git annotate #| cut -d '(' -f 2 | cut -d ')' -f 1 | sed 's/\t/ /g' | cut -d ' ' -f 2,3,4
        :vnew | r !git annotate # | cut -d '(' -f 2 | cut -d ')' -f 1 | sed 's/\t/ /g' | sed "s/\(.*\) \(.*\)-\(.*\)-\(.*\) \(.*\):\(.*\)/(\1) \4-\3-\2/g" | sed 's/( /(/g'
	:setlocal nowrap
	:vertical res 36
	:g/^$/d
	call setline('.', line)
	:set syntax=gitannotaion
	:windo set scrollbind
endfunction
nmap \aa :call GitAnnotations() <CR>