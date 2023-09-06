_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e '/^\s*-/ s/#/<v>/g' \
        -e '/^\s*-/ s/\.\.[A-Za-z0-9-]\+//g' \

}

_patch_table() {
    _patch_table_edit_arguments ';;'
}
