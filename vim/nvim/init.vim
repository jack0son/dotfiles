" load current vimrc file
" execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

