#!/bin/sh
cp "run_before_squashfs.sh.patch" "EndeavourOS-ISO/"
cp "packages.x86_64.patch" "EndeavourOS-ISO/"
cp "mkarchiso.patch" "EndeavourOS-ISO/"
cd "EndeavourOS-ISO"
patch "run_before_squashfs.sh" < "run_before_squashfs.sh.patch"
patch "packages.x86_64" < "packages.x86_64.patch"
patch "mkarchiso" < "mkarchiso.patch"
./mkarchiso -v "." 2>&1 | tee "eosiso_$(date -u +'%Y.%m.%d-%H:%M').log"
ls out/ > /tmp/isoname
cp *.log out/
cd out/
isoname=$(cat /tmp/isoname)
sha512sum $isoname > $isoname.sha512sum
#mktorrent --announce=udp://tracker.openbittorrent.com:80 -a udp://tracker.torrent.eu.org:451/announce -a udp://thetracker.org:80/announce -a udp://tracker.dutchtracking.com:6969/announce -a udp://tracker.opentrackr.org:1337/announce -c $isoname -n $isoname -o $isoname.torrent -v $isoname -w https://endeavour.kamprad.net/weekly-iso/$isoname
tar -czvf $isoname.tar.gz *.sha512sum *.iso *.log 
#*.torrent
# split ISO in 3 
7z a -v1024m -mx0 $isoname.7z $isoname.tar.gz
files=$(ls)
echo $files

