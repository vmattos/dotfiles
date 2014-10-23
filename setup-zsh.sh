#!/bin/bash

. ./setup.sh

cd ~

if [ -f .zshrc ]; then
  echo "${blue}>>> Backuping previously existent .zshrc to $DOTFILES_OLD${reset}"
  mv .zshrc $DOTFILES_OLD
fi

echo "${yellow}>>> Creating .zshrc symlink${reset}"
ln -s dotfiles/zshrc .zshrc
