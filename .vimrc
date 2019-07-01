set encoding=utf-8              "encoding
set nocompatible                
filetype off
let mapleader = " "             "leader
syntax enable

set mouse=a

set visualbell
set hidden                      "allows working with unsaved buffers
set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=140

set exrc
set secure

set number
set relativenumber

set smartcase
set hlsearch
set incsearch
set gdefault

set background=dark

set wildmenu                    "completion menu
set wildmode=longest:full,full  "completion menu

set scrolloff=3                 "keep cursor 3 lines away from window border
set tags=./tags;/               "set tags location

let &path.="src/include,/usr/include/AL,"

autocmd FocusLost * :wa
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

colorscheme hybrid

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ycm#enabled = 1

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"
" let g:ycm_server_python_interpreter = "/usr/bin/python3"

nnoremap <tab> %
vnoremap <tab> %

vnoremap <C-c> "+y
"map <C-p> "+P
nnoremap <C-,> :bp
nnoremap <C-.> :bn

nnoremap <silent> <leader><space> :nohlsearch<CR>
filetype plugin indent on

" some xml shit
autocmd FileType xml nnoremap <leader>; i<!--<Space><Space>--><Esc>3hi
