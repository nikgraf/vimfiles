if has("gui_macvim")
    " key binding for Command-T to behave properly
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
elseif has("X11")
    map <M-t> :CommandT<CR>
endif
