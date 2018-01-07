#!/bin/sh -e

sudo apk --no-cache --no-progress add \
  bash \
  curl

mkdir -p /home/vanilla/.config/nix
sudo chown vanilla /tmp/nix.conf
mv /tmp/nix.conf /home/vanilla/.config/nix/
mkdir /home/vanilla/.nixpkgs
sudo chown vanilla /tmp/config.nix
mv /tmp/config.nix /home/vanilla/.nixpkgs/

curl https://nixos.org/nix/install | USER=vanilla sh -e

export NIX_PATH=nixpkgs=/home/vanilla/.nix-defexpr/channels/nixpkgs
export PATH=/home/vanilla/.nix-profile/bin:/home/vanilla/.nix-profile/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

nix-env -iA \
  nixpkgs.nixUnstable \
  nixpkgs.cacert

sudo apk --no-cache --no-progress del \
  bash \
  curl
nix-collect-garbage -d
sudo rm /tmp/bootstrap.sh
