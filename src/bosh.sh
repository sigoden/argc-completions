_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    output="$(GO_FLAGS_COMPLETION=1 "${argc__args[@]}")"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}
