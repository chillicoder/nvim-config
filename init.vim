" custom init.vim/.vimrc

let mapleader=" "

set noswapfile
set nobackup

set autoread               " automatically reloads file if changed outside
set hidden                 " change buffer without saving

set encoding=utf-8
set fileformats=unix,mac,dos

set hlsearch
set incsearch
set infercase
set smartcase

set colorcolumn=80
set cursorline
set signcolumn=yes
set termguicolors
set guicursor=

set expandtab
set history=750
set showmode
set nostartofline          " do not move cursor back to start of line when moving
set nowrap

set number
set nuw=5
set relativenumber

set ruler
set scrolloff=4
set shiftwidth=4
set showmatch
set smartindent
set splitbelow             " split new window below current window
set splitright             " split new window right of the current one
set tabstop=4 softtabstop=4

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=3

" Config section

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlighthing
syntax enable

" improving redrawing smoothness
set lazyredraw      " don't redraw while executing macros

call plug#begin("~/.local/share/nvim/plugged")
Plug 'sheerun/vim-polyglot'

Plug 'scrooloose/nerdtree'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-commentary'

" Plug 'w0rp/ale'

Plug 'ryanoasis/vim-devicons'

" color schemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'agude/vim-eldar'
Plug 'altercation/vim-colors-solarized'
Plug 'gruvbox-community/gruvbox'
Plug 'jnurmine/Zenburn'
Plug 'rakr/vim-one'
Plug 'tomasiser/vim-code-dark'

" log files highlighthing
Plug 'mtdl9/vim-log-highlighting'

" A light and configurable statusline/tabline plugin
Plug 'itchyny/lightline.vim'

call plug#end()

" enable the matchit.vim shipped with vim
runtime! macros/matchit.vim

" disable neovim python2/nodejs provders
let g:loaded_python_provider=1
let g:loaded_node_provider=1

" NERDTree
let NERDTreeShowHidden=1 " Always show dot (hidden) files
let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file
map <Leader>p :NERDTreeFind<CR> " Leader + p to open NERDTree
map <Leader>P :NERDTreeToggle<CR> " Leader + P to Toggle NERDTree

au VimEnter * NERDTree

" Linting with ALE
" let g:ale_linters = {
"       \  'python': ['flake8','pylint'],
"       \  'javascript': ['eslint'],
"       \  'ruby': ['standardrb']
"       \}

" color schemes
if has('gui_running')
  set background=light
  colorscheme solarized
else
  set background=dark
  colorscheme gruvbox
endif

" vim: set ft=vim:
