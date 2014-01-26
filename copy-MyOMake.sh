#!/bin/sh
# Simple preparing using MyOMake with your products.
# Please execute this script in MyOMake directory.
# Example:
#
# ./copy-MyOMake.sh ../test
#

TO=$1
MYOMAKE_DIR=$TO/MyOMake

# create MyOMake directory
mkdir -p $MYOMAKE_DIR

# copy *.om files into target directory
cp *.om  $MYOMAKE_DIR/

# Make resource directories
mkdir $TO/src $TO/test
