#!/bin/bash
set -e
##################################################################################################################
# Author 	: Danny Kruitbosch
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Nodejs is installed by default, npm/yarn needs to be added
sudo pacman -S --noconfirm --needed community/npm
sudo pacman -S --noconfirm --needed community/yarn
sudo pacman -S --noconfirm --needed community/go

# All JVM related sdk are managed through SDKMAN (see https://sdkman.io/)
curl -s "https://get.sdkman.io" | bash

# Source sdkman for first time use
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk version

# Install tools and SDKs (if no version given, sdkman will install default version)
sdk install java 8.0.222.hs-adpt
sdk install java
sdk install scala
sdk install kotlin
sdk install gradle
sdk install maven
sdk install sbt

###############################################################################################

echo "################################################################"
echo "################### SDK tools and software installed"
echo "################################################################"
