#!/bin/bash

. ./setup.sh

cd ~

if [ -f .zshrc ]; then
  echo ">>> Backuping previously existent .zshrc to $DOTFILES_OLD"
  mv .zshrc $DOTFILES_OLD
fi

ln -s dotfiles/zshrc .zshrc
