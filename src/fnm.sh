_patch_table() {
    if [[ "$*" == "fnm alias" ]]; then
        _patch_table_edit_arguments 'to_version;[`_choice_version`]'
    
    elif [[ "$*" == "fnm default" ]] \
      || [[ "$*" == "fnm uninstall" ]] \
      || [[ "$*" == "fnm use" ]] \
    ; then
        _patch_table_edit_arguments 'version;[`_choice_version`]'

    elif [[ "$*" == "fnm install" ]]; then
        _patch_table_edit_arguments 'version;[`_choice_available_version_cached`]'

    else
        cat
    fi
}

_choice_available_version_cached() {
    _argc_util_cache 86400 _choice_available_version
}

_choice_version() {
    fnm list | sed -n 's/^\* \(\S\+\).*/\1/p'
}

_choice_available_version() {
    fnm list-remote | sed -n 's/^\(\S\+\).*/\1/p'
}
