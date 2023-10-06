_patch_help() { 
    $@ --help 2>&1 | sed '/^\s*-SIGNAL/ d'
    cat <<-'EOF'
-ABRT	Abnormal termination
-ALRM	Virtual alarm clock
-BUS	BUS error
-CHLD	Child status has changed
-CONT	Continue stopped process
-FPE	Floating-point exception
-HUP	Hangup detected on controlling terminal
-ILL	Illegal instruction
-INT	Interrupt from keyboard
-KILL	Kill, unblockable
-PIPE	Broken pipe
-POLL	Pollable event occurred
-PROF	Profiling alarm clock timer expired
-PWR	Power failure restart
-QUIT	Quit from keyboard
-SEGV	Segmentation violation
-STKFLT	Stack fault on coprocessor
-STOP	Stop process, unblockable
-SYS	Bad system call
-TERM	Termination request
-TRAP	Trace/breakpoint trap
-TSTP	Stop typed at keyboard
-TTIN	Background read from tty
-TTOU	Background write to tty
-URG	Urgent condition on socket
-USR1	User-defined signal 1
-USR2	User-defined signal 2
-VTALRM	Virtual alarm clock
-WINCH	Window size change
-XCPU	CPU time limit exceeded
-XFSZ	File size limit exceeded
EOF

}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--mount;[`_choice_mount_point`]' \
    | \
    _patch_table_edit_arguments ';;' paths...
}

_choice_mount_point() {
    cat /proc/mounts | gawk '{print $2 "\t" $1}' 
}
