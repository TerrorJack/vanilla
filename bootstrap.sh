#!/bin/sh -e

nix-env -iA \
  nixpkgs.lyx \
  nixpkgs.pandoc \
  nixpkgs.texlive.combined.scheme-full

nix-collect-garbage -d
rm /tmp/bootstrap.sh
