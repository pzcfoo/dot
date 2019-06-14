
" VIM Configuration File

set rnu
set nu

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

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
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

" Mappings
nnoremap <C-L> :nohl<CR><C-L>

" Finding Files:
" search down into subfolders
" provides tab-completion
set path +=**
" Tab complete
" set wildmenu

" Leader
let mapleader = ","
nmap <leader>nt :NERDTree
nmap <Leader>ag :Ack!<Space>

" easier window navigation
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
" packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
