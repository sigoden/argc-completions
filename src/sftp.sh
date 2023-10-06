_patch_help() {
    echo "Usage: sftp [options] destination"
    _patch_help_run_man sftp | sed -n '/^DESCRIPTION/, /^INTERACTIVE COMMANDS/ {//!p}'
}

_patch_table() {
    sed \
        -e '/# -R \[bind_address:\]port:/ d' \
        -e '/# -R #/ d' \
    | \
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-J;[`_module_ssh_host`]' \
        '-R([bind_address:]port:host:hostport)' \
        '-c;*,[`_module_ssh_cipher`]' \
        '-o;[`_module_ssh_option`]' \
    | \
    _patch_table_edit_arguments \
        'destination;[`_module_ssh_host`]' \

}
