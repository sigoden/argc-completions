_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e 's/-|, //' \
        -e 's/-˜/-~/' \
        -e 's/-ˆ/-^/' \

}
