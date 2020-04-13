#!/bin/bash
add-apt-repository -y ppa:neovim-ppa/unstable
add-apt-repository -y ppa:jonathonf/vim

apt install -y neovim vim

apt install -y git htop curl tmux tilix colordiff

apt install -y zsh && chsh -s $(which zsh)

# Build tools
apt install -y build-essential
