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
call plug#end()

set incsearch  " incremental searching
set ignorecase " ignore case when searching
set smartcase  " ...unless search contains capital

" Turn on the spell checker. Disable with :set nospell.
set spell

set textwidth=80
set formatoptions+=t

syntax enable
if isdirectory(g:plugs['material.vim'].dir)
  colorscheme material
endif
