_patch_help() {
    $@ --help | sed 's/-<sig>, //'

}

_patch_table() {
    _patch_table_edit_options \
        '--euid;*,[`_choice_user`]' \
        '--uid;*,[`_choice_user`]' \
        '--group;*,[`_choice_group`]' \
        '--ns;*,[`_choice_pid`]' \
        '--nslist;*,[`_choice_nslist`]' \
        '--parent;*,[`_choice_pid`]' \
        '--runstates;*,[`_choice_runstate`]' \
        '--session;*,[`_choice_sid`]' \
        '--terminal;*,[`_choice_tty`]' \
        '--signal;*,[`_choice_signal`]' | \
    _patch_table_edit_arguments ';;' 'pattern;[`_choice_process`]'
}

_choice_process() {
    ps axc -o pid,comm= | gawk '{print $2 "\t" $1}'
}

_choice_nslist() {
    printf "%s\n" ipc mnt net pid user uts
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

_choice_runstate() {
    cat <<-'EOF'
D	uninterruptible sleep (usually IO)
I	Idle kernel thread
R	running or runnable (on run queue)
S	interruptible sleep (waiting for an event to complete)
T	stopped by job control signal
W	paging (not valid since the 2.6.xx kernel)
X	dead (should never be seen)
Z	defunct (zombie) process, terminated but not reaped by its parent
t	stopped by debugger during the tracing
EOF
}

_choice_sid() {
    ps -A -o user,sess  | gawk '{print $2 "\t" $1}'
}

_choice_tty() {
    ps aux | gawk '{ if ($7 != "?" && NR > 1) {print $7 "\t" $1} }'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
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