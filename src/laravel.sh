_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    count=$(( ${#argc__args[@]} - 1 ))
    args=()
    for v in "${argc__args[@]}"; do
        if [[ -n "$v" ]]; then
            args+=( "-i$v" )
        fi
    done
    output="$( "${argc__args[0]}" _complete --no-interaction -sfish -a1 -c$count "${args[@]}" )"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}
