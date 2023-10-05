_patch_help() { 
    _patch_help_run_man $@ | \
    sed -n '/^OPTIONS/,/ARGUMENTS/ {//!p}' | \
    sed \
        '-e s/\[-+\]/-/' \

}

_patch_table() {
    _patch_table_edit_options \
        '-c;[`_module_os_command`]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}
