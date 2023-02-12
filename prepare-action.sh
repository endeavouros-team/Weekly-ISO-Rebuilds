#!/usr/bin/env bash
tag=22.12.2.2

# clone ISO sources and join the path:
#git clone https://github.com/endeavouros-team/EndeavourOS-ISO.git

#load tarball of theISO and unpack it
wget https://github.com/endeavouros-team/EndeavourOS-ISO/archive/refs/tags/${tag}.tar.gz
tar -xf ${tag}.tar.gz

# patch run_before_squashfs.sh to remove github folder before squashfs:
patch EndeavourOS-ISO-${tag}/run_before_squashfs.sh < run_before_squashfs.sh.patch

# run preperations inside ISO structure
cd EndeavourOS-ISO-${tag}

# Copy packages from Build Calamares git packages into iso structure:
#cp /home/build/packages/* airootfs/root/packages/

# Get mirrorlist for offline installs
mkdir "airootfs/etc/pacman.d"
wget -qN --show-progress -P "airootfs/etc/pacman.d/" "https://gitlab.com/endeavouros-filemirror/PKGBUILDS/-/raw/master/endeavouros-mirrorlist/endeavouros-mirrorlist"

# Make sure build scripts are executable
chmod +x "./"{"mkarchiso","run_before_squashfs.sh"}

# Build liveuser skel
get_pkg() {
    pacman -Syw "$1" --noconfirm --cachedir "airootfs/root/packages"
}

get_pkg "endeavouros-skel-xfce4"

chown -R build:build "airootfs/root/endeavouros-skel-liveuser"
cd "airootfs/root/endeavouros-skel-liveuser"
sudo -u build makepkg -f
