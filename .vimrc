set nocompatible
filetype off
syntax on
filetype plugin indent on

let mapleader=","
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8

" No swap or backup
set nobackup
set nowb
set noswapfile

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set expandtab
set noshiftround
set ai
set si

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" Mode up/down editor lines instead of lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Rendering
set ttyfast

" Status
set laststatus=2

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch

" Show invisibles
set lcs=tab:»\ ,trail:·
set list
highlight Specialkey ctermfg=8 guifg=DimGrey

" Use system clipboard
set clipboard=unnamed

" Mappings
inoremap jk <esc>
nnoremap <leader>w :w<esc>
nnoremap <leader>y :%y<cr>
