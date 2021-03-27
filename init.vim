" initial configuration

set textwidth=80      " Nvim will auto-break long lines if it-s more than 80
set encoding=utf-8

" Plugin section
call plug#begin("~/.local/share/nvim/plugged")

Plug 'scrooloose/nerdtree'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-commentary'

Plug 'w0rp/ale'

Plug 'ryanoasis/vim-devicons'

" color schemes
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasiser/vim-code-dark'
Plug 'agude/vim-eldar'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'

" log files highlighthing
Plug 'mtdl9/vim-log-highlighting'

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
" set bs=2		" same as :set backspace=indent,eol,start
set mousehide
set number            " show line numbers
set nuw=5
set wrap
set hidden		        " change buffer without saving
set ruler
set scrolloff=3		    " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread		      " automatically reloads file if changed outside
set splitbelow		    " split new window below current window
set splitright		    " split new window right of the current one
set nojoinspaces	    " use just one space to join strings
set formatoptions+=j	" delete comment when joining commented lines
set nostartofline	    " do not move cursor back to start of line when moving

" tab/indentation configuration
set tabstop=2           " number of spaces to replace TAB with
set softtabstop=2
set shiftwidth=2        " the number of spaces to be used when using
set expandtab           " Use spaces instead of tabs
set smarttab
set autoindent          " copy the indent from the previous line when pressing ENTER
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

nnoremap <CR> :noh<CR>

" Indent with TAB
nnoremap <Tab> >>
nnoremap <S-Tab> << " TODO: 
vnoremap <Tab> >
vnoremap <S-Tab> <  " TODO:

" backup and swap settings
set nobackup
set directory=~/.config/nvim/tmp

" enable the matchit.vim shipped with vim
runtime! macros/matchit.vim

" disable neovim python2/nodejs provders
let g:loaded_python_provider=1
let g:loaded_node_provider=1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" NERDTree
let NERDTreeShowHidden=1 " Always show dot (hidden) files
let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file
map <Leader>p :NERDTreeFind<CR> " Leader + p to open NERDTree
map <Leader>P :NERDTreeToggle<CR> " Leader + P to Toggle NERDTree

" Linting with ALE
let g:ale_linters = {
      \  'python': ['flake8','pylint'],
      \  'javascript': ['eslint'],
      \  'ruby': ['standardrb']
      \}

" color schemes
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  set background=dark
  colorscheme one
endif

" vim: set ft=vim:
