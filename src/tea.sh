_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    if _argc_util_has_path_prefix; then
        echo "__argc_value=path"
        return
    fi
    len="${#argc__args[@]}"
    if [[ "$len" -gt 2 ]] && [[ "$ARGC_CWORD" == "" ]] && [[ "${argc__args[-2]}" =~ ^-[[:alnum:]]$ ]]; then
        ${argc__args[@]:0:$((len - 2))} --generate-bash-completion
    else
        ${argc__args[@]} --generate-bash-completion
    fi
}
