set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.local/share/nvim/site/pack/LanguageClient-neovim/start/LanguageClient-neovim
let &packpath = &runtimepath
source ~/.vimrc

" vim plug
call plug#begin('~/.vim/plugged')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
    
    Plug 'deoplete-plugins/deoplete-jedi'

    Plug 'mileszs/ack.vim'

call plug#end()

" nvims very own virtual env
let g:python3_host_prog = '/home/foo/work/virtualenvs/neovim-venv/bin/python'

" deocomplete
let deoplete#enable_at_startup = 1
let g:loaded_python_provider = 1

 " ack.vim use ag
 let g:ackprg = 'ag -f -U -p $HOME/.ignore --vimgrep'

