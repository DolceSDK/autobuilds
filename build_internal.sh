#!/usr/bin/env bash
cd buildscripts
case "${SDK_TARGET}" in
    WIN)
unset CXX
unset CC
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=toolchain-x86_64-w64-mingw32.cmake
make -j$(nproc) tarball
      ;;
    *)
mkdir build
cd build
cmake ..
make -j$(nproc) tarball
      ;;
esac
