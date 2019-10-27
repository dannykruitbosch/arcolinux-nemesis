#!/bin/bash
set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website : https://www.erikdubois.be
# Website	: https://www.arcolinux.info
# Website	:	./https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#software from Arch Linux repositories

#sudo pacman -S --noconfirm --needed autorandr
sudo pacman -S --noconfirm --needed community/pass
sudo pacman -S --noconfirm --needed community/inotify-tools
sudo pacman -S --noconfirm --needed community/light

yay -S --noconfirm --needed zsh-theme-powerlevel10k-git
yay -S --noconfirm --needed aur/pass-git-helper
yay -S --noconfirm --needed aur/slack-desktop
yay -S --noconfirm --needed aur/python-umonitor-git
yay -S --noconfirm --needed aur/bitwarden-bin
yay -S --noconfirm --needed aur/915resolution


###############################################################################################

echo "################################################################"
echo "################### core software installed"
echo "################################################################"
