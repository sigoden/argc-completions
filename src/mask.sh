_patch_table() {
    _patch_table_edit_arguments ';;' 'task;[`_choice_task`]'
}

_choice_task() {
    _helper_find_maskfile
    if [[ -f "$maskfile" ]]; then
        cat "$maskfile" | sed -n 's/^\s*## \(\S\+\).*$/\1/p'
    fi
}

_helper_find_maskfile() {
    maskfile="$argc_maskfile"
    if [[ -z "$maskfile" ]]; then
        maskfile="$(_argc_util_path_search_parent maskfile.md)"
    fi
}
