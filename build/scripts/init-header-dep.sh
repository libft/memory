#!/bin/sh

mkdir -p .ft_cache/dependencies/includes
TMPFILE=$(mktemp)
DOWNLOAD_URL="https://github.com/libft/$1/releases/download/$2/headers.zip"
curl -L -o "$TMPFILE" "$DOWNLOAD_URL"
unzip -o "$TMPFILE" -d ".ft_cache/dependencies/includes"
