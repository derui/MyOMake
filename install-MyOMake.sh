#!/bin/sh
# Simple preparing using MyOMake with your products.
# Please execute this script in MyOMake directory.
# Example:
#
# ./copy-MyOMake.sh ../test
#

TO=$1

function usage() {
    echo "./install-MyOMake <to directory>"
}

if [ "$TO" = "" ]; then
    usage
    exit 1
fi

# copy default gitignore to .gitignore on target directory
cp gitignore $TO/.gitignore

cp OMakefile OMakeroot $TO/
mkdir -p $TO/MyOMake
cp *.om $TO/MyOMake
