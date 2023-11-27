# Complete Patterns

## File/path/directory

1. Use argc sematic

```sh
# @option --output <file>
# @option --cwd <dir>
# @option --file
# @arg path...
```

Automatically determine based on `<file>`, `<dir>`, `--file`, `path`, etc.

2. Use `_argc_util_comp_path`

```sh
_choice_fn() {
    _argc_util_comp_path
}
```

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
ijk
EOF
}
```

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

```sh
_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform suffix=: nospace
    else
        _module_os_group
    fi
}
```

```
$ scp <tab>
user1:    user2:    user3:

$ scp user1:<tab>
group1    group2    group3
```

## Tag value pairs

The preceding position argument determines how to complete the following position argument.

```sh
_choice_address_add() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;the name of the device to add the address to.
local=;;the address of the interface.
peer=;;the address of the remote endpoint for pointopoint interfaces.
broadcast=;;the broadcast address on the interface.
label=;;Each address may be tagged with a label string.
scope=`_choice_ip_scope`;;the scope of the area where this address is valid.
EOF
}
```

```
$ ip address add 33.33.33.33 dev <tab>
lo      wlp0s20f3     enp0s31f6  

$ ip address add 33.33.33.33 scope <tab>
0 (global)     255 (nowhere)  200 (site) 
```

## Multiple parts

Complete values that are divided into sections by level, such as paths.

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

## Multiple values

Multiple values are separated by `,` `|` and so on.

### Use argc modifier
```sh
# @option -dropuse*|[`_choice_work_dropuse`]
_choice_work_dropuse() {
    _helper_work_json  | yq '(.Use // []) | .[].DiskPath'
}
```

> `*|` indicates that the option can occur multiple times and is separated by a "|" symbol.

```
$ go work edit -dropuse <tab>
./mymod1  ./mymod2  ./mymod3

$ go work edit -dropuse './mymod1|<tab>
./mymod2  ./mymod3
```

### Use `_argc_util_comp_multi`

```sh
# @option -type[`_choice_type`] <c>             File is of type c
_choice_type() {
    cat <<-'EOF' | _argc_util_comp_multi ,
b	block (buffered) special
c	character (unbuffered) special
d	directory
p	named pipe (FIFO)
f	regular file
l	symbolic link
s	socket
D	door (Solaris)
EOF
}
```

```
$ find . -type <tab>
b   c   d   ..


$ find . -type f,<tab>
b   c   d   ..
```

## Delegate to other command

```sh
# @arg cmd
# @arg args~[`_choice_args`]

_choice_args() {
    _argc_util_comp_subcommand 0
}
```

```
$ sudo ls --
```

```sh
# @arg workspace-name![`_choice_workspace`]
# @arg workspace-args~[`_choice_workspace_args`]

_choice_workspace_args() {
    (cd "$workspace" && _argc_util_comp_subcommand 1 yarn)
}
```

```
$ yarn <tab>
add   remove    ...

$ yarn workspace react <tab>
add   remove    ...
```

## Prefixed option

```sh
# @option -X-*[`_choice_option`]                pass additional options to JVM

_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv ':'
batch;;Disables background compilation.
bootclasspath=`_choice_boot_class_path`;;Specifies a list of directories
EOF
}
```

```
$ java -X<tab>
batch   bootclasspath:
```

## Symbol parameter

```sh
# @meta symbol +toolchain[`_choice_toolchain`]

_choice_toolchain() {
    echo table
    echo nightly
}
```

```
$ cargo +<tab>
table   nightly
```