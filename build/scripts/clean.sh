#!/bin/sh

find . -type f -a \( -name "*.o" -o -name "*.d" \) -delete
find . -type d -empty -delete
