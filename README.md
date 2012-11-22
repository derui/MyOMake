MyOMake
=======

My OMakefiles to be used to my OCaml products

When use script in this project, copy MyOMake directory whole into your project root directory and
write following sentense to OMakeroot.

OMAKEPATH += $(dir ./MyOMake)

After write it to OMakeroot, you write `open MyOCaml' or others into your OMakefile when want to use them.
