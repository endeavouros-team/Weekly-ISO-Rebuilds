ISO split in 3 parts using 7zip

`7z a -v1024m -mx0 EndeavourOS-Releasename-Date.iso.7z EndeavourOS-Releasename-Date.iso`

Download all 5 files into one folder:

* EndeavourOS-Releasename-Date.iso.7z.001
* EndeavourOS-Releasename-Date.iso.7z.002
* EndeavourOS-Releasename-Date.iso.7z.003
* EndeavourOS-Releasename-Date.iso.iso.sha512sum
* EndeavourOS-Releasename-Date.iso.iso.sig

and run this to create ISO (combine):

```
7z x EndeavourOS-Releasename-Date.iso.7z.001
```
