#!/bin/sh

# setting up EndeavourOS repo:
# try fix for current keyring issue (1.1.2024)
pacman-key --init && pacman -Syu --noconfirm && pacman -Syu base-devel --noconfirm
pacman -Sy --noconfirm --needed archlinux-keyring
cp  "pacman.conf" "/etc/pacman.conf"
cp  "endeavouros-mirrorlist" "/etc/pacman.d/endeavouros-mirrorlist"
pacman-key --init && pacman-key --recv-key 0F20FADC599D1C46EB556455AED8858E4B9813F1 --keyserver keyserver.ubuntu.com && pacman-key --lsign-key 0F20FADC599D1C46EB556455AED8858E4B9813F1
pacman-key --init
pacman -Sy --noconfirm endeavouros-keyring 
pacman -S --noconfirm endeavouros-mirrorlist
pacman -S --noconfirm reflector
reflector --age 2 --number 23 --country DE,US --save /etc/pacman.d/mirrorlist
