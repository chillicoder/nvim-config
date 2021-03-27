" initial configuration

set textwidth=80
set encoding=utf-8

" Plugin section
call plug#begin("~/.local/share/nvim/plugged")

call plug#end()

" Config section

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlighthing
syntax enable

" improving redrawing smoothness
set ttyfast
set lazyredraw

" interface and basic behaviour
set nocompatible
set bs=2		" same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden		" change buffer without saving
set ruler
set scrolloff=3		" lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread		" automatically reloads file if changed outside
set splitbelow		" split new window below current window
set splitright		" split new window right of the current one
set nojoinspaces	" use just one space to join strings
set formatoptions+=j	" delete comment when joining commented lines
set nostartofline	" do not move cursor back to start of line when moving

" tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmode=longest:full,full
set wildmenu
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log,*.zip,*.so,*/tmp/*
set wildignore+=log/**,tmp/**,*DS_Store*,.hg

" search pattern highligth/incremental
set ignorecase
set smartcase
set infercase
set showmatch
set hlsearch
set incsearch

" backup and swap settings
set nobackup
set directory=~/.config/nvim/tmp

" enable the matchit.vim shipped with vim
runtime! macros/matchit.vim

" disable neovim python2/nodejs provders
let g:loaded_python_provider=1
let g:loaded_node_provider=1

" vim: set ft=vim:
