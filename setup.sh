#!/bin/bash

# TODO vimとneovimを共存させてるので
# ~/.config/nvim を ~/.vimディレクトリへのsymlinkにする必要がある
# ~/.config自体は他の処理からも作成されるので、まだ無い場合のみ作成する
DOT_FILES=(.zshrc .zshenv .emacs.d .tmux.conf .gvimrc .vimrc .vim .zsh .tmuxinator .gitconfig .globalrc .peco)

for file in ${DOT_FILES[@]}
do
    src_file=$(echo ${file} | sed 's/^\./_/')
    if [ ! -L $HOME/$file -a -f $HOME/$file ]; then
      mv $HOME/$file $HOME/${file}_
    fi

    ln -snf $HOME/dotfiles/$src_file $HOME/$file
done

