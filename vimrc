"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds in the status line
set showmode    "show current mode in the status line

set laststatus=2 " always show the status line

set mouse=a " have the mouse enabled all the time
set ttymouse=xterm2 " TODO magic stuff to enable the mouse

set number      "add line numbers
set showbreak=... "characters showed if when a line is wrapped

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    "setting colorschema from http://github.com/twerth/dotfiles/blob/master/etc/vim/colors/ir_black.vim
    colorscheme ir_black
  
    "starting NERDTree
    autocmd VimEnter * NERDTree
    " NerdTree settings
    let NERDTreeIgnore=['\~$', '\.swp$', '\.pyc$']
else
    "CSApprox http://www.vim.org/scripts/script.php?script_id=2390
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1
endif

"necessary on some Linux distros for pathogen to properly load bundles
"also see exlpenation http://www.vim.org/scripts/script.php?script_id=2332
filetype off

"load pathogen managed plugins
"this is necessary to load the bundles in bundle folder
call pathogen#runtime_append_all_bundles()

"load ftplugins and indent files (detecting filetype)
"http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype on
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on
