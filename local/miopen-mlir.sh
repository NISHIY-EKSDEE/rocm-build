#!/bin/bash

set -e

mkdir -p $ROCM_BUILD_DIR/miopen-mlir
cd $ROCM_BUILD_DIR/miopen-mlir
pushd .
pushd .

START_TIME=`date +%s`

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCPACK_PACKAGING_INSTALL_PREFIX=$ROCM_INSTALL_DIR \
    -DCPACK_GENERATOR=DEB \
    -DCPACK_DEBIAN_PACKAGE_MAINTAINER=amd \
    -DCMAKE_INSTALL_PREFIX=$ROCM_INSTALL_DIR \
    -DBUILD_FAT_LIBMLIRMIOPEN=1 \
    -G Ninja \
    /home/work/llvm-project-mlir
ninja
ninja package
sudo dpkg -i *.deb

END_TIME=`date +%s`
EXECUTING_TIME=`expr $END_TIME - $START_TIME`
echo "elapse : "$EXECUTING_TIME"s"

popd

