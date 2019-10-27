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

# Copy xbacklightmon script
sudo cp $installed_dir/scripts/xbacklightmon.sh /usr/local/bin
sudo chown root:root /usr/local/bin/xbacklightmon.sh
sudo chmod 755 /usr/local/bin/xbacklightmon.sh

# Copy service definition
[ -d $HOME"/.config/systemd" ] || mkdir -p $HOME"/.config/systemd"
[ -d $HOME"/.config/systemd/user" ] || mkdir -p $HOME"/.config/systemd/user"
cp $installed_dir/scripts/xbacklightmon.service $HOME"/.config/systemd/user"

# Enable service
systemctl --user enable xbacklightmon.service

echo "################################################################"
echo "#########       XBacklightMon enabled           ################"
echo "################################################################"