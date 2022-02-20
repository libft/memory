#!/bin/bash

# FILE_NAME="$(basename $1)$(printf %45s)" # uncomment when norminette starts complain it
FILE_NAME="fake_file_name (file name is useless too)    "
FILE_NAME_45="${FILE_NAME:0:45}";
PLACEHOLDER="PLACEHOLDER_FOR_FILE_NAME_UP_TO_45_CHARACTERS"

head -11 < $1 | grep -Eo ".{25}$" | diff hooks/assets/42header-c-form-11x25.txt - > /dev/null
if [ $? -eq 0 ]; then
  sed "s/$PLACEHOLDER/$FILE_NAME_45/" < hooks/assets/42header-c-template.txt > $1.tmp
  tail -n +12 $1 >> $1.tmp
  mv $1 $1.bak
  mv $1.tmp $1
  rm $1.bak
  git add $1
  echo "$1 has 42header - removed" 1>&2
fi

head -11 < $1 | grep -Eo ".{25}$" | diff hooks/assets/42header-t-form-11x25.txt - > /dev/null
if [ $? -eq 0 ]; then
  sed "s/$PLACEHOLDER/$FILE_NAME_45/" < hooks/assets/42header-t-template.txt > $1.tmp
  tail -n +12 $1 >> $1.tmp
  mv $1 $1.bak
  mv $1.tmp $1
  rm $1.bak
  git add $1
  echo "$1 has 42header - removed" 1>&2
fi
