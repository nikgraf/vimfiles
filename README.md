# Vim-Files

## Usage

You need a Vim version with Python and Ruby support.
* Vim Macports:     sudo port install vim +python +ruby
* MacVim Macports:  sudo port install MacVim +python +ruby

Then 'cd' into the repo and run this commands to get all the submodules

    git submodule init
    git submodule update

Setup correct Paths via this commands

    ln -s ~/.vim/vimrc ~/.vimrc

Add this link manually

    ln -s ../../../pyflakes/ bundle/pyflakes-vim/ftplugin/python/pyflakes

## Symlinks

    ln -s bundle/vim-pathogen/autoload/ autoload
    ln -s ../../../pyflakes/ bundle/pyflakes-vim/ftplugin/python/pyflakes
