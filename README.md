# Vim-Files

## Vim

You need a Vim version with Python and Ruby support.

### Macports:

    sudo port install vim +python +ruby
    sudo port install MacVim +python +ruby

## Preconditions

### JSLint

To use JSLint you need Spidermonkey.

#### Macports

    sudo port install spidermonkey

#### apt-get

    sudo apt-get install spidermonkey-bin

## Setup

Then 'cd' into the repo and run this commands to get all the submodules

    git submodule init
    git submodule update

Setup correct Paths via this commands

    ln -s ~/.vim/vimrc ~/.vimrc

Add this link manually

    ln -s ../../../pyflakes/ bundle/pyflakes-vim/ftplugin/python/pyflakes

## Usage

### Update Submodules

To update all the submodules run

    git submodule foreach git pull

## Symlinks

    ln -s bundle/vim-pathogen/autoload/ autoload

JSLint only works correctly in plugin folder
    ln -s ../bundle/jslint/plugin/jslint plugin/jslint

    ln -s ../../../pyflakes/ bundle/pyflakes-vim/ftplugin/python/pyflakes

