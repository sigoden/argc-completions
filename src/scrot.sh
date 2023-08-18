_patch_help() {
    _patch_help_run_man $@ | \
    sed 's/\([A-Z]\+ | [A-Z]\+\)/<\1>/'
}
