#! /bin/bash

pkghome="/sw/pkg"
pkgname="openmpi"
pkgvers="4.0.2"
prefix="${pkghome}/${pkgname}/${pkgvers}"

./configure \
--prefix="${prefix}" \
--with-zlib=/sw/pkg/zlib/default

##./configure \
##--prefix="${prefix}" \
##--with-zlib-libdir=/sw/pkg/zlib/default/lib \
##--with-lsf=/lsf/10.1 \
##--with-lsf-libdir=/lsf/10.1/linux3.10-glibc2.17-x86_64/lib


if [ $? ]; then
  echo "Now run"
  echo "  make"
  echo "  make check"
  echo "  make install"
fi
