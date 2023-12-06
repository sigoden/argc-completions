#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option -o[plain|save|xml|json]    Specify output mode for listing sets.
# @flag -s                           Print elements sorted (if supported by the set type).
# @flag -q                           Suppress any notice or warning message.
# @flag -r                           Try to resolve IP addresses in the output (slow!)
# @flag -!                           Ignore errors when creating or adding sets or elements that do exist or when deleting elements that don't exist.
# @flag -n                           When listing, just list setnames from the kernel.
# @flag -t                           When listing, list setnames and set headers from kernel only.
# @flag -f                           Read from the given file instead of standard input (restore) or write to given file instead of standard output (list/save).

# {{ ipset create
# @cmd Create a new set
# @arg setname[`_choice_setname`]
# @arg typename
create() {
    :;
}
# }} ipset create

# {{ ipset add
# @cmd Add entry to the named set
# @arg setname[`_choice_setname`]
# @arg entry
add() {
    :;
}
# }} ipset add

# {{ ipset del
# @cmd Delete entry from the named set
# @arg setname[`_choice_setname`]
# @arg entry
del() {
    :;
}
# }} ipset del

# {{ ipset test
# @cmd Test entry in the named set
# @arg setname[`_choice_setname`]
# @arg entry
test() {
    :;
}
# }} ipset test

# {{ ipset destroy
# @cmd Destroy a named set or all sets
# @arg setname[`_choice_setname`]
destroy() {
    :;
}
# }} ipset destroy

# {{ ipset list
# @cmd List the entries of a named set or all sets
# @arg setname[`_choice_setname`]
list() {
    :;
}
# }} ipset list

# {{ ipset save
# @cmd Save the named set or all sets to stdout
# @arg setname[`_choice_setname`]
save() {
    :;
}
# }} ipset save

# {{ ipset restore
# @cmd Restore a saved state
restore() {
    :;
}
# }} ipset restore

# {{ ipset flush
# @cmd Flush a named set or all sets
# @arg setname[`_choice_setname`]
flush() {
    :;
}
# }} ipset flush

# {{ ipset rename
# @cmd FROM-SETNAME TO-SETNAME Rename two sets
# @arg from-setname
# @arg to-setname
rename() {
    :;
}
# }} ipset rename

# {{ ipset swap
# @cmd FROM-SETNAME TO-SETNAME Swap the contect of two existing sets
# @arg from-setname
# @arg to-setname
swap() {
    :;
}
# }} ipset swap

# {{ ipset version
# @cmd Print version information
version() {
    :;
}
# }} ipset version

# {{ ipset quit
# @cmd Quit interactive mode
quit() {
    :;
}
# }} ipset quit

_choice_setname() {
    ipset list --name 2>/dev/null
}

command eval "$(argc --argc-eval "$0" "$@")"