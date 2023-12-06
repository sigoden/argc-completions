#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -E --env <var=val>                       Run command with var=val in its list of environment variables.
# @option -p --attach[`_module_os_pid`] <pid>      Attach to the process with the process ID pid and begin tracing.
# @option -u --user[`_module_os_user`] <username>  Run command with the user ID, group ID, and supplementary groups of username.
# @option --argv0 <name>                           Set argv[0] of the command being executed to name.
# @option -b --detach-on <syscall>                 If specified syscall is reached, detach from traced process.
# @option -D --daemonize[`_choice_daemonize`] <grandchild>  Run tracer process as a grandchild, not as the parent of the tracee.
# @flag -f --follow-forks                          Trace child processes as they are created by currently traced processes as a result of the fork(2), vfork(2) and clone(2) system calls.
# @flag --output-separately                        If the --output=filename option is in effect, each processes trace is written to filename.pid where pid is the numeric process id of each process.
# @option -I --interruptible[`_choice_interruptible`] <interruptible>  When strace can be interrupted by signals (such as pressing CTRL-C).
# @option --syscall-limit <limit>                  Detach all tracees when limit number of syscalls have been captured.
# @flag --kill-on-exit                             Set PTRACE_O_EXITKILL ptrace option to all tracee processes (which send a SIGKILL signal to the tracee if the tracer exits) and do not detach them on cleanup so they will not be left running after the tracer exit.
# @option --trace*,[`_choice_trace`] <syscall_set>  Trace only the specified set of system calls.
# @option --trace-fds <set>                        Trace only the syscalls that operate on the specified subset of (non-negative) file descriptors.
# @option --signal*,[`_module_os_signal`] <set>    Trace only the specified subset of signals.
# @option --status*,[`_choice_status`] <set>       Print only system calls with the specified return status.
# @option -P --trace-path <path>                   Trace only system calls accessing path.
# @flag -z --successful-only                       Print only syscalls that returned without an error code.
# @flag -Z --failed-only                           Print only syscalls that returned with an error code.
# @option -a --columns <column>                    Align return values in a specific column (default column 40).
# @option --abbrev <syscall_set>                   Abbreviate the output from printing each member of large structures.
# @option --verbose <syscall_set>                  Dereference structures for the specified set of system calls.
# @option --raw <syscall_set>                      Print raw, undecoded arguments for the specified set of system calls.
# @option --read <set>                             Perform a full hexadecimal and ASCII dump of all the data read from file descriptors listed in the specified set.
# @option --write <set>                            Perform a full hexadecimal and ASCII dump of all the data written to file descriptors listed in the specified set.
# @option --quiet*,[`_choice_quiet`] <set>         Suppress various information messages.
# @option --silent*,[`_choice_quiet`] <set>        Suppress various information messages.
# @option --silence*,[`_choice_quiet`] <set>       Suppress various information messages.
# @option --decode-fds*,[`_choice_decode_fd`] <set>  Decode various information associated with file descriptors.
# @option --decode-pids*,[`_choice_decode_pid`] <set>  Decode various information associated with process IDs (and also thread IDs, process group IDs, and session IDs).
# @option --kvm <vcpu>                             Print the exit reason of kvm vcpu.
# @flag -i --instruction-pointer                   Print the instruction pointer at the time of the system call.
# @flag -n --syscall-number                        Print the syscall number.
# @flag -k --stack-traces                          Print the execution stack trace of the traced processes after each system call.
# @option -o --output <filename>                   Write the trace output to the file filename rather than to stderr.
# @flag -A --output-append-mode                    Open the file provided in the -o option in append mode.
# @option -r --relative-timestamps <precision>     Print a relative timestamp upon entry to each system call.
# @option -s --string-limit <strsize>              Specify the maximum string size to print (the default is 32).
# @option --absolute-timestamps <[[format:]format],[[precision:]precision]>  Prefix each line of the trace with the wall clock time in the specified format with the specified precision.
# @option --timestamps <[[format:]format],[[precision:]precision]>  Prefix each line of the trace with the wall clock time in the specified format with the specified precision.
# @option -T --syscall-times <precision>           Show the time spent in system calls.
# @flag -v --no-abbrev                             Print unabbreviated versions of environment, stat, termios, etc.
# @option --strings-in-hex[`_choice_string_in_hex`] <option>  Control usage of escape sequences with hexadecimal numbers in the printed strings.
# @option -X --const-print-style[`_choice_const_print_style`] <format>  Set the format for printing of named constants and flags.
# @flag -c --summary-only                          Count time, calls, and errors for each system call and report a summary on program exit, suppressing the regular output.
# @flag -C --summary                               Like -c but also print regular output while processes are running.
# @option -O --summary-syscall-overhead <overhead>  Set the overhead for tracing system calls to overhead.
# @option -S --summary-sort-by <sortby>            Sort the output of the histogram printed by the -c option by the specified criterion.
# @option -U --summary-columns*,[`_choice_column`] <columns>  Configure a set (and order) of columns being shown in the call summary.
# @flag -w --summary-wall-clock                    Summarise the time difference between the beginning and end of each system call.
# @option --inject <syscall_set[:error=errno|:retval=value][:signal=sig][:syscall=syscall][:delay_enter=delay][:delay_exit=delay][:poke_enter=@argN=DATAN,@argM=DATAM...][:poke_exit=@argN=DATAN,@argM=DATAM...][:when=expr]>  Perform syscall tampering for the specified set of syscalls.
# @option --fault <syscall_set[:error=errno][:when=expr]>  Perform syscall fault injection for the specified set of syscalls.
# @flag -d --debug                                 Show some debugging output of strace itself on the standard error.
# @flag -F                                         This option is deprecated.
# @flag -h --help                                  Print the help summary.
# @flag --seccomp-bpf                              Try to enable use of seccomp-bpf (see seccomp(2)) to have ptrace(2)-stops only when system calls that are being traced occur in the traced processes.
# @option --tips <[[id:]id],[[format:]format]>     Show strace tips, tricks, and tweaks before exit.
# @flag -V --version                               Print the version number of strace.
# @option -e*[`_choice_filter`]                    A qualifying expression which modifies which events to trace or how to trace them.
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_daemonize() {
    cat <<-'EOF'
grandchild	Run tracer process as a grandchild, not as the parent of the tracee.
pgroup	Run tracer process as tracee's grandchild in a separate process group.
session	Run  tracer process as tracee's grandchild in a separate session ("true daemonisation"). 
EOF
}

