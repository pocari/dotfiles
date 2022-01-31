#!/bin/bash

DOT_FILES=(
  .bashrc
  .zshrc
  .zshenv
  .zprofile
  .tmux.conf
  .gvimrc
  .vimrc
  .vim
  .zsh
  .gitconfig
  .globalrc
  .peco
  .git_template
  .ctags
  .pryrc
  .tigrc
  .rubocop.yml
)

for file in ${DOT_FILES[@]}
do
  src_file=$(echo ${file} | sed 's/^\./_/')
  if [ ! -L $HOME/$file -a -f $HOME/$file ]; then
    echo "WARN: found no symlink file: $HOME/$file. rename to $HOME/${file}_"
    mv $HOME/$file $HOME/${file}_
  fi

  ln -snf $HOME/dotfiles/$src_file $HOME/$file
done

# neovimとvimの共存用設定
mkdir -p ~/.config
ln -sf ~/.vim ~/.config/nvim

