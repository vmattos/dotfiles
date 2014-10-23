DOTFILES_OLD="$HOME/dotfiles_old"
DOTFILES="vim zsh git"
DOTFILES_DIR="$PWD"
VIM_HOME="$HOME/.vim"

 if [ ! -d $DOTFILES_OLD ]; then
  echo ">>> Creating dotfiles backup dir"
  mkdir $DOTFILES_OLD
fi