_choice_interruptible() {
    cat <<-'EOF'
anywhere	no signals are blocked;
waiting	fatal signals are blocked while decoding syscall (default);
never	fatal signals are always blocked (default if -o FILE PROG);
never_tstp	fatal signals and SIGTSTP (CTRL-Z) are always blocked (useful to make strace -o  FILE  PROG  not stop on CTRL-Z, default if -D).
1	no signals are blocked;
2	fatal signals are blocked while decoding syscall (default);
3	fatal signals are always blocked (default if -o FILE PROG);
4	fatal signals and SIGTSTP (CTRL-Z) are always blocked (useful to make strace -o  FILE  PROG  not stop on CTRL-Z, default if -D).
EOF
}

_choice_trace() {
    cat <<-'EOF'
syscall	Trace specific syscall, specified by its name (but see NOTES).
?value	Question mark before the syscall qualification allows suppression of error in case no syscalls matched the qualification provided.
/regex	Trace only those system calls that match the regex.
syscall@64	Trace syscall only for the 64-bit personality.
syscall@32	Trace syscall only for the 32-bit personality.
syscall@x32	Trace syscall only for the 32-on-64-bit personality.
file	Trace all system calls which take a file name as an argument.
process	Trace system calls associated with process lifecycle (creation, exec,  termination).
network	Trace  all  the  network  related  system calls.
signal	Trace all signal related  system  calls.
ipc	Trace  all IPC related system calls.
desc	Trace all file descriptor related system calls.
memory	Trace  all  memory mapping related system calls.
%creds	Trace system calls that read or modify user and group identifiers or capability sets.
%stat	Trace stat syscall variants.
%lstat	Trace lstat syscall variants.
%fstat	Trace fstat, fstatat, and statx syscall variants.
%%stat	Trace syscalls used for requesting file status (stat, lstat,  fstat,  fstatat,  statx,  and  their variants).
%statfs	Trace  statfs,  statfs64, statvfs, osf_statfs, and osf_statfs64 system calls.
%fstatfs	Trace fstatfs, fstatfs64, fstatvfs, osf_fstatfs, and osf_fstatfs64 system calls.
%%statfs	Trace syscalls related to file system statistics (statfs-like, fstatfs-like, and ustat).
%clock	Trace system calls that read or modify system clocks.
%pure	Trace syscalls that always succeed and have no arguments.
EOF
}

