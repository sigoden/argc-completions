# Complete Pattern

## Multiple values

```sh
_choice_fn() {
  printf "%s\n" abc def ijk
}
```

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
  cat <<-'EOF'
value	describe value"
other value	describe other value"
another value	describe another value"
...
EOF
}
```

## Key value pairs, keys are constants

```sh
_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
AddKeysToAgent=yes,ask,confirm,no
AddressFamily=any,inet,inet6
CertificateFile=__argc_value=file
HostKeyAlgorithms=`_choice_hostkeyalgorithms`
EOF
}
```

```
$ scp -o <tab>
AddKeysToAgent=   AddressFamily=    CertificateFile=    HostKeyAlgorithms=

$ scp -o AddKeysToAgent=
yes   ask   confirm   no
```

## Key value pairs, keys are dynamic

choice fn for chown user:group
```sh
_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _helper_user | _argc_util_transform suffix=: nospace
    else
        _helper_group
    fi
}
```

```
$ scp <tab>
user1:    user2:    user3:

$ scp user1:<tab>
group1    gruop2    group3
```

## Multi parts

```sh
_choice_unstaged_file() {
    _git status --porcelain | gawk '{
    if (substr($0, 2, 1) != " ") {
        print substr($0, 4)
    }
}' | _argc_util_comp_parts /
}
```

```
$ git add completions/<tab>
cargo   git.sh    go.sh   
```

If you don't set multi parts. The completions will be

```
$ git add completions/<tab>
completions/cargo/audit.sh
completions/cargo/binstall.sh
completions/git.sh
completions/go.sh
```

## Multi values seperated by a char

```sh
# @option -dropuse*|[`_choice_work_dropuse`]
_choice_work_dropuse() {
    _helper_work_json  | yq '(.Use // []) | .[].DiskPath'
}
```

```
$ go work edit -dropuse <tab>
./mymod1  ./mymod2  ./mymod3

$ go work edit -dropuse './mymod1|<tab>
./mymod2  ./mymod3
```

## Sudo-like

```sh
# @cmd Run the chosen Yarn command in the selected workspace.
# @arg workspace-name
# @arg workspace-args~[`_choice_workspace_args`]
workspace() { :; }

_choice_workspace_args() {
    (cd "$workspace_location" && _argc_util_comp_subcommand 1 yarn)
}
```

```
$ yarn <tab>
add   remove    ...

$ yarn workspace react <tab>
add   remove    ...
```