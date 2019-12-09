#! /bin/bash

pkghome="/sw/pkg"
pkgname="valgrind"
pkgvers="3.15.0"
prefix="${pkghome}/${pkgname}/${pkgvers}"

./configure \
--prefix="${prefix}"
