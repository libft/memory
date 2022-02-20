#!/bin/sh

cd "$1" || exit 1
find . -name "*.c" | sed s/^\\.\\///
