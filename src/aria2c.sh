_patch_help() {
    _patch_help_run_man $@ | sed 's/\[true|false\]/{true|false}/'
}
