" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ========== General Config =========

set number	          	"Line numbers are good
set backspace=indent,eol,start	"Allow backspace in insert mode
set history=1000		"Store lots of :cmdline history
set showcmd			"Show incomplete cmds down the bottom
set showmode			"Show current mode down the bottom
set gcr=a:blinkon0		"Disable cursor blink
set visualbell			"No sounds
set autoread			"Reload files changed outside vim
set ruler			"show the ruler at the bottom
" This makes vim act like all other editorsm buffers can exist
" in the background without being in a window.
" https://items.sjbach.com/319/configuring-vim-right
set hidden

" turn on syntax highligthing
syntax on

" ========== Indentation ==========  

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set wrap		"Wrap lines
set linebreak		"Wrap lines at convenient points

" ========== Completion ========== 

set wildmode =list:longest
set wildmenu			"enable ctrl-p and ctrl-n to scroll through matches
set wildignore=*.o,*.obj,*~	"stuff toignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"========== Scrolling ==========

set scrolloff=8			"Start scrolling when we 're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Support for github  flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown
" with .md extensions

augroup markdown
	au!
	au BufNewFile,BufRead *.md, *.markdown setlocal filetype=ghmarkdown
augroup END

