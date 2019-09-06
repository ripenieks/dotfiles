set encoding=utf-8              "encoding
set nocompatible                
filetype off
let mapleader = " "             "leader
syntax enable
set autoindent
set undolevels=1000

set nowrap

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
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'

call vundle#end()

colorscheme hybrid

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ycm#enabled = 1

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"
" let g:ycm_server_python_interpreter = "/usr/bin/python3"
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_max_diagnostics_to_display = 100

" NERDTree stuff
" hotkey to open it
map <silent> <C-n> :NERDTreeToggle<CR>
" start it on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

 "nnoremap <C-m> :TlistToggle<CR>

nnoremap <tab> %
vnoremap <tab> %

vnoremap <C-c> "+y
map <C-p> "+P
"previous buffer
nnoremap <leader>, :bp<CR>
"next buffer
nnoremap <leader>. :bn<CR>
"same thing but with control arrow keys
noremap <S-Left> :bp<CR>
noremap <S-Right> :bn<CR>

"unbound arrow keys so i stop being a pleb
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

map <leader>]] :vsp<CR><C-w>w:exec("tag ".expand("<cword>"))<CR>

nnoremap <silent> <leader><space> :nohlsearch<CR>

nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

filetype plugin indent on

" some xml shit
autocmd FileType xml nnoremap <leader>; i<!--<Space><Space>--><Esc>3hi
