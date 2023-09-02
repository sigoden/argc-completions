#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ dconf read
# @cmd Read the value of a key
# @arg key[`_choice_key`]
read() {
    :;
}
# }} dconf read

# {{ dconf list
# @cmd List the contents of a dir
# @arg key[`_choice_group`]
list() {
    :;
}
# }} dconf list

# {{ dconf write
# @cmd Change the value of a key
# @arg key[`_choice_key`]
write() {
    :;
}
# }} dconf write

# {{ dconf reset
# @cmd Reset the value of a key or dir
# @flag -f    reset directories
# @arg key[`_choice_key`]
reset() {
    :;
}
# }} dconf reset

# {{ dconf compile
# @cmd Compile a binary database from keyfiles
# @arg output
# @arg keyfiledir
compile() {
    :;
}
# }} dconf compile

# {{ dconf update
# @cmd Update the system databases
# @arg dbdir
update() {
    :;
}
# }} dconf update

# {{ dconf watch
# @cmd Watch a path for changes
# @arg key[`_choice_key`]
watch() {
    :;
}
# }} dconf watch

# {{ dconf dump
# @cmd Dump an entire subpath to stdout
# @arg key[`_choice_group`]
dump() {
    :;
}
# }} dconf dump

# {{ dconf load
# @cmd Populate a subpath from stdin
# @flag -f    ignore changes to non-writable keys
# @arg key[`_choice_group`]
load() {
    :;
}
# }} dconf load

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_key() {
    dconf dump / | \
    gawk '{
        if (match($0, /^\[(.*)\]$/, arr)) {
            dir = "/" arr[1]
        } else if (match($0, /^\s*$/)) {
            dir = ""
        } else if (dir != "" && match($0, /^([^= ]+)=/, arr)) {
            print dir "/" arr[1]
        }
    }' | \
    _argc_util_comp_parts /
}

_choice_group() {
    dconf dump / | \
    gawk '{
        if (match($0, /^\[(.*)\]$/, arr)) {
            print "/" arr[1] "/"
        }
    }' | \
    _argc_util_comp_parts /
}

command eval "$(argc --argc-eval "$0" "$@")"