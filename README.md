# \[name\]

## Contributing

Any PR is welcome if below is kept

- _**[DON'T COMMIT FILES WITH 42 HEADER NOT REMOVED](#remove-42-header)**_
- If possible, keep the [Norm](https://github.com/42School/norminette)

### pre-commit hook

Run `init.sh` to initialize git pre-commit hook.

```sh
sh init.sh
```

It will copy `hooks/pre-commit.sh` into `.git/hooks/pre-commit`, and set execute permission on it.

#### remove 42 header

File history is handled really great by git.

Just let VCS handle it, and stop polluting history :)

This pre-commit script will remove 42 header from `Makefile` and `*.{c,h,sh,mk}` files

Alternative: run shell command below **before every commit**, or never touch 42 header

```sh
find . -name '*.c' -o -name "*.h" -o -name "*.sh" -o -name "*.mk" -o -name "Makefile" \
| xargs -L1 sh hooks/scripts/42header-remover.sh
```
