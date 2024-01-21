ISO split in 3 parts using 7zip

`7z a -v1024m -mx0 EndeavourOS-Galileo-2024.01.21.iso.7z EndeavourOS-Galileo-Neo-2024.01.21.iso`

Download all 5 files into one folder:

* EndeavourOS-Galileo-2024.01.21.iso.7z.001
* EndeavourOS-Galileo-2024.01.21.iso.7z.002
* EndeavourOS-Galileo-2024.01.21.iso.7z.003
* EndeavourOS-Galileo-2024.01.21.iso.iso.sha512sum
* EndeavourOS-Galileo-2024.01.21.iso.iso.sig

and run this to create ISO (combine):

```
7z x EndeavourOS-Galileo-2024.01.21.iso.7z.001
```
