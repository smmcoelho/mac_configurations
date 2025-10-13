" Vim syntax file
" Maintainer: Sergio Coelho
" Latest Revision: 18 April 2014

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword log TRC_INFO

hi def link log		PreProc


let b:current_syntax = "hiLight"
