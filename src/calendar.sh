_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e '/^FILE/,$ d'  \
        -e 's/ (.*)//' \

}
