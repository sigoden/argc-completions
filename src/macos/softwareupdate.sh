_patch_help() {
    if [[ "$*" == "softwareupdate" ]]; then
        $@ --help 2>&1 | \
        sed \
            -e '/^\s*-i | --install/, /^\s*--list-full-installers/ {/^\s*--list-full-installers/!d}' \

    elif [[ "$*" == "softwareupdate --install" ]]; then
        $1 --help 2>&1 | \
        sed -n '/^\s*-i | --install/, /^\s*--list-full-installers/ {//!p}' \

    fi
}

_patch_table() {
    if [[ "$*" == "softwareupdate" ]]; then
        _patch_table_edit_commands \
            ';;' \
            '--install(--install, -i);Install' \
        | \
        _patch_table_edit_arguments ';;'

    else
        cat
    fi
}
