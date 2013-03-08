" Configuration file for Vim
" 
" By Elliot Penson
"
" To load vim without using this .vimrc file, use:
"   vim -u NORC


"Interface
"-------------------------------------------------

set laststatus=2 "Always show status line

set ruler        "Always show the cursor position
set number       "Show line numbers

set title        "Show info in the window title
set titlestring=EJNP:\ %F "Automatically set screen title

set confirm      "Start a dialog when a command fails (here when quit command fails)

set ignorecase   "Ignore case when searching
set incsearch    "Do incremental searching

"Set up map leader for extra key combinations
let mapleader = ","
let g:mapleader = ","

"Spell checking - ,ss will toggle
map <leader>ss :setlocal spell! spelllang=en_us<cr>

"Shortcuts using <leader>
"next incorrectly spelled word
map <leader>sn ]s
"previous incorrectly spelled word
map <leader>sp [s
"add word under cursor as a good word
map <leader>sa zg
"find spelling suggestion for word under cursor
map <leader>s? z=

"Files and backup
"-------------------------------------------------

"Automatically write a file when leaving a modified buffer
set autowrite

"Turn backup off (I use git/mercurial instead)
set nobackup
set nowb
set noswapfile

"Formatting/Indentation
"-------------------------------------------------

"Convert tabs to spaces
set expandtab

"1 tab == 4 spaces
set shiftwidth=4
set tabstop=4 
 
"Indent only if the file is of type cpp,c,java,sh,pl,php,asp
set noautoindent
set nosmartindent
set nocindent

au FileType cpp,c,java,sh,pl,php,asp  set autoindent
au FileType cpp,c,java,sh,pl,php,asp  set smartindent
au FileType cpp,c,java,sh,pl,php,asp  set cindent

"Wrap lines
set wrap 

"Automatically type newlines/endmarkers
set formatoptions+=r

"Abbreviations
"-------------------------------------------------

"javadoc block comment
abbr com /**<CR><CR>/<esc>kA

"Java appreviations (taken from the vim wikia)
abbr psvm public static void main(String[] args) {<CR>}<esc>O
abbr sysout System.out.println("");<esc>2hi
abbr sop System.out.println("");<esc>2hi
abbr syserr System.err.println("");<esc>2hi
abbr sep System.err.println("");<esc>2hi

abbr forl for (int i = 0; i < ; i++) {<esc>7hi
abbr tryb try {<CR>} catch (Exception ex) {<CR> ex.printStackTrace();<CR>}<esc>hx3ko
abbr const public static final int

abbr ctm System.currentTimeMillis()
abbr slept try {<CR> Thread.sleep();<CR>}<esc>hxA catch(Exception ex) {<CR> ex.printStackTrace();<CR>}<esc>hx3k$hi

"Colors and Fonts
"-------------------------------------------------

"Turn on syntax highlighting
:syntax on

"Set the colorscheme and font for MacVim (or other gui vim)
if has ("gui_running")
    colorscheme Slate
    set guifont=Anonymous\ Pro:h12
    "set guifont=Menlo:h11
endif

"Movement
"-------------------------------------------------

"Disable arrow keys in insert mode (habit breaking)
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>

"Misc
"-------------------------------------------------

"Java specific settings
let java_ignore_javadoc=1 "stops special javadoc comment highlighting
let java_comment_strings=1
let java_highlight_java_lang_ids=1 "highlights java.lang.* identifiers

