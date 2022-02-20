#!/bin/sh

FILE="ft_header_deps.properties"

if [ -f "$FILE" ]
then
  while IFS='=' read -r key value
  do
    sh build/scripts/init-header-dep.sh "$key" "$value"
  done < "$FILE"
fi
