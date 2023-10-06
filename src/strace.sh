_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e '/^\s*-e \S/ d' \
        -e '/^\s*-/ {:x;N;s/\n\s*-/, -/;t x;}' \

}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_dedup_options \
        ';;' \
        '--env' \
        '--daemonize' \
        '--follow-forks' \
        '--quiet' \
        '--absolute-timestamps' \
        '--strings-in-hex' \
        '--decode-fds' \
        '--decode-pids' \
    | \
    _patch_table_edit_options \
        '--attach;[`_module_os_pid`]' \
        '--const-print-style;[`_choice_const_print_style`]' \
        '--daemonize;[`_choice_daemonize`];;Run tracer process in daemon.' \
        '--decode-fds;*,[`_choice_decode_fd`]' \
        '--decode-pids;*,[`_choice_decode_pid`]' \
        '--interruptible;[`_choice_interruptible`]' \
        '--quiet;*,[`_choice_quiet`]' \
        '--signal;*,[`_module_os_signal`]' \
        '--silent;*,[`_choice_quiet`]' \
        '--status;*,[`_choice_status`]' \
        '--strings-in-hex;[`_choice_string_in_hex`]' \
        '--summary-columns;*,[`_choice_column`]' \
        '--trace;*,[`_choice_trace`]' \
        '--user;[`_module_os_user`]' \
        ';;' \
        '-e;*[`_choice_filter`];A qualifying expression which modifies which events to trace or how to trace them.' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}

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