_choice_status() {
    cat <<-'EOF'
successful	Trace  system  calls  that  returned  without an error code.
failed	Trace system calls that returned with an error code.
unfinished	Trace  system calls that did not return.  This might happen, for example, due to an execve call in a neighbour thread.
unavailable	Trace system calls that returned but strace failed to fetch the error status.
detached	Trace system calls for which strace detached before the return.
EOF
}

_choice_quiet() {
    cat <<-'EOF'
attach	Suppress  messages about attaching and detaching ("[ Process NNNN attached ]", "[ Process NNNN detached ]").
exit	Suppress messages about process exits ("+++ exited with SSS +++").
path-resolution	Suppress messages about resolution of paths provided via the -P option ("Requested path  "..." resolved into "..."").
personality	Suppress  messages  about  process  personality changes ("[ Process PID=NNNN runs in PPP mode. ]").
superseded	Suppress messages about process being superseded by execve(2) in another thread  ("+++  super‐seded by execve in pid NNNN +++").
EOF
}

_choice_decode_fd() {
    cat <<-'EOF'
path	Print file paths.
socket	Print socket protocol-specific information,
dev	Print character/block device numbers.
pidfd	Print PIDs associated with pidfd file descriptors.
EOF
}

_choice_decode_pid() {
    cat <<-'EOF'
comm	Print command names associated with thread or process IDs.
pidns	Print thread, process, process group, and session IDs in strace's PID namespace if the tracee is in a different PID namespace.
EOF
}

_choice_string_in_hex() {
    cat <<-'EOF'
none	Hexadecimal numbers are not used in the output at all.
non-ascii-chars	Hexadecimal numbers are used instead of octal in the escape sequences.
non-ascii	Strings  that contain non-ASCII characters are printed using escape sequences with hexadecimal numbers.
all	All strings are printed using escape sequences with hexadecimal numbers.
EOF
}

_choice_const_print_style() {
    cat <<-'EOF'
raw	Raw number output, without decoding.
abbrev	Output a named constant or a set of flags instead of the raw number if they are found. 
verbose	Output both the raw value and the decoded string (as a comment).
EOF
}

_choice_column() {
    cat <<-'EOF'
time-percent	Percentage of cumulative time consumed by a specific system call.
total-time	Total system (or wall clock, if -w option is provided) time consumed  by  a specific system call.
min-time	Minimum observed call duration.
max-time	Maximum observed call duration.
avg-time	Average call duration.
calls	Call count.
errors	Error count.
name	Syscall name.
EOF
}

_choice_filter() {
    cat <<-'EOF' | _argc_util_comp_kv =
trace=,`_choice_trace`;;Trace only the specified set of system calls.
signal=,`_module_os_signal`;;Trace only the specified subset of signals.
status=,`_choice_status`;;Print  only  system  calls with the specified return status.
abbrev=;;Abbreviate the output from printing each member of large structures.
verbose=;;Dereference structures for the specified set of system calls.
raw=;;Print raw, undecoded arguments for the specified set of system calls.
read=set;;Perform a full hexadecimal and ASCII dump of all the data read from file descriptors listed  in the  specified set.
write=set;;Perform a full hexadecimal and ASCII dump of all the data written to file descriptors listed in the  specified.
quiet=,`_choice_quiet`;;Suppress various information messages.
decode-fds=,`_choice_decode_fd`;;Decode  various information associated with file descriptors.
decode-pids=,`_choice_decode_pid`;;Decode  various  information  associated  with process IDs (and also thread IDs, process group IDs, and session IDs).
kvm=;;Print the exit reason of kvm vcpu.
inject=;;Perform  syscall  tampering  for the specified set of syscalls.
fault=;;Perform syscall fault injection for the specified set of syscalls.
EOF
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
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