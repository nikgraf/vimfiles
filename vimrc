"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

"turn on syntax highlighting
syntax on

set backupdir=~/.vim/backupfiles,/var/tmp,/tmp,. " Backup directory
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.   " Swapfile directory


set showcmd     "show incomplete cmds in the status line
set showmode    "show current mode in the status line

set laststatus=2 " always show the status line

set mouse=a " have the mouse enabled all the time
set ttymouse=xterm2 " TODO magic stuff to enable the mouse

set relativenumber " show relative line numbers
set showbreak=... "characters showed if when a line is wrapped
set ruler " display cursor position in status line

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set ignorecase  "ignorecase for search
set smartcase   "case-sensitive if there are upper-case letters in the search pattern
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    set guioptions-=T "remove the tool bar

    "setting colorschema from http://github.com/twerth/dotfiles/blob/master/etc/vim/colors/ir_black.vim
    colorscheme ir_black

    if has("gui_mac") || has("gui_macvim")
        " Mapping of Command-T MUST happen in ~/.gvimrc

        set invmmta " make Mac's Option key behave as the Meta key
    endif
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

"http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins (ftplugins)
filetype indent on

"indent settings
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent

" python files are indented by four
autocmd FileType python set softtabstop=4 shiftwidth=4


"removing trailing whitespace on writing a file
autocmd BufWritePre * :%s/\s\+$//e

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.pyc,*.o,*.obj,*~ "stuff to ignore when tab completing

"toogle BufExplorer, NERDTree, Taglist
map <F2> :BufExplorer<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TlistToggle<CR>
map <F8> :!ctags -R *<CR>

" NerdTree settings
let NERDTreeIgnore=['\~$', '\.swp$', '\.pyc$']

" Taglist option
let Tlist_Exit_OnlyWindow = 1 " exit if taglist is last window open
let Tlist_Show_One_File = 1   " Only show tags for current buffer

