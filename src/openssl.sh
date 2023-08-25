_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _choice_cmd
        return
    fi
    cmd="${argc__positionals[0]}" 
    if [[ "$ARGC_CWORD" == -* ]]; then
        openssl list -options "$cmd" | sed -e 's/^\(\S\+\).*/-\1/'
        return
    fi
    _argc_util_comp_path
}

_choice_cmd() {
    openssl list -1 -commands -cipher-commands -digest-commands
}
