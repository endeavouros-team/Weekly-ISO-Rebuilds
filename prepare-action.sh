#!/usr/bin/env bash
tag=22.12.2.2

# clone ISO sources and join the path:
#git clone https://github.com/endeavouros-team/EndeavourOS-ISO.git

#load tarball of the ISO and unpack it
wget https://github.com/endeavouros-team/EndeavourOS-ISO/archive/refs/tags/${tag}.tar.gz
tar -xf ${tag}.tar.gz
mv EndeavourOS-ISO-${tag} EndeavourOS-ISO

# patch run_before_squashfs.sh to remove github folder before squashfs:
patch EndeavourOS-ISO/run_before_squashfs.sh < run_before_squashfs.sh.patch

# get missing wallpaper 
cp livewall.png "EndeavourOS-ISO/airootfs/root/"

# fetch updated pacman.conf
wget -qN --show-progress -P "EndeavourOS-ISO/airootfs/etc/" "https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-ISO/main/airootfs/etc/pacman.conf"

# run preperations inside ISO structure
cd EndeavourOS-ISO

# Get mirrorlist for offline installs
mkdir "airootfs/etc/pacman.d"
wget -qN --show-progress -P "airootfs/etc/pacman.d/" "https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-ISO/main/mirrorlist"
# use it also for building ISO
cp "airootfs/etc/pacman.d/mirrorlist" "/etc/pacman.d/mirrorlist"

# Get wallpaper for installed system
wget -qN --show-progress -P "airootfs/root/" "https://raw.githubusercontent.com/endeavouros-team/endeavouros-theming/master/backgrounds/endeavouros-wallpaper.png"

# Make sure build scripts are executable
chmod +x "./"{"mkarchiso","run_before_squashfs.sh"}

# create build user
useradd -m -G wheel -s /bin/bash build

# Build liveuser skel
get_pkg() {
    pacman -Syw "$1" --noconfirm --cachedir "airootfs/root/packages"
}

get_pkg "endeavouros-skel-xfce4"

chown -R build:build "airootfs/root/endeavouros-skel-liveuser"
cd "airootfs/root/endeavouros-skel-liveuser"
sudo -u build makepkg -f
