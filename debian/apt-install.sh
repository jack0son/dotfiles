#!/bin/bash
add-apt-repository -y ppa:neovim-ppa/unstable
add-apt-repository -y ppa:jonathonf/vim

apt install -y neovim vim

apt install -y git htop curl tmux tilix 

apt install -y zsh && chsh -s $(which zsh)
