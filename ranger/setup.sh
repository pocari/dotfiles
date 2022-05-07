#!/bin/bash
set -ex

# ranger関連のsetup
mkdir -p ~/.config/ranger

if [ -e ~/.config/ranger/rc.conf ]; then
  echo skip create symlink rc.conf
else
  ln -s ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
fi

echo ranger setup done