#!/usr/bin/env bash

ROOTDIR=`pwd`

rm -rf build
rm -rf dist

DISTFOLDER=$ROOTDIR/dist
BUILDFOLDER=$ROOTDIR/build
mkdir -p $BUILDFOLDER
cd $BUILDFOLDER

cmake -DCMAKE_INSTALL_PREFIX=$DISTFOLDER $ROOTDIR || exit 1

make 
make install