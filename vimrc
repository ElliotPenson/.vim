" vimrc
" @author Elliot Penson

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
call plug#end()

set incsearch  " incremental searching
set ignorecase " ignore case when searching
set smartcase  " ...unless search contains capital

" Turn on the spell checker. Disable with :set nospell.
"set spell

set textwidth=80
set formatoptions+=t  " auto word wrap using textwidth
set formatoptions-=l  " ...even lines already over the limit

syntax enable
filetype plugin indent on
colorscheme material

let g:ctrlp_custom_ignore = '\v[\/](\.git|vendor|venv)$'
