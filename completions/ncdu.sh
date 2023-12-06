#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                       This help message
# @flag -q                              Quiet mode, refresh interval 2 seconds
# @flag -v                              Print version
# @flag -V                              Print version
# @flag --version                       Print version
# @flag -x                              Same filesystem
# @flag -e                              Enable extended information
# @flag -r                              Read only
# @option -o <FILE>                     Export scanned directory to FILE
# @option -f <FILE>                     Import scanned directory from FILE
# @flag -0                              UI to use when scanning (0=none,2=full ncurses)
# @flag -1                              UI to use when scanning (0=none,2=full ncurses)
# @flag -2                              UI to use when scanning (0=none,2=full ncurses)
# @flag --si                            Use base 10 (SI) prefixes instead of base 2
# @option --exclude <PATTERN>           Exclude files that match PATTERN
# @option -X --exclude-from <FILE>      Exclude files that match any pattern in FILE
# @flag -L --follow-symlinks            Follow symbolic links (excluding directories)
# @flag --exclude-caches                Exclude directories containing CACHEDIR.TAG
# @flag --exclude-kernfs                Exclude Linux pseudo filesystems (procfs,sysfs,cgroup,...)
# @flag --confirm-quit                  Confirm quitting ncdu
# @option --color[off|dark] <SCHEME>    Set color scheme (off/dark/dark-bg)
# @flag --ignore-config                 Don't load config files

command eval "$(argc --argc-eval "$0" "$@")"