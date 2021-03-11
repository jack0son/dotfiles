#!/bin/bash
DOTFILES=$(git rev-parse --show-toplevel)
BASEDIR=$DOTFILES/starship

DEST=~/.config/starship.toml
BKP=~/.config/starship.old.toml
if [[ -e $DEST ]]; then
  echo "Moving existing starship config to $BKP"
  mv $DEST $BKP
fi

ln -s $BASEDIR/starship.toml $DEST
