#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --hostlast            display hostnames in the last column
# @flag -d --dns                 translate the IP number back into a hostname
# @option -f --file <file>       use a specific file instead of /var/log/btmp
# @flag -F --fulltimes           print full login and logout times and dates
# @flag -i --ip                  display IP numbers in numbers-and-dots notation
# @option -n --limit <number>    how many lines to show
# @flag -R --nohostname          don't display the hostname field
# @option -s --since <time>      display the lines since the specified time
# @option -t --until <time>      display the lines until the specified time
# @option -p --present <time>    display who were present at the specified time
# @flag -w --fullnames           display full user and domain names
# @flag -x --system              display system shutdown entries and run level changes
# @option --time-format[notime|short|full|iso] <format>  show timestamps in the specified <format>: notime|short|full|iso
# @flag -h --help                display this help
# @flag -V --version             display version
# @arg user-or-tty*[`_choice_value`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_value() {
    _argc_util_parallel _choice_user ::: _choice_tty
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_tty() {
    ps aux | gawk '{ if ($7 != "?" && NR > 1) {print $7} }'
}

command eval "$(argc --argc-eval "$0" "$@")"