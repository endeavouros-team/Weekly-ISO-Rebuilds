Download this 4 files into one folder:

    EndeavourOS_Endeavour-2024.08.30-x86_64.iso.split-aa
    EndeavourOS_Endeavour-2024.08.30-x86_64.iso.split-ab
    EndeavourOS_Endeavour-2024.08.30-x86_64.iso.split-ac
    EndeavourOS_Endeavour-2024.08.30-x86_64.iso.sha512sum

and run this to create ISO (combine):

cat EndeavourOS_Endeavour-2024.08.30-x86_64.iso.split-* > EndeavourOS_Endeavour-2024.08.30-x86_64.iso

check the ISO shasum:

sha512sum -c EndeavourOS_Endeavour-2024.08.30-x86_64.iso.sha512sum
