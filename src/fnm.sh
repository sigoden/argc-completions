_patch_table() {
    if [[ "$*" == "fnm install" ]]; then
        _patch_table_edit_arguments 'version;[`_choice_available_version_cached`]'

    elif [[ "$*" == "fnm use" ]] \
      || [[ "$*" == "fnm default" ]] \
      || [[ "$*" == "fnm uninstall" ]] \
    ; then
        _patch_table_edit_arguments 'version;[`_choice_version`]'

    elif [[ "$*" == "fnm alias" ]]; then
        _patch_table_edit_arguments 'to_version;[`_choice_version`]'
    
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
