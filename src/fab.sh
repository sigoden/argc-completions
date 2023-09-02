_patch_table() {
    _patch_table_edit_options \
        '--hosts;*,' \
        '--list-format;[default|nested|json]' \
        '--print-completion-script;[bash|zsh|fish]' \
        '--search-root(DIR)' \
        '--ssh-config(FILE)' \
    | \
    _patch_table_edit_arguments ';;' 'tasks;*[`_choice_task`]'

}

_choice_task() {
    fab -l | sed -n 's/^  \(\S\+\)\s*\(.*\)$/\1\t\2/p'
}
