#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --delay <secs>    update delay in seconds
# @option -s --scale <num>     vertical scale
# @flag -h --help              display this help and exit
# @flag -V --version           output version information and exit
# @arg tty[`_module_os_tty`]

_module_os_tty() {
    command ps aux | gawk '{ if ($7 != "?" && NR > 1) {print $7 "\t" $1} }'
}

command eval "$(argc --argc-eval "$0" "$@")"