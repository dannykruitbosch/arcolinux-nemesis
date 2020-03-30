#!/bin/bash
set -e
##################################################################################################################
# Author 	: Danny Kruitbosch
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

#yay -S --noconfirm --needed aur/otf-meslo-powerline-git
yay -S --noconfirm --needed nerd-fonts-hack
yay -S --noconfirm --needed otf-san-francisco-pro otf-san-francisco-mono

# Install starship commandline (and remove oh-my-zsh)
yay -S --noconfirm --needed --removemake --cleanafter aur/starship
cp $installed_dir/settings/starship/starship.toml $HOME/.config/

# remove oh-my-zsh
yay -R --noconfirm oh-my-zsh-git

# copy personal zshrc to homedir
cp $HOME/.zshrc $HOME/.zshrc.previous
cp $installed_dir/settings/zshrc/zshrc $HOME/.zshrc

# copy aliases from arcolinux skel to own
grep alias /etc/skel/.zshrc | grep -v "#" > $HOME/.aliases && source $HOME/.aliases

echo "################################################################"
echo "########          Personal setting applied!          ###########"
echo "########         Please logout/login to apply        ###########"
echo "################################################################"