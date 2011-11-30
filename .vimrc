" use vim defaults
set nocompatible

" highlighting
syntax on
set hlsearch

" matching brackets
set showmatch
set mat=2

" indentation
filetype indent on
filetype plugin on
set autoindent
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
"set statusline=%t%m\ %y\ [%{&fenc}]%=%l/%L\ (%P)\ %c
set showcmd

" what Vim user would want a silly toolbar?
set guioptions-=T
set guioptions-=m " menu

" keep several lines when scrolling
set scrolloff=5

" preserve cursor column
set nostartofline

" no backups (use a VCS...)
set nobackup
set nowritebackup
set noswapfile

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
"map Y y$

" remember more history
set history=500

" automatically read outside changes
set autoread

" emacs navigation for command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" emacs-style nav in insert mode
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" search with space
map <space> /
map <c-space> ?

" resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" for vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
" I'm not a fan of folding...
let g:Tex_FoldedSections=''
let g:Tex_FoldedEnvironments=''
let g:Tex_FoldedMisc=''

" set gvim fonts
if has("gui_running")
  if has("gui_gtk2")
    "set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" pathogen
call pathogen#infect()

" color scheme
if !has("gui_running")
  set t_Co=256
  let g:solarized_termcolors=256
endif
set background=dark
colorscheme solarized
