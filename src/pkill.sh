_patch_help() {
    $@ --help | sed 's/-<sig>, //'
}

_patch_table() {
    _patch_table_edit_options \
        '--euid;*,[`_module_os_user`]' \
        '--group;*,[`_module_os_group`]' \
        '--ns;*,[`_module_os_pid`]' \
        '--nslist;*,[`_choice_nslist`]' \
        '--parent;*,[`_module_os_pid`]' \
        '--runstates;*,[`_choice_runstate`]' \
        '--session;*,[`_module_os_sid`]' \
        '--signal;*,[`_module_os_signal`]' \
        '--terminal;*,[`_module_os_tty`]' \
        '--uid;*,[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments ';;' 'pattern;[`_module_os_process`]'
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

_choice_nslist() {
    printf "%s\n" ipc mnt net pid user uts
}
