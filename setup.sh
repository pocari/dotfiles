#!/bin/bash

DOT_FILES=(.zshrc .zshrc.linux .zshrc.osx .emacs.d .tmux.conf)

for file in ${DOT_FILES[@]}
do
    src_file=$(echo ${file} | sed 's/^\./_/')
    if [ ! -L $HOME/$file -a -f $HOME/$file ]; then
      mv $HOME/$file $HOME/$file_
    fi

    ln -snf $HOME/dotfiles/$src_file $HOME/$file
done

