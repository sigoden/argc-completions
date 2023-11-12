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
ijk
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
group1    gruop2    group3
```

## Tag value pairs

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

### Use argc modifier
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

## Use _argc_util_comp_multi

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

## Sudo-like subcommands

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
workspace() {
    :;
}

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