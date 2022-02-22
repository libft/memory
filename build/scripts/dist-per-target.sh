#!/bin/sh

echo "Building for $1..."

if ! (cd build/release/target/a && TARGET_TRIPLE="$1" make re)
then
  echo "Failed to build .a for target $1"
  exit 1
fi

if ! (cd build/release/target/so && TARGET_TRIPLE="$1" make re)
then
  echo "Failed to build .so for target $1"
  exit 1
fi

TMPFILE=$(mktemp -d)
trap 'rm -rf -- "$TMPFILE"' EXIT

cp -r src/includes "$TMPFILE/includes"
cp build/release/target/a/lib*.a "$TMPFILE"
cp build/release/target/so/lib*.so "$TMPFILE"

(cd "$TMPFILE" && zip -qr "release-$1.zip" lib*.a lib*.so includes)
cp "$TMPFILE/release-$1.zip" dist
