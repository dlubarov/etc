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

" comment/uncomment
au FileType haskell,vhdl,ada let b:comment_leader = '-- '
au FileType vim let b:comment_leader = '" '
au FileType c,cpp,java let b:comment_leader = '// '
au FileType sh,make let b:comment_leader = '# '
au FileType tex let b:comment_leader = '% '
noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>

" resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" set gvim fonts
if has("gui_running")
  set guifont=Source\ Code\ Pro:h14
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
set background=light
colorscheme solarized
