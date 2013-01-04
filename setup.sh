#!/bin/bash

DOT_FILES=(.zshrc .zshrc.linux .zshrc.osx .emacs.d)

for file in ${DOT_FILES[@]}
do
    src_file=$(echo ${file} | sed 's/^\./_/')
    ln -s $HOME/dotfiles/$src_file $HOME/$file
done

