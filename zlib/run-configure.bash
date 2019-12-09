#! /bin/bash

pkghome="/sw/pkg"
pkgname="zlib"
pkgvers="1.2.11"
prefix="${pkghome}/${pkgname}/${pkgvers}"

./configure \
--prefix="${prefix}" \
--static

if [ $? ]; then
  echo "Now run"
  echo "  make CFLAGS=\"-O -fPIC\" && make install"
fi
