_patch_help() {
    _patch_help_run_man $@ | \
    sed 's/+|-/-/g'
}

_patch_table() {
    _patch_table_dedup_options \
        '-o' \
    | \
    _patch_table_edit_options \
        '-D;[`_choice_dcf`]' \
        '-c;[`_module_os_process`]' \
        '-g;*,[`_module_os_group`]' \
        '-p;*,[`_module_os_pid`]' \
        '-u;*,[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments ';;' 'names...'

}

_choice_dcf() {
    cat <<-'EOF'
?	report device cache file paths
b	build the device cache file
i	ignore the device cache file
r	read the device cache file
u	read and update the device cache file
EOF
}
