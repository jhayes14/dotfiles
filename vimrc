syntax enable
colorscheme monokai

""vim-plug section""
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lervag/vimtex'
Plug 'tpope/vim-obsession'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'

call plug#end()

filetype plugin indent on
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set number
