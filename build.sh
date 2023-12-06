#!/bin/sh
cp "run_before_squashfs.sh.patch" "EndeavourOS-ISO/"
cp "packages.x86_64.patch" "EndeavourOS-ISO/"
cd "EndeavourOS-ISO"
patch "run_before_squashfs.sh" < "run_before_squashfs.sh.patch"
patch "packages.x86_64" < "packages.x86_64.patch"
./mkarchiso -v "." 2>&1 | tee "eosiso_$(date -u +'%Y.%m.%d-%H:%M').log"
ls out/ > /tmp/isoname
cd out/
isoname=$(cat /tmp/isoname)
sha512sum $isoname > $isoname.sha512sum
