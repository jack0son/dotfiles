#!/bin/bash
if [[ ! -e ~/.oh-my-zsh ]]; then
  unset ZSH
  export RUNZSH=no
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# chsh -s /bin/zsh
