#!/bin/bash

cp tmux/tmux.conf ~/.tmux.conf
cp vim/vimrc ~/.vimrc
cp bash/bash_aliases ~/.bash_aliases

if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim
fi

if [ ! -d ~/.vim/colors ]; then
    cp -r vim/colors ~/.vim
fi

if [ ! -d ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +qall
fi
