#!/bin/bash
# Snap
apt install snapd
snap install chromium
snap install gitkraken
snap install spotify

# Docker
snap install docker
snap install docker-compose

# Shell tools
snap install lsd

# Post install (use docker without sudo)
groupadd docker
usermod -aG docker $USER
newgrp docker
