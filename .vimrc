set encoding=utf-8
set nocompatible 
filetype off

syntax enable
set visualbell

set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber
set colorcolumn=150

set smartcase
set hlsearch


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'wombat'

nnoremap <tab> %
vnoremap <tab> %

