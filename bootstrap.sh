#!/bin/sh -e

nix-env -iA \
  nixpkgs.gitAndTools.gitFull \
  nixpkgs.gnutar \
  nixpkgs.gzip \
  nixpkgs.openssh

nix-collect-garbage -d
rm /tmp/bootstrap.sh
