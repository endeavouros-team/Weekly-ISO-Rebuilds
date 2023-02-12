#!/bin/sh

cd "EndeavourOS-ISO"
pacman -Sy networkmanager
./mkarchiso "."
ls out/ > /tmp/isoname
cd out/
isoname=$(cat /tmp/isoname)
sha512sum $isoname > $isoname.sha512sum
