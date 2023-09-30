_patch_help() {
    if [[ $# -eq 1 ]] ;then
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "tfenv install" ]]; then
        _patch_table_edit_arguments ';;' 'version;[`_choice_version`]'

    elif [[ "$*" == "tfenv use" ]] \
      || [[ "$*" == "tfenv uninstall" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'version;[`_choice_installed_version`]'

    else
        cat
    fi
}

_choice_version() {
    tfenv list-remote
}

_choice_installed_version() {
    tfenv list
}
