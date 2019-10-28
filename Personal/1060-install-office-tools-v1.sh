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


echo "################################################################"
echo "########          Office software installed          ###########"
echo "################################################################"
