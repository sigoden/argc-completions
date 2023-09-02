_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e 's/-t, --tab/--tab/' \
        -e 's/-n, --line-numbe/--line-numbe/' \
        
}
