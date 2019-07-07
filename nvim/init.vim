set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.local/share/nvim/site/pack/LanguageClient-neovim/start/LanguageClient-neovim
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.local/share/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug('Shougo/deoplete.nvim')
Plug('mileszs/ack.vim')
Plug('junegunn/fzf')
Plug('scrooloose/nerdtree')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('bfrg/vim-cpp-modern')

call plug#end()

" nvims virtual env
let g:python3_host_prog = '/home/paul/work/virtualenvs/neovim-venv/bin/python'

" deocomplete
let deoplete#enable_at_startup = 1
let g:loaded_python_provider = 1

" ack.vim use ag
let g:ackprg = 'ag -f -U -p $HOME/.ignore --vimgrep'

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
