#!/bin/sh

# setting up EndeavourOS repo:
pacman -Sy --noconfirm --needed archlinux-keyring pipewire-jack
cp  "pacman.conf" "/etc/pacman.conf"
cp  "endeavouros-mirrorlist" "/etc/pacman.d/endeavouros-mirrorlist"
pacman-key --init && pacman-key --recv-key 003DB8B0CB23504F --keyserver keyserver.ubuntu.com && pacman-key --lsign-key 003DB8B0CB23504F
pacman-key --init
pacman -Syy --noconfirm endeavouros-keyring 
pacman -Syy --noconfirm endeavouros-mirrorlist
