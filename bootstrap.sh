#!/bin/sh -e

git clone --depth 1 https://github.com/mozilla/nixpkgs-mozilla.git
mkdir -p /root/.config/nixpkgs/overlays
ln -s /root/nixpkgs-mozilla/firefox-overlay.nix /root/.config/nixpkgs/overlays/firefox-overlay.nix
nix-channel --update
nix-env -iA nixpkgs.latest.firefox-nightly-bin
nix-collect-garbage -d
