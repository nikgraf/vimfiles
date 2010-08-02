# Vim-Files

## Vim

You need a Vim version with Python and Ruby support.

### Macports:

    sudo port install vim +python +ruby
    sudo port install MacVim +python +ruby

## Preconditions

### JSLint

To use JSLint you need a Javascript Commandline Tool like Spidermonkey.
On Mac OS X you don't need to install anything cause it uses JavaScriptCore directly.

#### apt-get

    sudo apt-get install spidermonkey-bin

### Ack

To use Ack you have to install it on your System.
For more Information see http://github.com/mileszs/ack.vim

## Setup

Then 'cd' into the repo and run this commands to get all the submodules

    git submodule update --init

Setup correct Paths via this commands

    ln -s ~/.vim/vimrc ~/.vimrc

Add this link manually

    ln -s ../../../pyflakes/ bundle/pyflakes-vim/ftplugin/python/pyflakes

You may have problems with Command-T in Mac/Linux, because this plugin requires a native
extension, so you will have to do this:

    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make


## Usage

### Update Submodules

To update all the submodules run

    git submodule foreach git pull

## Symlinks

    ln -s bundle/vim-pathogen/autoload/ autoload
    ln -s ../../../pyflakes/ bundle/pyflakes-vim/ftplugin/python/pyflakes

## Credits

Nik Graf @nikgraf
Martin Schürrer @msch

Special Thanks to Thomas Schranz @__tosh and Petyo Ivanov @petyosi.
