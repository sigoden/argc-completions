#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --delay <secs>                   delay updates
# @flag -o --once                             only display once, then exit
# @option -s --sort[`_choice_sort`] <char>    specify sort criteria by character (see below)
# @flag -h --help                             display this help and exit
# @flag -V --version                          output version information and exit

_choice_sort() {
    slabtop -h | \
    sed -n '/The following are valid sort criteria:/,/^\s*$/ s/^ \(\S\): \(.*\)/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"