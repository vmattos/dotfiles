#!/bin/bash

. ./setup.sh

cd ~

if [ -f .gitconfig ]; then
  echo ">>> Backuping previously existent .gitconfig to $DOTFILES_OLD"
  mv .gitconfig $DOTFILES_OLD
fi

ln -s dotfiles/gitconfig .gitconfig
