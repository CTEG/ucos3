#!/bin/sh

BUILDDIR="cmake-build"

if [ -d ${BUILDDIR} ]
then
    echo "start building"
else
    echo "mkdir output dir"
    mkdir ${BUILDDIR}
    echo "start building"
fi

rm -rf ./${BUILDDIR}/*
cd ${BUILDDIR}

cmake .. #-DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake ..
make VERBOSE=0
echo "build done"
