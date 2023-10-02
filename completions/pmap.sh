#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -x --extended                    show details
# @flag -X                               show even more details WARNING: format changes according to /proc/PID/smaps
# @flag -XX                              show everything the kernel provides
# @flag -c --read-rc                     read the default rc
# @option -C --read-rc-from <file>       read the rc from file
# @flag -n --create-rc                   create new default rc
# @option -N --create-rc-to <file>       create new rc to file NOTE: pid arguments are not allowed with -n, -N
# @flag -d --device                      show the device format
# @flag -q --quiet                       do not display header and footer
# @flag -p --show-path                   show path in the mapping
# @option -A --range <<low>[,<high>]>    limit results to the given range
# @flag -h --help                        display this help and exit
# @flag -V --version                     output version information and exit
# @arg pid*[`_module_os_pid`]

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"