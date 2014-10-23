#!/bin/bash


# Install essential packages
sudo sh install-essentials.sh

# Setup favorite terminal theme
echo ">>> Setting terminal theme"
git clone https://gist.github.com/f321e3d76d89806b3507.git ~/terminal-theme
sh ~/terminal-theme/theme.sh

# Setting up vim.rc

# Java
if hash java 2>/dev/null;then
  echo ">>> Java is installed. Skipping"
else
  sudo sh setup-java.sh
fi

# Ruby
if hash rbenv 2>/dev/null;then
  echo ">>> Ruby is installed. Skipping"
else
  sudo sh setup-ruby.sh
fi

# Set zsh with oh-my-zsh
echo ">>> Downloading zsh"
sudo apt-get install zsh -y
echo ">>> Setting up custom oh-my-zsh"
# wget --no-check-certificate http://install.ohmyz.sh -O oh-my-zsh.sh
sh oh-my-zsh.sh

# Creating backup dotfiles dir
DOTFILES_OLD=$HOME/dotfiles_old
if [ ! -d $DOTFILES_OLD ]
  mkdir $DOTFILES_OLD
fi

# Creating files symlinks
echo ">>> Creating dotfiles symlinks"
FILES="vim zsh git"
DIR=$PWD
cd ~

for file in $FILES; do
  echo ">>> Configuring $file preferences"
  sh setup-$file.sh
done

