_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--ambient-caps;*[`_choice_cap`]' \
        '--bounding-set;*[`_choice_cap`]' \
        '--egid;[`_module_os_gid`]' \
        '--euid;[`_module_os_uid`]' \
        '--groups;*[`_module_os_group`]' \
        '--inh-caps;*[`_choice_cap`]' \
        '--pdeathsig;*[`_choice_signal`]' \
        '--regid;[`_module_os_gid`]' \
        '--reuid;[`_module_os_uid`]' \
        '--rgid;[`_module_os_gid`]' \
        '--ruid;[`_module_os_uid`]' \
        '--securebits;*[`_choice_securebit`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'program;[`_module_os_command`]' \
        'args;~[`_module_os_command_args`]' \

}

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
