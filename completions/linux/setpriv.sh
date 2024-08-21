#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --clear-groups                             Clear supplementary groups.
# @flag -d --dump                                  Dump the current privilege state.
# @option --groups*[`_module_os_group`] <group>    Set supplementary groups.
# @option --inh-caps*[`_choice_cap`] <(+|-)cap>    Set the inheritable capabilities, ambient capabilities or the capability bounding set.
# @option --ambient-caps*[`_choice_cap`] <(+|-)cap>  Set the inheritable capabilities, ambient capabilities or the capability bounding set.
# @option --bounding-set*[`_choice_cap`] <(+|-)cap>  Set the inheritable capabilities, ambient capabilities or the capability bounding set.
# @flag --keep-groups                              Preserve supplementary groups.
# @flag --init-groups                              Initialize supplementary groups using initgroups3.
# @flag --list-caps                                List all known capabilities.
# @flag --no-new-privs                             Set the no_new_privs bit.
# @option --rgid[`_module_os_gid`] <gid>           Set the real, effective, or both GIDs.
# @option --egid[`_module_os_gid`] <gid>           Set the real, effective, or both GIDs.
# @option --regid[`_module_os_gid`] <gid>          Set the real, effective, or both GIDs.
# @option --ruid[`_module_os_uid`] <uid>           Set the real, effective, or both UIDs.
# @option --euid[`_module_os_uid`] <uid>           Set the real, effective, or both UIDs.
# @option --reuid[`_module_os_uid`] <uid>          Set the real, effective, or both UIDs.
# @option --securebits*[`_choice_securebit`] <(+|-)securebit>  Set or clear securebits.
# @option --pdeathsig*[`_choice_signal`] <keep|clear|<signal>>  Keep, clear or set the parent death signal.
# @option --selinux-label <label>                  Request a particular SELinux transition (using a transition on exec, not dyntrans).
# @option --apparmor-profile <profile>             Request a particular AppArmor profile (using a transition on exec).
# @flag --reset-env                                Clears all the environment variables except TERM; initializes the environment variables HOME, SHELL, USER, LOGNAME according to the user’s passwd entry; sets PATH to /usr/local/bin:/bin:/usr/bin for a regular user and to /usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin for root.
# @flag -V --version                               Display version information and exit.
# @flag -h --help                                  Display help text and exit.
# @arg program[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cap() {
    list=( all chown dac_override dac_read_search fowner fsetid kill setgid \
        setuid setpcap linux_immutable net_bind_service net_broadcast net_admin net_raw \
        ipc_lock ipc_owner sys_module sys_rawio sys_chroot sys_ptrace sys_pacct sys_admin \
        sys_boot sys_nice sys_resource sys_time sys_tty_config mknod lease audit_write \
        audit_control setfcap mac_override mac_admin syslog wake_alarm block_suspend \
        audit_read perfmon bpf checkpoint_restore \
    )
    for v in ${list[@]}; do
        echo "+$v"
        echo "-$v"
    done
}

_choice_securebit() {
    list=( noroot noroot_locked no_setuid_fixup no_setuid_fixup_locked keep_caps_locked )
    for v in ${list[@]}; do
        echo "+$v"
        echo "-$v"
    done
}

_choice_signal() {
    printf "%s\n" keep clear
    _module_os_signal
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

_module_os_gid() {
    command cat /etc/group | gawk -F: '{print $3 "\t" $1}'
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
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

_module_os_uid() {
    command cat /etc/passwd | gawk -F: '{print $3 "\t" $1}'
}

command eval "$(argc --argc-eval "$0" "$@")"