#!/bin/bash

#sudo apt install vim-gui-common
mkdir -p ~/.vim/colors
cp monokai.vim ~/.vim/colors
cp .vimrc ~/.vimrc

#for vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
