#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --arguments           show command line arguments
# @flag -A --ascii               use ASCII line drawing characters
# @flag -c --compact-not         don't compact identical subtrees
# @option -C --color <TYPE>      color process by attribute (age)
# @flag -g --show-pgids          show process group ids; implies -c
# @flag -G --vt100               use VT100 line drawing characters
# @flag -h --highlight-all       highlight current process and its ancestors
# @option -H --highlight-pid[`_module_os_pid`] <PID>  highlight this process and its ancestors
# @flag -l --long                don't truncate long lines
# @flag -n --numeric-sort        sort output by PID
# @option -N --ns-sort[cgroup|ipc|mnt|net|pid|time|user|uts] <TYPE>  sort output by this namespace type
# @flag -p --show-pids           show PIDs; implies -c
# @flag -s --show-parents        show parents of the selected process
# @flag -S --ns-changes          show namespace transitions
# @flag -t --thread-names        show full thread names
# @flag -T --hide-threads        hide threads, show only processes
# @flag -u --uid-changes         show uid transitions
# @flag -U --unicode             use UTF-8 (Unicode) line drawing characters
# @flag -V --version             display version information
# @flag -Z --security-context    show security attributes
# @arg pid-user[`_choice_pid_user`] <PID|USER>

_choice_pid_user() {
    _module_os_pid
    _module_os_user
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

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"