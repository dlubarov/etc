" use vim defaults
set nocompatible

" highlighting
syntax on
set hlsearch
set showmatch

" indentation
filetype indent on
filetype plugin on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" search options
set incsearch
set ignorecase
set smartcase

" highlight the current line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white

" ruler and status line
set ruler
set laststatus=2

" keep 3 lines when scrolling
set scrolloff=3

" preserve cursor column
set nostartofline

" no backups (use a VCS...)
set nobackup

" update console title
set title

" nifty command completion
set wildmenu

" lenient backspace
set backspace=indent,eol,start

" confirmation dialog
set confirm

" don't beep at me!
set visualbell

" always enable mosue
set mouse=a

" make Y behave like D
map Y y$

" remember more history
set history=100
