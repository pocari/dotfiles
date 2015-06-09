#!/bin/bash

DOT_FILES=(.zshrc .zshenv .emacs.d .tmux.conf .gvimrc .vimrc .vim .zsh)

for file in ${DOT_FILES[@]}
do
    src_file=$(echo ${file} | sed 's/^\./_/')
    if [ ! -L $HOME/$file -a -f $HOME/$file ]; then
      mv $HOME/$file $HOME/${file}_
    fi

    ln -snf $HOME/dotfiles/$src_file $HOME/$file
done

