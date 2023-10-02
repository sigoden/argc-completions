_patch_help() {
    $@  | sed 's/\(-\S\) -p PRIO/\1        /'
}

_patch_table() {
    _patch_table_edit_options \
        '-e;~[`_module_os_exec`]' \
    | \
    _patch_table_edit_arguments ';;' 'pids;*[`_module_os_pid`]'
}
