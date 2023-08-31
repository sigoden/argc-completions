_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'words;~[`_choice_delegate`]'
}

_choice_delegate() {
    line="${argc__args[*]}"
    output="$(wp cli completions --line="$line" --point="${#line}")"
    if [[ -z "$output" ]] || [[ "$output" =~ \<file\>\s* ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}
