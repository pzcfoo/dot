" VIM Configuration File
set rnu
set nu
set signcolumn=yes
set hidden

" parenthesis braces closing pair gets highlighted
set showmatch 

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" Opens most folds by default
set foldlevelstart=5
set foldmethod=indent

" Don't redraw all the time
set lazyredraw

" Attempt to determine the type of a file
" Use this to allow intelligent auto-indenting
filetype indent plugin on
filetype plugin on

" Show partial commands in the last line of the screen
set showcmd
set visualbell
set cmdheight=3

let mapleader = ","
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
" window navigation
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

nmap <leader>nt :NERDTree
nmap <Leader>ag :Ack!<Space>

silent! helptags ALL
