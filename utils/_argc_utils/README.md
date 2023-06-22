# utility functions for `_choice_*`

## Path Utils
### `_argc_util_path_join`

It use `\` to join path in windows OS, use `/` to join path in none-windows OS.

```sh
# window os
_argc_util_path_join C:\\Users\\alice dir file # C:\Users\alice\dir\file

# other os
_argc_util_path_join /home/alice dir file # /home/alice/dir/file
```

### `_argc_util_path_search_parent`

Search for a file by traversing the directory tree upwards starting from the current directory.

```sh
_argc_util_path_search_parent package.json
_argc_util_path_search_parent deno.json deno.jsonc
```

### `_argc_util_path_to_platform`

Convert a path to the appropriate form depends on platform kind.

```sh
pwd | _argc_util_path_to_platform
_argc_util_path_to_platform $(pwd)
```

### `_argc_util_path_to_unix`

Convert a path to the unix form, since bash can only handle unix-form paths.

```sh
npm root | _argc_util_path_join
_argc_util_path_join $(npm root)
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