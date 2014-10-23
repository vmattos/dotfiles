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

if [ -f .gitconfig ]; then
  echo ">>> Backuping previously existent .gitconfig to $DOTFILES_OLD"
  mv .gitconfig $DOTFILES_OLD
fi

ln -s dotfiles/gitconfig .gitconfig
