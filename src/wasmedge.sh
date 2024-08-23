_patch_help() {
    _patch_help_run_help $@ | _patch_help_strip_ansi  | sed 's/^\(-\S\)|/\1, /'
}

_patch_table() {
    _patch_table_edit_options \
        '--dir(<geust:host:mode>)' \
        '--env(<key=value>)' \
        '--forbidden-plugin(<plugin>)' \
        '--gas-limit(<value>)' \
        '--memory-page-limit(<value>)' \
        '--optimize(<value>)' \
        '--time-limit(<value>)' \

}
