" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Dark background
set background=dark

" Change bell
set visualbell

" Add numbers to each line on the left-hand side.
set number

" INDENT
set autoindent
set smartindent
set smarttab
" Use space characters instead of tabs.
set expandtab
" Auto indent 4 spaces
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
set softtabstop=4

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

