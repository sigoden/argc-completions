#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                                  wipe all magic strings (BE CAREFUL!)
# @flag -b --backup                               create a signature backup in $HOME
# @flag -f --force                                force erasure
# @flag -i --noheadings                           don't print headings
# @flag -J --json                                 use JSON output format
# @flag -n --no-act                               do everything except the actual write() call
# @option -o --offset <num>                       offset to erase, in bytes
# @option -O --output[`_choice_column`] <list>    COLUMNS to display (see below)
# @flag -p --parsable                             print out in parsable instead of printable format
# @flag -q --quiet                                suppress output messages
# @option -t --types <list>                       limit the set of filesystem, RAIDs or partition tables
# @option --lock[yes|no|nonbloc] <mode>           use exclusive device lock (yes, no or nonblock)
# @flag -h --help                                 display this help
# @flag -V --version                              display version
# @arg device-path

_choice_column() {
    wipefs --help | sed -n '/^Available output columns:/,/^\s*$/ {//d; s/^\s*\(\S\+\) \(.*\)/\1\t\2/p}'
}

command eval "$(argc --argc-eval "$0" "$@")"