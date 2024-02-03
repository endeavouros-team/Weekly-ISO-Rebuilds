ISO split in 3 parts
`7z a -v1024m -mx0 EndeavourOS-Releasename-Date.iso.7z EndeavourOS-Releasename-Date.iso`

Download all 5 files into one folder:
 
* EndeavourOS-Releasename-Date.iso.split-aa
* EndeavourOS-Releasename-Date.iso.split-ab
* EndeavourOS-Releasename-Date.iso.split-ac


# combine pieces back into an ISO


```
cat Endeavouros-Galileo-11-2023.iso.split-* > Endeavouros-Galileo-11-2023.iso
```

Using program split


# split an ISO into 1GB pieces


```
split -b1024M Endeavouros-Galileo-11-2023.iso Endeavouros-Galileo-11-2023.iso.split-
```
