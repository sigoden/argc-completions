#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --author             Print only 'author'
# @flag -d --description        Print only 'description'
# @flag -l --license            Print only 'license'
# @flag -p --parameters         Print only 'parm'
# @flag -n --filename           Print only 'filename'
# @flag -0 --null               Use \0 instead of \n
# @option -F --field[author|description|license|parm|filename]  Print only provided FIELD
# @option -k --set-version[`_choice_set_version`] <VERSION>  Use VERSION instead of `uname -r`
# @option -b --basedir <DIR>    Use DIR as filesystem root for /lib/modules
# @flag -V --version            Show version
# @flag -h --help               Show this help
# @arg mod*[`_choice_mod`]

_choice_set_version() {
    ls -1 "$argc_basedir/lib/modules"
}

_choice_mod() {
    version="${argc_set_version:-`uname -r`}"
    find "$argc_basedir/lib/modules/$version/kernel/" -type f -name *.ko | \
    gawk '{split($0, parts, "/"); v=parts[length(parts)]; gsub(/.ko$/, "", v); print v}'
}

command eval "$(argc --argc-eval "$0" "$@")"