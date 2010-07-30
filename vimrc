"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256

    "setting colorschema from http://github.com/twerth/dotfiles/blob/master/etc/vim/colors/ir_black.vim
    colorscheme ir_black
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

"load ftplugins and indent files
"http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype plugin on
filetype indent on
