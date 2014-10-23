#!/bin/bash

cd ~

# Those conditionals are here so you can use each setup
# individually without running the bootstrap if you want to
if [ ! $DOTFILES_OLD ]; then
  DOTFILES_OLD=$HOME/dotfiles_old 
  if [ ! -d $DOTFILES_OLD ]; then
    mkdir $DOTFILES_OLD
  fi
fi

if [ -f .zshrc ]; then
  echo ">>> Backuping previously existent .zshrc to $DOTFILES_OLD"
  mv .zshrc $DOTFILES_OLD
fi

ln -s dotfiles/zshrc .zshrc
