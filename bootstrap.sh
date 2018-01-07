#!/bin/sh -e

nix-env -iA nixpkgs.stack

nix-collect-garbage -d
rm /tmp/bootstrap.sh

mkdir /root/.stack
mv /tmp/config.yaml /root/.stack
