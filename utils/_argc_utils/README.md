# utility functions for `_choice_*`

## Path Utils
### `_argc_util_path_search_parent`

Search for a file by traversing the directory tree upwards starting from the current directory.

Use `-p` to return the parent directory, not the file itself.

```sh
_argc_util_path_search_parent package.json
_argc_util_path_search_parent deno.json deno.jsonc
_argc_util_path_search_parent -p package.json  # folder contains package.json
```

### `_argc_util_path_resolve`

Resolve paths, including converting paths to specific formats, concatenating paths, cleaning paths.

Args:

- `-p`: Convert paths to windows format on windows and to unix format on unix.
- `-u`: Convert path to unix format.

```sh
_argc_util_path_resolve /home/alice gh/argc                 # /home/alice/gh/argc
_argc_util_path_resolve C:\\Users\\alice gh\\argc           # C:\Users\alice\gh\argc
_argc_util_path_resolve -u C:\\Users\\alice gh\\argc        # /c/Users/alice/gh/argc
_argc_util_path_resolve -p /home/alice gh/argc              # C:\Users\alice\gh\argc (windows); /home/alice/gh/argc (non-windows)
_argc_util_path_resolve argc/src ../tests                   # understand ..
_argc_util_path_resolve argc/src .//tests/                  # cleaning extra / 
pwd | _argc_util_path_resolve -p                            # accept pipe
```

## Param Utils

### `_argc_util_param_get_positional`

Get a positional argument.

```sh
_argc_util_param_get_positional 0    # get first
_argc_util_param_get_positional 1    # get second
_argc_util_param_get_positional 4    # get fifth
_argc_util_param_get_positional -1   # get last
_argc_util_param_get_positional len  # get length
```

### `_argc_util_param_select_options`

Select options present on the command line.

```sh
_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

_docker() {
    docker $(_argc_util_param_select_options --host --config --context) "$@"
}
```

## Comp Utils 

### `_argc_util_comp_parts`

Complete multiple parts of words separated by a char

```sh
git ls-files | _argc_util_comp_parts /
```

### `_argc_util_comp_kv`

Complete key value pairs

```sh
_choice_fn() {
    cat <<-'EOF' | _argc_util_comp_kv =
foo=yes,no
bar=v1,v2,v3
baz=_argc_comp:file
qux=`_choice_fn2`
EOF
}
```

### `_argc_util_comp_subcommand`

Complete subcommand for something like `sudo`/`npx`.

Usage: `_argc_util_comp_subcommand positionals_start_index [prepened-args...]`

```sh
# @arg cmd
# @arg args~[`_choice_args`]
_choice_args() {
    _argc_util_comp_subcommand 0 
}
```