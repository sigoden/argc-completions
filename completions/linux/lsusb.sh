#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose
# @option -s[`_choice_s`] <[[bus]:][devnum]>
# @option -d[`_choice_d`] <vendor:[product]>
# @option -D <path>
# @flag -t --tree
# @flag -V --version
# @flag -h --help

_choice_s() {
    lsusb | gawk '{x=""; for (i=7; i<=NF; i++) x= x " " $i; gsub(/:$/, "", $4); print $2 ":" $4 "\t" x}'
}

_choice_d() {
    lsusb | gawk '{x=""; for (i=7; i<=NF; i++) x= x " " $i; print $6 "\t" x}'
}

command eval "$(argc --argc-eval "$0" "$@")"