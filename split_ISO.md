ISO split in 3 parts using 7zip

`7z a -v1024m -mx0 EndeavourOS-Releasename-Date.iso.7z EndeavourOS-Releasename-Date.iso`

Download all 5 files into one folder:

* EndeavourOS-Releasename-Date.iso.7z.001
* EndeavourOS-Releasename-Date.iso.7z.002
* EndeavourOS-Releasename-Date.iso.7z.003

and run this to create ISO (combine):

```
7z x EndeavourOS-Releasename-Date.iso.7z.001
```

Using program split instead of 7z because split is readily available in coreutils. Also, to me it seems simpler to use:

Usage:

# split an ISO into 1GB pieces


```
split -b1024M Endeavouros-Galileo-11-2023.iso Endeavouros-Galileo-11-2023.iso.split-

```

# combine pieces back into an ISO


```
cat Endeavouros-Galileo-11-2023.iso.split-* > Endeavouros-Galileo-11-2023.iso

```
