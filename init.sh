#!/bin/sh -e

mv /tmp/repositories /etc/apk/repositories

apk --no-cache --no-progress upgrade
apk --no-cache --no-progress add sudo

adduser -G wheel -D vanilla
echo "vanilla ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
rm /tmp/init.sh
