# ISO Release Rebuilder

[![Maintenance](https://img.shields.io/maintenance/yes/2024.svg)]()

## ... on hold caused by PLASMA 6 update .... --> on wait till next ISO release ......

This is an automatic Release ISO rebuilder it will build current released ISO once a week.

[![Weekly EndeavourOS ISO rebuilds](https://github.com/endeavouros-team/Weekly-ISO-Rebuilds/actions/workflows/autobuild.yml/badge.svg?branch=main)](https://github.com/endeavouros-team/Weekly-ISO-Rebuilds/actions/workflows/autobuild.yml)

https://github.com/endeavouros-team/EndeavourOS-ISO


Will now include current needed hot-fixes on the ISO.

You will find the ISOs here:

https://github.com/endeavouros-team/Weekly-ISO-Rebuilds/releases

Check for latest release there!


Download this 3 files into one folder:

* EndeavourOS_Releasename-Date-x86_64.iso.split-aa
* EndeavourOS_Releasename-Date-x86_64.iso.split-ab
* EndeavourOS_Releasename-Date-x86_64.iso.split-ac

and run this to create ISO (combine):

```
cat Endeavouros-Releasename-Date-x86_64.iso.split-* > Endeavouros-Releasename-Date-x86_64.iso
```

You need to replace "Releasename-Date" with the current Release Name and build date .. as you can see in the released files..

---

## Disclaimer:
**These ISOs are not the default recommended ISOs to use!**

They are not tested in the same way as the default release ISO!

You can get latest released and tested ISO here:

https://endeavouros.com/latest-release/


