#!/usr/bin/env bash
# clone ISO sources and join the path:
git clone https://github.com/endeavouros-team/EndeavourOS-ISO.git

# patch packages to not install Calamares packages from repository:
#patch EndeavourOS-ISO/packages.x86_64 < packages.x86_64.patch

# patch profiledef.sh -- set isoname to unstable:
#patch EndeavourOS-ISO/profiledef.sh < profiledef.sh.patch

# patch run_before_squashfs.sh to remove github folder before squashfs:
patch EndeavourOS-ISO/run_before_squashfs.sh < run_before_squashfs.sh.patch

# copy live session Wallpaper into ISO structure:
#cp livewall.png EndeavourOS-ISO/airootfs/root/

# run preperations inside ISO structure
cd EndeavourOS-ISO

# Copy packages from Build Calamares git packages into iso structure:
#cp /home/build/packages/* airootfs/root/packages/

# Get mirrorlist for offline installs
mkdir "airootfs/etc/pacman.d"
wget -qN --show-progress -P "airootfs/etc/pacman.d/" "https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-ISO/main/mirrorlist"

# Get wallpaper for installed system
#wget -qN --show-progress -P "airootfs/root/" "https://raw.githubusercontent.com/endeavouros-team/endeavouros-theming/master/backgrounds/endeavouros-wallpaper.png"

# Make sure build scripts are executable
chmod +x "./"{"mkarchiso","run_before_squashfs.sh"}

# Build liveuser skel
get_pkg() {
    pacman -Syw "$1" --noconfirm --cachedir "airootfs/root/packages"
}

get_pkg "endeavouros-skel-xfce4"

# current downgrade mesa for calamares lag in vms:
# wget https://archive.archlinux.org/packages/m/mesa/mesa-22.1.7-1-x86_64.pkg.tar.zst
# nmv mesa-22.1.7-1-x86_64.pkg.tar.zst "airootfs/root/packages/"

chown -R build:build "airootfs/root/endeavouros-skel-liveuser"
cd "airootfs/root/endeavouros-skel-liveuser"
sudo -u build makepkg -f
