TERMINAL_THEME_DIR="$HOME/terminal-theme"
DOTFILES_OLD="$HOME/dotfiles_old"
DOTFILES="vim zsh git tmux.conf"
DOTFILES_DIR="$PWD"
VIM_HOME="$HOME/.vim"

# Terminal colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

 if [ ! -d $DOTFILES_OLD ]; then
  echo "${green}>>> Creating dotfiles backup dir${reset}"
  mkdir $DOTFILES_OLD
fi
