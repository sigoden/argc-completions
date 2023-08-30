_patch_help() {
    if [[ "$*" == "fvm dart" ]] \
    || [[ "$*" == "fvm flutter" ]] \
    || [[ "$*" == "fvm spawn" ]] \
    ; then
        :;
    else
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "fvm config" ]]; then
        _patch_table_edit_options \
            '--cache-path(<path>)' \

    elif [[ "$*" == "fvm dart" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'command;~[`_choice_dart`]' \

    elif [[ "$*" == "fvm flutter" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'command;~[`_choice_flutter`]' \

    elif [[ "$*" == "fvm global" ]] \
      || [[ "$*" == "fvm remove" ]] \
      || [[ "$*" == "fvm use" ]] \
    ; then
        _patch_table_edit_arguments \
            'version;[`_choice_version`]' \

    elif [[ "$*" == "fvm install" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'version;[`_choice_available_version_cached`]' \

    else
        cat
    fi
}

_choice_dart() {
    _argc_util_comp_subcommand 0 dart
}

_choice_flutter() {
    _argc_util_comp_subcommand 0 flutter
}

_choice_version() {
    fvm list | tail -n +3
}

_choice_available_version_cached() {
    _argc_util_cache 86400 _choice_available_version
}

_choice_available_version() {
    printf "%s\n" stable beta dev
    fvm releases | sed -n  's/.*│ \(\S\+\)\s\+\(\S\+\)\?/\1\t\2/p'
}
