#!/bin/bash

cp tmux/tmux.conf ~/.tmux.conf
cp vim/vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim
fi
cp -r vim/colors

