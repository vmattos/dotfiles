#!/bin/bash

. ./setup.sh

if [ -d $TERMINAL_THEME_DIR ]; then
  echo "${blue}Deleting terminal theme directory${reset}"
  rm -rf $TERMINAL_THEME_DIR
fi

echo "${green}>>> Setting terminal theme${reset}"
git clone https://gist.github.com/f321e3d76d89806b3507.git ~/terminal-theme
sh ~/terminal-theme/theme.sh

