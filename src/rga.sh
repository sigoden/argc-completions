_patch_help() {
    rga --rg-help | \
    sed \
        -e '/-V, --version/ d' \
        -e '/-h, --help/ d' \

    rga --help | \
    sed \
        -e '/^\s*-h / d'
}

_patch_table() {
    _patch_table_edit_arguments 'pattern;[`_choice_pattern`]'
}

_choice_pattern() {
    if [[ -n "$argc_regexp" ]] \
    || [[ -n "$argc_file" ]] \
    || [[ -n "$argc_files" ]] \
    ; then
        _argc_util_comp_path
    fi
}
