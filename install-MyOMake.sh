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

MYOMAKE_DIR=$TO/MyOMake

# create MyOMake directory
mkdir -p $MYOMAKE_DIR

# copy *.om files into target directory
cp *.om  $MYOMAKE_DIR/

# Make resource directories
cp -fr src doc test $TO/
