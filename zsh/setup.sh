#!/bin/bash
DOTFILES=$(git rev-parse --show-toplevel)
BASEDIR=$DOTFILES/zsh

sh $BASEDIR/omz-install.sh

if [[ -e ~/.zshrc ]]; then
  echo "Moving existing zshrc to ~/.zshrc.old"
  mv ~/.zshrc ~/.zshrc.old
fi

ln -s $BASEDIR/zshrc ~/.zshrc

# Export ZSH to zshrc using $HOME
echo "export ZSH=$HOME/.oh-my-zsh" >> ~/.zshpath
source ~/.zshrc

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-syntax-highlighting


