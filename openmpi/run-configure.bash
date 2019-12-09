#! /bin/bash

pkghome="/sw/pkg"
pkgname="openmpi"
pkgvers="4.0.2"
prefix="${pkghome}/${pkgname}/${pkgvers}"

./configure \
--prefix="${prefix}" \
--with-zlib=/sw/pkg/zlib/default

if [ $? ]; then
  echo "Now run"
  echo "  make"
  echo "  make check"
  echo "  make install"
fi
