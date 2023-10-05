_patch_help() {
    _patch_help_run_man $@ | \
    sed -n '/^\s*Argument List Processing/,/^\s*Lexical Structure/ {s/^  //;s/^         /    /;p}'
    echo '    -o <name>    Set option'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-o;*[`_choice_option`]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}

_choice_option() {
    printf "%s\n" allexport errexit ignoreeof monitor noclobber noglob noexec nolog notify nounset verbose vi xtrace
}
