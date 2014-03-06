" Configuration file for Vim
" by Elliot Penson
"
" To load Vim without using this .vimrc file, use:
"   vim -u NORC


" Vundle
" -------------------------------------------------

set rtp+=~/.vim/bu

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" color schemes
Bundle 'chriskempson/base16-vim'
Bundle 'larssmit/vim-getafe'
Bundle 'vim-scripts/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/wombat256.vim'
Bundle 'zaki/zazen'
Bundle 'Pychimp/vim-luna'

" langs
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'

" plugins
Bundle 'kovisoft/slimv'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
" - following four Bundle calls constitute SnipMate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/ZoomWin'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'bling/vim-airline'

filetype plugin indent on     " required

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles

" Interface
" -------------------------------------------------

set laststatus=2 " show status line
set noshowmode   " remove default mode indicator

set ruler        " show the cursor position
set number       " show line numbers

set title        " show info in the window title
set titlestring=EJNP:\ %F " set screen title

set confirm      " start a dialog when a command fails (here when quit command fails)

" searching
set hlsearch     " highlight matches
set incsearch    " incremental searching
set ignorecase   " ignore case when searching
set smartcase    " ...unless they contain at least one capital letter

" map leader to a comma
let mapleader = ","
let g:mapleader = ","

" spell checking - <leader>ss will toggle
map <leader>ss :setlocal spell! spelllang=en_us<cr>
" next incorrectly spelled word
map <leader>sn ]s
" previous incorrectly spelled word
map <leader>sp [s
" add word under cursor as a good word
map <leader>sa zg
" find spelling suggestion for word under cursor
map <leader>s? z=

" tab window switch
map <Tab> <C-W>w

" Files and backup
" -------------------------------------------------

" turn backup off
set nobackup
set nowb
set noswapfile

" Formatting/Indentation
" -------------------------------------------------

" whitespace
set expandtab             " convert tabs to spaces
set tabstop=4             " 1 tab == 4 spaces
set shiftwidth=4          " autoindent with 4 spaces
set list                  " Show invisible characters
set listchars=""          " reset listchars
set listchars=tab:\ \     " display tab as two spaces,
set listchars+=trail:.    " trailing whitespace as dots
set listchars+=extends:>  " wrap character
set listchars+=precedes:<

" don't wrap lines
set nowrap

" automatically type newlines/endmarkers
set formatoptions+=r

" set default encoding to UTF-8
set encoding=utf-8

" Colors and Fonts
" -------------------------------------------------

" turn on syntax highlighting allowing local overrides
syntax enable

" attempt to make termal have 256 colors
if !has ("gui_running")
    set t_Co=256
endif

" set color scheme
set background=dark
color base16-default

" Movement
" -------------------------------------------------

" disable arrow keys in insert mode (habit breaking)
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>
