#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                      this help
# @flag -V --version                   show this program's version
# @flag -a --auto                      only match against interfaces hinted as 'auto'
# @option -I --include <PATTERN>       only match against interfaces matching PATTERN
# @option -X --exclude <PATTERN>       never match against interfaces matching PATTERN
# @flag -f --force                     force (de)configuration
# @option -i --interfaces <FILE>       use FILE for interface definitions
# @flag -l --no-lock                   do not use a lockfile to serialize state changes
# @flag -n --no-act                    do not actually run any commands
# @flag -v --verbose                   show what commands are being run
# @option -E --executor-path <PATH>    use PATH for executor directory
# @option -S --state-file <FILE>       use FILE for state
# @arg interfaces+[`_module_os_network_interface`]

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"