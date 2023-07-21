#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -i --ignore-environment                   start with an empty environment
# @flag -0 --null                                 end each output line with NUL, not newline
# @option -u --unset[`_choice_env_var`] <NAME>    remove variable from the environment
# @option -C --chdir <DIR>                        change working directory to DIR
# @option -S --split-string <S>                   process and split S into separate arguments; used to pass multiple arguments on shebang lines
# @option --block-signal[`_module_os_signal`] <SIG>  block delivery of SIG signal(s) to COMMAND
# @option --default-signal[`_module_os_signal`] <SIG>  reset handling of SIG signal(s) to the default
# @option --ignore-signal[`_module_os_signal`] <SIG>  set handling of SIG signals(s) to do nothing
# @flag --list-signal-handling                    list non default signal handling to stderr
# @flag -v --debug                                print verbose information for each processing step
# @flag --help                                    display this help and exit
# @flag --version                                 output version information and exit

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_env_var() {
    env | _argc_util_transform format==
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

command eval "$(argc --argc-eval "$0" "$@")"