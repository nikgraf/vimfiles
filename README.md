# Vim-Files

## Usage

Then 'cd' into the repo and run this commands to get all the submodules

    git submodule init
    git submodule update

Setup correct Paths via this commands

    ln -s ~/.vim/vimrc ~/.vimrc

## Symlinks

    ln -s submodules/vim-pathogen/autoload/ autoload
    ln -s ../submodules/csapprox bundle/csapprox
    ln -s ../submodules/nerdtree bundle/nerdtree
    ln -s ../submodules/vim-fugitive bundle/vim-fugitive
    ln -s ../submodules/vim-rails bundle/vim-rails
