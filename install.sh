#!/bin/bash

PWD=$(pwd)
echo $PWD

if [ -e ~/.oh-my-zsh ];then
    mv ~/.oh-my-zsh ~/.oh-my-zsh_bak
fi
ln -s ${PWD} ~/.oh-my-zsh


if [ -e ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc_bak
fi

ln -s ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

if [ -e ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf_bak
fi
ln -s ~/.oh-my-zsh/templates/tmux.conf ~/.tmux.conf


if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_bak
fi
ln -s ~/.oh-my-zsh/templates/vimrc ~/.vimrc

if [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_bak
fi
ln -s ~/.oh-my-zsh/templates/bashrc ~/.bashrc
