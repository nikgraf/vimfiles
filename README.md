# Usage

Then 'cd' into the repo and run this commands to get all the submodules

    git submodule init
    git submodule update

Setup correct Paths via this commands

    ln -s ~/.vim/vimrc ~/.vimrc

Add these Symlinks to run it correct

    ln -s submodules/vim-pathogen/autoload/ autoload
    ln -s ../submodules/csapprox bundle/csapprox
    ln -s ../submodules/nerdtree bundle/nerdtree
    ln -s ../submodules/vim-fugitive bundle/vim-fugitive
