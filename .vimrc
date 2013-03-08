" Configuration file for Vim
" 
" By Elliot Penson
"
" To load vim without using this .vimrc file, use:
"   vim -u NORC


"Options
"-------------------------------------------------

:syntax on        "Turn on syntax highlighting
:set laststatus=2 "Always show status line

:set autowrite    "Automatically write a file when leaving a modified buffer
:set confirm      "Start a dialog when a command fails (here when quit command fails)
:set tabstop=4    "Number of spaces a TAB in the text stands for

:set shiftwidth=4 "Number of spaces used for each step of (auto)indent
:set hlsearch     "Have vim highlight the target of a search
:set incsearch    "Do incremental searching

:set ruler        "Show the cursor position all the time
:set number       "Show line numbers
:set ignorecase   "Ignore case when searching

:set title        "Show info in the window title
:set titlestring=EJNP:\ %F   
    "Automatically set screen title

:set noautoindent
:set nosmartindent
:set nocindent

"Indent only if the file is of type cpp,c,java,sh,pl,php,asp
:au FileType cpp,c,java,sh,pl,php,asp  set autoindent
:au FileType cpp,c,java,sh,pl,php,asp  set smartindent
:au FileType cpp,c,java,sh,pl,php,asp  set cindent

"Wrapping long lines
:set wrapmargin=4   "Margin from the right in which to break a line. Set this value to 4 or 5
:set textwidth=70   "Line length above which to break a line

"Automatically type newlines/endmarkers
:set formatoptions+=r

"Abbreviations
"-------------------------------------------------

"Block comment
abbr com /**<CR><CR>/<esc>kA

"Java appreviations
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

"Put catagory here
"-------------------------------------------------

"Converting tabs to spaces
:set expandtab

"Set the colorscheme and font for MacVim (or other gui vim)
if has ("gui_running")
    colorscheme Slate
    set guifont=Anonymous\ Pro:h12
    "set guifont=Ubuntu\ Mono:h11
    "set guifont=Menlo:h11
endif

"Java specific settings
let java_ignore_javadoc=1 "stops special javadoc comment highlighting
let java_comment_strings=1
let java_highlight_java_lang_ids=1 "highlights java.lang.* identifiers

"Disable arrow keys in insert mode (habit breaking)
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>


