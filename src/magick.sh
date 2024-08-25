_patch_help() {
    _patch_help_run_man $@ | sed '/^DESCRIPTION/,/^[A-Z]/ {s/       / /}'
}

_patch_table() {
    _patch_table_dedup_options \
        '-flatten' \

}
