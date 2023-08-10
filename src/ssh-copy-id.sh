_patch_help() { 
    echo "Usage: ssh-copy-id [options] destination"
    _patch_help_run_man ssh-copy-id | sed -n '/^DESCRIPTION/, /^EXAMPLES/ {//!p}'
}

_patch_table() {
    _patch_table_edit_options \
        '-o' \
        '-p' \
        ';;' \
        '-o;[`_module_ssh_option`];Can be used to pass options to ssh in the format used in ssh_config' \
        '-p(<port>);;Port to connect to on the remote host.' \
    | \
    _patch_table_edit_arguments ';;' 'host;[`_module_ssh_host`]'

}
