#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -s --signal[`_module_os_signal`] <SIG>  SIG is a signal name [default: sigterm]
# @flag -v --verbose*    More output per occurrence
# @flag -q --quiet*      Less output per occurrence
# @flag -h --help        Print help
# @flag -V --version     Print version
# @arg ports+            The list of port numbers to kill processes on

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

command eval "$(argc --argc-eval "$0" "$@")"