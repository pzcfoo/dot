set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.local/share/nvim/site/pack/LanguageClient-neovim/start/LanguageClient-neovim
let &packpath = &runtimepath
source ~/.vimrc

" nvims very own virtual env
let g:python3_host_prog = '/home/paul/_work/virtualenvs/neovim-venv/bin/python'

" deocomplete
let deoplete#enable_at_startup = 1
let g:loaded_python_provider = 1

 " ack.vim use ag
 let g:ackprg = 'ag -f -U -p $HOME/.ignore --vimgrep'

