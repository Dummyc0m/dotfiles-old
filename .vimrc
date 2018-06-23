scriptencoding utf-8
set encoding=utf-8
" Great Practical Ideas for Computer Scientists
" Sample .vimrc file

set shell=/bin/bash

" Ensure that we are in modern vim mode, not backwards-compatible vi mode
set nocompatible
set backspace=indent,eol,start
filetype off " required for Vundle plugin manager

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vim-c0 plugin on Github repo
" Plugin 'cmugpi/vim-c0'

" glsl
Plugin 'tikhomirov/vim-glsl'

" rust
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'


call vundle#end()

" rust
let g:rustfmt_autosave = 1

" Helpful information: cursor position in bottom right, line numbers on
" left
set ruler
set number

"Enable filetype detection and syntax hilighting
syntax on
filetype on
filetype indent on
filetype plugin on

" Indent as intelligently as vim knows how
set smartindent

" Show multicharacter commands as they are being typed
set showcmd
set nocompatible  "Kill vi-compatibility
set t_Co=256 "256 color

" Indent 4 spaces
set tabstop=4  "4 space tabs
set shiftwidth=4  "4 space shift
set softtabstop=4  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines

set showmatch  "Highlight matching braces

set ruler  "Show bottom ruler

set equalalways  "Split windows equal size

set formatoptions=croq  "Enable comment line auto formatting

set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately

set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" ColorColumn
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" which should work like this:
" ...................................................................................

" highlight tabs and trailing spaces
" exec "set listchars=tab:-,trail:.,nbsp:~"
set listchars=tab:>-,trail:$,extends:>,precedes:<,nbsp:~
set showbreak=\\ "
set list

" remap colon
nnoremap ; :
nnoremap : ;

" Syntax highlighting and stuff
syntax on
filetype plugin indent on

:color slate
