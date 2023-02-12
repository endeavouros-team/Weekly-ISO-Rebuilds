#!/bin/sh

# setting up EndeavourOS repo:
pacman -S --noconfirm --needed archlinux-keyring
pacman-key --init && pacman-key --recv-key 003DB8B0CB23504F --keyserver keyserver.ubuntu.com && pacman-key --lsign-key 003DB8B0CB23504F
cp  "pacman.conf" "/etc/pacman.conf"
cp  "endeavouros-mirrorlist" "/etc/pacman.d/endeavouros-mirrorlist"
pacman -Syy endeavouros-keyring endeavouros-mirrorlist
