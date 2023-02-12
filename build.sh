#!/bin/sh
tag=22.12.2.2
cd "EndeavourOS-ISO-${tag}"
./mkarchiso "."
ls out/ > /tmp/isoname
cd out/
isoname=$(cat /tmp/isoname)
sha512sum $isoname > $isoname.sha512sum
