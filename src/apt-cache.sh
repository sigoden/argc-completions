_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        sed \
            -e '/one of the commands below must be present/ c\COMMANDS' \

    else
        _patch_help_run_man $1 | \
        sed -n "/^DESCRIPTION/,/^[A-Z]/ s/^       $2\( .*\|$\)/Usage: $1 $2\1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "apt-cache" ]]; then
        _patch_table_add_metadata combine-shorts inherit-flag-options | \
        _patch_table_edit_arguments ';;'

    else
        _patch_table_edit_arguments 'pkg;[`_choice_package`]'
    fi
}

_choice_package() {
    apt-cache --no-generate pkgnames
}
