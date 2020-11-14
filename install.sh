#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/franklx/vim-franklx ~/.vim/plugged/vim-franklx

ln -s ~/.vimrc ~/.vim/plugged/vim-franklx/vimrc

NVD="${XDG_DATA_HOME:-$HOME/.local/share}"
NVC="${XDG_CONFIG_HOME:-$HOME/.config}"
mkdir -p $NVD $NVC

ln -s ~/.vim $NVC/nvim/init.vim
ln -s ~/.vim/autoload $NVD/nvim/site/autoload
