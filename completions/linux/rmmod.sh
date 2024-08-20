#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f --force      forces a module unload and may crash your machine.
# @flag -s --syslog     print to syslog, not stderr
# @flag -v --verbose    enables more messages
# @flag -V --version    show version
# @flag -h --help       show this help
# @arg modulename[`_choice_mod`]

_choice_mod() {
    version=`uname -r`
    find "/lib/modules/$version/kernel/" -type f -name *.ko | \
    gawk '{split($0, parts, "/"); v=parts[length(parts)]; gsub(/.ko$/, "", v); print v}'
}

command eval "$(argc --argc-eval "$0" "$@")"