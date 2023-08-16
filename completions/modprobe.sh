#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                 Consider every non-argument to be a module name to be inserted or removed (-r)
# @flag -r --remove              Remove modules instead of inserting
# @flag --remove-dependencies    Also remove modules depending on it
# @flag -R --resolve-alias       Only lookup and print alias and exit
# @flag --first-time             Fail if module already inserted or removed
# @flag -i --ignore-install      Ignore install commands
# @flag --ignore-remove          Ignore remove commands
# @flag -b --use-blacklist       Apply blacklist to resolved alias.
# @flag -f --force               Force module insertion or removal.
# @flag --force-modversion       Ignore module's version
# @flag --force-vermagic         Ignore module's version magic
# @flag -D --show-depends        Only print module dependencies and exit
# @flag -c --showconfig          Print out known configuration and exit
# @flag --show-config            Same as --showconfig
# @flag --show-modversions       Dump module symbol version and exit
# @flag --dump-modversions       Same as --show-modversions
# @flag --show-exports           Only print module exported symbol versions and exit
# @flag -n --dry-run             Do not execute operations, just print out
# @flag --show                   Same as --dry-run
# @option -C --config <FILE>     Use FILE instead of default search paths
# @option -d --dirname <DIR>     Use DIR as filesystem root for /lib/modules
# @option -S --set-version[`_choice_set_version`] <VERSION>  Use VERSION instead of `uname -r`
# @flag -s --syslog              print to syslog, not stderr
# @flag -q --quiet               disable messages
# @flag -v --verbose             enables more messages
# @flag -V --version             show version
# @flag -h --help                show this help
# @arg mod*[`_choice_mod`]

_choice_set_version() {
    ls -1 "$argc_basedir/lib/modules"
}

_choice_mod() {
    if [[ -n "$argc_remove" ]]; then
        lsmod | gawk '{if(NR>1) { print $1}}'
        return
    fi
    version="${argc_set_version:-`uname -r`}"
    find "$argc_basedir/lib/modules/$version/kernel/" -type f -name *.ko | \
    gawk '{split($0, parts, "/"); v=parts[length(parts)]; gsub(/.ko$/, "", v); print v}'
}

command eval "$(argc --argc-eval "$0" "$@")"