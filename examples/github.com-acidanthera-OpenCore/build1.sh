#!/bin/bash -xe

# building RELEASE
exec docker run --rm \
    -e CFLAGS=-Wno-error \
    -e TOOLCHAIN=CLANG38 \
    -e ADDPATH=/usr/lib/llvm-13/bin \
    -e BUILD_TARGET=RELEASE \
    -e DSC_PATH=OpenCorePkg/OpenCorePkg.dsc \
    -v "$PWD/OpenCorePkg/:/home/edk2/edk2/OpenCorePkg/" \
    -v "$PWD/out:/home/edk2/Build" \
    xaionaro2/edk2-builder:AcidantheraAUDK