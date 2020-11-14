#!/bin/bash

# vim #
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/franklx/vim-franklx ~/.vim/plugged/vim-franklx
ln -s ~/.vim/plugged/vim-franklx/vimrc ~/.vimrc

# neovim #
NVC="${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
NVD="${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site
mkdir -p $NVC $NVD
ln -s ~/.vimrc $NVC/init.vim
ln -s ~/.vim/autoload $NVD/autoload
