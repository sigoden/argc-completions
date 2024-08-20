_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--dec(<value>);[0|1|2]' \
        '-g(<group_name> <device+>)' \
        '-j(<selector> <device+>)' \
        '-p(<device+>)' \
    | \
    _patch_table_edit_arguments ';;' 'devices' 'interval' 'count'

}
