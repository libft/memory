#!/bin/sh

mkdir -p .ft_cache/dependencies

FILE="ft_deps.properties"
if [ -f "$FILE" ]
then
  while IFS='=' read -r key value
  do
    sh build/scripts/init-dependency.sh "$key" "$value"
  done < "$FILE"
fi
