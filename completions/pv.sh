#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -p --progress                         show progress bar
# @flag -t --timer                            show elapsed time
# @flag -e --eta                              show estimated time of arrival (completion)
# @flag -I --fineta                           show absolute estimated time of arrival (completion)
# @flag -r --rate                             show data transfer rate counter
# @flag -a --average-rate                     show data transfer average rate counter
# @option -m --average-rate-window <SEC>      compute average rate over past SEC seconds (default 30s)
# @flag -b --bytes                            show number of bytes transferred
# @flag -8 --bits                             show number of bits transferred
# @flag -T --buffer-percent                   show percentage of transfer buffer in use
# @option -A --last-written <NUM>             show NUM bytes last written
# @option -F --format                         set output format to FORMAT
# @flag -n --numeric                          output percentages, not visual information
# @flag -q --quiet                            do not output any transfer information at all
# @flag -W --wait                             display nothing until first byte transferred
# @option -D --delay-start <SEC>              display nothing until SEC seconds have passed
# @option -s --size                           set estimated data size to SIZE bytes
# @flag -l --line-mode                        count lines instead of bytes
# @flag -0 --null                             lines are null-terminated
# @option -i --interval <SEC>                 update every SEC seconds
# @option -w --width                          assume terminal is WIDTH characters wide
# @option -H --height                         assume terminal is HEIGHT rows high
# @option -N --name                           prefix visual information with NAME
# @flag -f --force                            output even if standard error is not a terminal
# @flag -c --cursor                           use cursor positioning escape sequences
# @option -L --rate-limit <RATE>              limit transfer to RATE bytes per second
# @option -B --buffer-size <BYTES>            use a buffer size of BYTES
# @flag -C --no-splice                        never use splice(), always use read/write
# @flag -E --skip-errors                      skip read errors in input
# @option -Z --error-skip-block <BYTES>       skip errors in BYTES blocks at a time
# @flag -S --stop-at-size                     stop after --size bytes have been transferred
# @flag -Y --sync                             flush cache to disk after every write
# @flag -K --direct-io                        use direct I/O to bypass cache
# @flag -X --discard                          discard input instead of writing to output
# @option -R --remote[`_choice_pid`] <PID>    update settings of process PID
# @option -P --pidfile <FILE>                 save process ID in FILE
# @option -d --watchfd <PID[:FD]>             watch file FD opened by process PID
# @flag -h --help                             show this help and exit
# @flag -V --version                          show version information and exit
# @arg file*

_choice_pid() {
    _module_os_pid | sed -n '/\tpv$/ p'
}

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