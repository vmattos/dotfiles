#!/bin/bash

. ./setup.sh

cd ~

# Installing pathogen
if [ ! -d $VIM_HOME/autoload ] && [ ! -d $VIM_HOME/bundle ]; then
  echo ">>> Installing Pathogen"
  mkdir $VIM_HOME/autoload
  mkdir $VIM_HOME/bundle
  curl -LSso $VIM_HOME/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
  echo ">>> Pathogen detected. Skipping"
fi

# Installing NERDTree
if [ ! -d $VIM_HOME/bundle/nerdtree ]; then
  echo ">>> Installing NERDTree"
  git clone https://github.com/scrooloose/nerdtree.git $VIM_HOME/bundle/nerdtree
else
  echo ">>> NERDTree detected. Skipping"
fi

if [ -f .vimrc ]; then
  echo ">>> Backuping previously existent .vimrc to $DOTFILES_OLD"
  mv .vimrc $DOTFILES_OLD
fi

echo ">>> Creating .vimrc symlink"
ln -s dotfiles/vimrc .vimrc
