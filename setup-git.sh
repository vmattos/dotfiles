#!/bin/bash

. ./setup.sh

cd ~

if [ -f .gitconfig ]; then
  echo "${blue}>>> Backuping previously existent .gitconfig to $DOTFILES_OLD${reset}"
  mv .gitconfig $DOTFILES_OLD
fi

echo "${yellow}>>> Creating .gitconfig symlink"
ln -s dotfiles-master/gitconfig .gitconfig
