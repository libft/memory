#!/bin/sh

echo "$1" | sed "s#^#$2/#" | sed "s#.o\$#.c#"
