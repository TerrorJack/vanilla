#!/bin/sh -e

echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

apk --no-cache --no-progress upgrade
apk --no-cache --no-progress add \
  bash \
  curl \
  sudo

mkdir /etc/nix
printf "build-users-group =\n" > /etc/nix/nix.conf
mkdir /root/.nixpkgs
printf "{ allowUnfree = true; }\n" > /root/.nixpkgs/config.nix

curl https://nixos.org/nix/install | USER=root sh -e

export NIX_PATH=nixpkgs=/root/.nix-defexpr/channels/nixpkgs
export PATH=/root/.nix-profile/bin:/root/.nix-profile/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

nix-env -iA \
  nixpkgs.nixUnstable \
  nixpkgs.cacert

apk --no-cache --no-progress del \
  bash \
  curl \
  sudo
nix-collect-garbage -d
rm /tmp/bootstrap.sh
