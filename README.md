# My Vim Settings

## Installation
                                                                                
Fork and then clone this repository, putting the .vim folder in your root
directory:

    git clone https://github.com/ElliotPenson/.vim.git

By default, vim will look for the .vimrc configuration file in your root
directory. However, one way to get around that is with a symlink. Perform the
following to make a .vimrc alias which will point the actual vimrc file in .vim:

    ln -s ~/.vim/.vimrc ~/.vimrc

Next, fetch all the bundle data with the following:

    git submodule init
    git submodule update

## Disclaimer
Note that I did not create and do not own any of the color schemes or plugins
included. Therefore, these files belong to their respective owners.
