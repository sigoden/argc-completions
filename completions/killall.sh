#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --exact                            require exact match for very long names
# @flag -I --ignore-case                      case insensitive process name match
# @flag -g --process-group                    kill process group instead of process
# @flag -y --younger-than                     kill processes younger than TIME
# @flag -o --older-than                       kill processes older than TIME
# @flag -i --interactive                      ask for confirmation before killing
# @flag -l --list                             list all known signal names
# @flag -q --quiet                            don't print complaints
# @flag -r --regexp                           interpret NAME as an extended regular expression
# @option -s --signal[`_module_os_signal`]    send this signal instead of SIGTERM
# @option -u --user[`_module_os_user`]        kill only process(es) running as USER
# @flag -v --verbose                          report if the signal was successfully sent
# @flag -V --version                          display version information
# @flag -w --wait                             wait for processes to die
# @option -n --ns[`_module_os_pid`] <PID>     match processes that belong to the same namespaces as PID
# @flag -Z --context                          REGEXP kill only process(es) having context (must precede other arguments)
# @arg name*

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

_module_os_signal() {
    command cat <<-'EOF'
ABRT	Abnormal termination
ALRM	Virtual alarm clock
BUS	BUS error
CHLD	Child status has changed
CONT	Continue stopped process
FPE	Floating-point exception
HUP	Hangup detected on controlling terminal
ILL	Illegal instruction
INT	Interrupt from keyboard
KILL	Kill, unblockable
PIPE	Broken pipe
POLL	Pollable event occurred
PROF	Profiling alarm clock timer expired
PWR	Power failure restart
QUIT	Quit from keyboard
SEGV	Segmentation violation
STKFLT	Stack fault on coprocessor
STOP	Stop process, unblockable
SYS	Bad system call
TERM	Termination request
TRAP	Trace/breakpoint trap
TSTP	Stop typed at keyboard
TTIN	Background read from tty
TTOU	Background write to tty
URG	Urgent condition on socket
USR1	User-defined signal 1
USR2	User-defined signal 2
VTALRM	Virtual alarm clock
WINCH	Window size change
XCPU	CPU time limit exceeded
XFSZ	File size limit exceeded
EOF
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"