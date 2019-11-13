#!/bin/bash
set -e
##################################################################################################################
# Author 	: Danny Kruitbosch
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

sudo pacman -S --noconfirm --needed libreoffice-fresh
sudo pacman -S --noconfirm --needed hunspell hunspell-en_US hunspell-en_GB hunspell-nl
sudo pacman -S --noconfirm --needed hyphen hyphen-en hyphen-nl
sudo pacman -S --noconfirm --needed libmythes mythes-en mythes-nl
sudo pacman -S --noconfirm --needed arcolinux_repo_3party/spotify arcolinux_repo_3party/spotifywm-git

yay -S --noconfirm --needed aur/otf-san-francisco-pro aur/otf-san-francisco-mono
#yay -S --noconfirm --needed aur/flat-remix-gtk aur/flat-remix
#yay -S --noconfirm --needed aur/oomox-git

echo "################################################################"
echo "########          Office software installed          ###########"
echo "################################################################"
