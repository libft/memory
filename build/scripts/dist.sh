#!/bin/sh

rm -rf dist
mkdir -p dist

(cd src && zip -qr ../dist/source.zip ./*)
(cd src/includes && zip -qr ../../dist/headers.zip -- *)

xargs -L1 sh build/scripts/dist-per-target.sh < build/settings/dist-target.txt
