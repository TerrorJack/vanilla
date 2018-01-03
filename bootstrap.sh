#!/bin/sh -e

curl -sSL https://nixos.org/nix/install | USER=vanilla sh -e
echo "source /home/vanilla/.nix-profile/etc/profile.d/nix.sh" >> /home/vanilla/.profile
sudo rm /tmp/bootstrap.sh
