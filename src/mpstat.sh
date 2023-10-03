_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--desc;[0|1|2]' \
        '-I(<value>);[SUM|CPU|SCPU|ALL]' \
        '-P(<value>);*[`_choice_cpu`]' \
    | \
    _patch_table_edit_arguments ';;' 'interval' 'count'
}

_choice_cpu() {
    echo ALL
    seq 0 $(getconf _NPROCESSORS_ONLN)
}
