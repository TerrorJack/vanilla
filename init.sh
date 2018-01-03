#!/bin/sh -e

apk --no-cache --no-progress update
apk --no-cache --no-progress add \
  bash \
  ca-certificates \
  curl \
  git \
  gzip \
  openssh-client \
  sudo \
  tar

adduser -G wheel -D vanilla
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
rm /tmp/init.sh
