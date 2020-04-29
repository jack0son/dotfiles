#!/bin/bash

# Vim
add-apt-repository -y ppa:neovim-ppa/unstable
add-apt-repository -y ppa:jonathonf/vim
apt install -y neovim vim

# Shell tools
apt install -y git htop curl tmux  colordiff xclip

# Shell
apt install -y zsh && chsh -s $(which zsh)

# Build tools
apt install -y build-essential

# Desktop
apt install -y tilix dconf-cli
