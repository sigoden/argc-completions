_patch_help() { 
    cat <<-'EOF'
Options:
    -s, --signal     Signal to send
    -l, --list       List signal names
    -L, --table      List signal names and their #s
    -a, --all        Resolve PIDs from other users' too
    -p, --pid        Show resolved PID, don't send signal
    -q, --queue      Use sigqueue(2) rather than kill(2)
        --verbose    Print PIDs and signals sent
EOF
}

_patch_table() { 
    _patch_table_edit_options '--list;[`_choice_signal`]' '--signal;[`_choice_signal`]' | \
    _patch_table_edit_arguments ';;' 'pidNames;*[`_choice_pid_name`]'
}

_choice_signal() {
    cat <<-'EOF'
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


_choice_pid_name() {
    _argc_util_parallel _choice_exe ::: _choice_pid
}

_choice_pid() {
    if [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    elif [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

_choice_exe() {
    ps axc -o comm= | sed '/(.*)/ d'
}