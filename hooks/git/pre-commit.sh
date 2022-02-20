#!/bin/bash

git diff --exit-code --cached --name-only --diff-filter=ACM -- \
'*.c' '*.h' '*.sh' '*.mk' 'Makefile' \
| xargs -L1 sh hooks/scripts/42header-remover.sh
