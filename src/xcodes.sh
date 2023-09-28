_patch_help() {
    $@ --help | sed '/^\s*-/ s|/--|, --|'
}

_patch_table() {
    if [[ "$*" == "xcodes download" ]] \
    || [[ "$*" == "xcodes install" ]] \
    ; then
        _patch_table_edit_arguments 'version;[`_choice_available_version`]'

    elif [[ "$*" == "xcodes installed" ]] \
      || [[ "$*" == "xcodes uninstall" ]] \
    ; then
        _patch_table_edit_arguments 'version;[`_choice_installed_version`]'

    elif [[ "$*" == "xcodes runtimes download" ]] \
      || [[ "$*" == "xcodes runtimes install" ]] \
    ; then
        _patch_table_edit_arguments 'version;[`_choice_runtime_version`]'

    elif [[ "$*" == "xcodes select" ]]; then
        _patch_table_edit_arguments 'version-or-path;[`_choice_version_or_path`]'

    else
        cat
    fi
}

_choice_available_version() {
    xcodes list | sed 's/ (/\t (/'
}

_choice_installed_version() {
    xcodes installed | sed 's/ (.*//'
}

_choice_runtime_version() {
    xcodes runtimes  | sed -n '/^\(iOS\|watchOS\|tvOS\)/ {s/ (/\t (/;p}'
}

_choice_version_or_path() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_installed_version
}
