# ISO Release Rebuilder

[![Maintenance](https://img.shields.io/maintenance/yes/2024.svg)]()


This is an automatic Release ISO rebuilder it will build current released ISO once a week.

[![Weekly EndeavourOS ISO rebuilds](https://github.com/endeavouros-team/Weekly-ISO-Rebuilds/actions/workflows/autobuild.yml/badge.svg?branch=main)](https://github.com/endeavouros-team/Weekly-ISO-Rebuilds/actions/workflows/autobuild.yml)

https://github.com/endeavouros-team/EndeavourOS-ISO


Will now include current needed hot-fixes on the ISO.

You will find the ISOs here:

https://github.com/endeavouros-team/Weekly-ISO-Rebuilds/releases

Check for latest release there!


Download this 3 files into one folder:

* EndeavourOS-Releasename-Date.iso.7z.001
* EndeavourOS-Releasename-Date.iso.7z.002
* EndeavourOS-Releasename-Date.iso.7z.003

and run this to create ISO (combine):

```
7z x EndeavourOS-Releasename-Date.iso.7z.001
```
you may need to install 7zip 

`sudo pacman -Syu p7zip`

And you need to replace "Releasename-Date" with the current Release Name and build date .. as you can see in the released files..

---

## Disclaimer:
**These ISOs are not the default recommended ISOs to use!**

They are not tested in the same way as the default release ISO!

You can get latest released and tested ISO here:

https://endeavouros.com/latest-release/


