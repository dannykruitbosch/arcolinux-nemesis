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

sudo cp $installed_dir/scripts/powertop.service /usr/lib/systemd/user
sudo systemctl enable /usr/lib/systemd/user/powertop.service
