#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                          list all used devices
# @option -d --detach[`_choice_loopdev`] <loopdev+>  detach one or more devices
# @flag -D --detach-all                   detach all used devices
# @flag -f --find                         find first unused device
# @option -c --set-capacity <loopdev>     resize the device
# @option -j --associated <file>          list all devices associated with <file>
# @flag -L --nooverlap                    avoid possible conflict between devices
# @option -o --offset <num>               start at offset <num> into file
# @option --sizelimit <num>               device is limited to <num> bytes of the file
# @option -b --sector-size <num>          set the logical sector size to <num>
# @flag -P --partscan                     create a partitioned loop device
# @flag -r --read-only                    set up a read-only loop device
# @option --direct-io[on|off] <on|off>    open backing file with O_DIRECT
# @flag --show                            print device name after setup (with -f)
# @flag -v --verbose                      verbose mode
# @flag -J --json                         use JSON --list output format
# @flag -l --list                         list info about all or specified (default)
# @flag -n --noheadings                   don't print headings for --list output
# @option -O --output*,[`_choice_column`] <cols>  specify columns to output for --list
# @flag --output-all                      output all columns
# @flag --raw                             use raw --list output format
# @flag -h --help                         display this help
# @flag -V --version                      display version
# @arg loopdev

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_loopdev() {
    if [[ -z "$ARGC_CWORD" ]]; then
        ls -1 /dev/loop*
    else
        _argc_util_comp_path
    fi
}

_choice_column() {
    losetup --help | sed -n '/^Available output columns:/,/^\s*$/ {//d; s/^\s*\(\S\+\) \(.*\)/\1\t\2/p}'
}

command eval "$(argc --argc-eval "$0" "$@")"