# Complete Pattern

## Multiple values

If the number of values is not many
```sh
_choice_fn() {
  echo abc
  echo def
  echo ijk
}
```

If there is a large number of values
```sh
_choice_fn() {
  cat <<-'EOF'
abc
def
...
EOF
}
```

## Multiple values with description

```sh
_choice_fn() {
  echo -e "value\tdescribe value"
  echo -e "other value\tdescribe other value"
  echo -e "another value\tdescribe another value"
}
```

```sh
_choice_fn() {
  cat <<-'EOF' | _argc_util_transform format=:
value:          describe value"
other value:    describe other value"
another value:  describe another value"
...
EOF
}
```

## Key value pairs, keys are constants

```sh
_choice_container_ls_filter() {
_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
AddKeysToAgent=yes,ask,confirm,no
AddressFamily=any,inet,inet6
...
CertificateFile=__argc_value=file
HostKeyAlgorithms=`_choice_hostkeyalgorithms`
EOF
}
```

```sh
scp -o AddKeysToAgent=
```

## Key value pairs, keys are dynamic

choice fn for scp path
```sh
_choice_path() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _helper_host | _argc_util_transform suffix=: nospace
        _argc_util_comp_file
    else
        ssh -o 'Batchmode yes' "$argc__kv_key" command ls -a1dp "$argc__kv_filter*" 2>/dev/null \
            | _argc_util_comp_parts / "$argc__kv_filter" "$argc__kv_prefix" 
    fi
}
```

```sh
scp local:w/argc/README
```

## Multi parts

```sh
_choice_unstaged_file() {
    _git status --porcelain | awk '{
    if (substr($0, 2, 1) != " ") {
        print substr($0, 4)
    }
}' | _argc_util_comp_parts /
}
```

```sh
git add completions/
```


## Multi values seperated by a char

```sh
# @option -dropuse*|[`_choice_work_dropuse`]
_choice_work_dropuse() {
    _helper_work_json  | yq '(.Use // []) | .[].DiskPath'
}
```

```sh
go work edit -dropuse './mymod1|./mymod2
```

## Sudo-like

```sh
# @arg cmd
# @arg args~[`_choice_args`]
_choice_args() {
    _argc_util_comp_subcommand 0 
}
```