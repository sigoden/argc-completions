_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    len=${#argc__args[@]}
    if [[ "$len" -le 2 ]]; then
        output="$("${argc__args[0]}" --list-options)"
    elif [[ "${argc__args[-1]}" == -* ]]; then
        output="$("${argc__args[@]:0:$((len-1))}" --list-options)"
    else
        output="$("${argc__args[@]:0:}" --list-options)"
    fi
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}
