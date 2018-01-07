# `vanilla`

[![CircleCI](https://circleci.com/gh/TerrorJack/vanilla/tree/master.svg?style=shield)](https://circleci.com/gh/TerrorJack/vanilla)
[![Docker Pulls](https://img.shields.io/docker/pulls/terrorjack/vanilla.svg)](https://hub.docker.com/r/terrorjack/vanilla/)

A build environment based on Nix. Nix is installed into Alpine Linux with single-user mode. Three versions are available:

* `terrorjack/vanilla:latest`: has Nix installed.
* `terrorjack/vanilla:circleci`: has additional tools installed for use on Circle CI.
* `terrorjack/vanilla:haskell`: has `stack` installed, for use of my Haskell projects on Circle CI.
