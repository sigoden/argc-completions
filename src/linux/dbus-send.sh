_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_dedup_options \
        '--print-reply' \
    | \
    _patch_table_edit_options \
        '--print-reply;[literal]' \
        '--type;[method_call|signal]' \

}
