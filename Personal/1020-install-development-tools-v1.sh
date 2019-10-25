#!/bin/bash
set -e
##################################################################################################################
# Author 	: Danny Kruitbosch
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# IDE tools
sudo pacman -S --noconfirm --needed community/code
yay -S --noconfirm --needed aur/intellij-idea-ultimate-edition

# Test tools
yay -S --noconfirm --needed aur/postman-bin

# Docker stuff
sudo pacman -S --noconfirm --needed community/docker
sudo pacman -S --noconfirm --needed community/docker-compose
sudo usermod -aG docker $USER

# K8S and gcloud
yay -S --noconfirm --needed aur/kubectl-bin
curl https://sdk.cloud.google.com | bash

###############################################################################################

echo "################################################################"
echo "################### Development IDE, test, container and cloud software installed"
echo "################################################################"
