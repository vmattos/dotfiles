#!/bin/bash

. ./setup.sh

cd ~

# Installing pathogen
if [ ! -d $VIM_HOME/autoload ] && [ ! -d $VIM_HOME/bundle ]; then
  echo "{blue}>>> Installing Pathogen${reset}"
  mkdir $VIM_HOME/autoload
  mkdir $VIM_HOME/bundle
  curl -LSso $VIM_HOME/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
  echo "${red}>>> Pathogen detected. Skipping${reset}"
fi

# Installing NERDTree
if [ ! -d $VIM_HOME/bundle/nerdtree ]; then
  echo "${blue}>>> Installing NERDTree${reset}"
  git clone https://github.com/scrooloose/nerdtree.git $VIM_HOME/bundle/nerdtree
else
  echo "${red}>>> NERDTree detected. Skipping${reset}"
fi

# Installing favorite vim theme
if [ ! -f $VIM_HOME/colors/vmattos.vim ]; then
  echo "${blue}>>> Installing favorite vim theme${reset}"
  git clone https://gist.github.com/7ac06a16ae6a1dd4a897.git $VIM_HOME/colors/theme
  mv $VIM_HOME/colors/theme/vmattos.vim $VIM_HOME/colors
fi

if [ -f .vimrc ]; then
  echo "${blue}>>> Backuping previously existent .vimrc to $DOTFILES_OLD${reset}"
  mv .vimrc $DOTFILES_OLD
fi

echo "${yellow}>>> Creating .vimrc symlink${reset}"
ln -s dotfiles/vimrc .vimrc
