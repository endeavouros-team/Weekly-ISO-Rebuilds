#!/bin/sh

# setting up EndeavourOS repo:
pacman -S --noconfirm --needed archlinux-keyring
pacman-key --init && pacman-key --add manuel.pgp && pacman-key --lsign-key AED8858E4B9813F1
# && pacman-key --recv-key 0F20FADC599D1C46EB556455AED8858E4B9813F1 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key 0F20FADC599D1C46EB556455AED8858E4B9813F1
cp  "pacman.conf" "/etc/pacman.conf"
cp  "endeavouros-mirrorlist" "/etc/pacman.d/endeavouros-mirrorlist"
pacman -Syy --noconfirm endeavouros-keyring endeavouros-mirrorlist
