let mapleader = " "

set encoding=utf-8
set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

colorscheme hybrid
set background=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ycm#enabled = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

set noshowmode
set laststatus=2

syntax enable
set visualbell

set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

set smartcase
set hlsearch
set incsearch

set wildmenu

set scrolloff=3

nnoremap <tab> %
vnoremap <tab> %

nnoremap <silent> <leader><space> :nohlsearch<CR>
