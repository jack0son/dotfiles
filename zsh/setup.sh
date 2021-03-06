#!/bin/bash
BASEDIR=$(readlink -f $0 | xargs dirname)
ln -s -r $BASEDIR/zshrc ~/.zshrc

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-syntax-highlighting


