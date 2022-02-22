# memory

`memset`, `memcpy`, `memcmp`, `memchr` series

Caution: `ft_memchp` replaces `memchr` to keep consistency with `stpcpy`, `strcpy`

- `stpcpy` returns `'\0'`'s position
- `ft_memchp` returns pointer to found position (which `memchr` does)
- `ft_memchr` returns index of found position, or length if not found

## Usage

To use it, you need to include its header.

```c
#include <ft/memory.h>
```

`memory` provides more functions than the standard C library. See the comment in the [header file](src/includes/ft/memory.h) for details on each function.

## Contributing

Any PR is welcome if below kept

- _**[DON'T COMMIT FILES WITH 42 HEADER NOT REMOVED](#remove-42-header)**_
- If possible, keep the [Norm](https://github.com/42School/norminette)

### pre-commit hook

Run `init.sh` to initialize git pre-commit hook.

```sh
bash init.sh
```

Note: POSIX shell is not supported. use bash instead.

It will copy `hooks/pre-commit.sh` into `.git/hooks/pre-commit`, and set execute permission on it.

#### remove 42 header

File history managed by VCS.

Just let VCS handle it, and stop polluting history :)

This pre-commit script will remove 42 header from `Makefile` and `*.{c,h,sh,mk}` files

Alternative: run shell command below **before every commit**, or never touch 42 header

```sh
find . -name '*.c' -o -name "*.h" -o -name "*.sh" -o -name "*.mk" -o -name "Makefile" \
| xargs -L1 sh hooks/scripts/42header-remover.sh
```

### dependencies

It will automatically download Github release assets for dependencies described in the `ft_header_deps.properties` file.

After change dependencies, please run `build/script/init-header-deps.sh` manually.
