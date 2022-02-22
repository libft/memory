#!/bin/sh

TMPFILE=$(mktemp)
trap 'rm -rf -- "$TMPFILE"' EXIT
DOWNLOAD_URL="https://github.com/libft/$1/releases/download/$2/release.zip"
curl -L -o "$TMPFILE" "$DOWNLOAD_URL"
unzip -o "$TMPFILE" -d ".ft_cache/dependencies"
