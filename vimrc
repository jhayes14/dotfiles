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
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'davidhalter/jedi-vim'

call plug#end()

filetype plugin indent on
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set number
:set showmatch
:set showcmd 
:set cursorline          " highlight current line
:set wildmenu            " visual autocomplete for command menu
:set incsearch           " search as characters are entered
:set hlsearch            " highlight matches
:set foldenable          " enable folding
:set foldlevelstart=10   " open most folds by default
:set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
:set foldmethod=indent   " fold based on indent level
" highlight last inserted text
nnoremap gV `[v`]

" buftabline settings
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>


" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" When searching try to be smart about cases 
:set smartcase
