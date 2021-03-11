#!/usr/bin/env bash
DOTFILES=$(git rev-parse --show-toplevel)

machine=$($DOTFILES/scripts/whichos.sh)
if [[ $machine != "Mac" ]]; then
  echo "Brew not available on $machine"
  exit
fi

if [[ -z $(which brew) ]]; then
  echo "Installing brew..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# GNU core utils
brew install coreutils 

brew install ncdu

# Starship prompt
brew install starship 

# Rust GNU
brew install ripgrep exa fd
