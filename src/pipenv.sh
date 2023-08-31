_patch_help() {
    $@ --help | sed '/^\s*-/ s| / | |'
}

_patch_table() {
    if [[ "$*" == "pipenv check" ]]; then
        _patch_table_dedup_options \
            '--quiet' \

    elif [[ "$*" == "pipenv install" ]] \
      || [[ "$*" == "pipenv uninstall" ]] \
      || [[ "$*" == "pipenv update" ]] \
      || [[ "$*" == "pipenv upgrade" ]] \
    ; then
        _patch_table_edit_arguments \
            'packages;[`_choice_package`]' \

    else
        cat
    fi
}

_choice_package() {
    pip list --format json | yq '.[] | .name + "	" + .version'
}
