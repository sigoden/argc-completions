_patch_table() { 
    _patch_table_edit_options \
        '--dir(<dir>)' \
        '--taskfile;[`_choice_taskfile`]' \
    | \
    _patch_table_edit_arguments ';;' 'tasks;*[`_choice_task`]'
    
}

_choice_taskfile() {
    _argc_util_comp_path exts=.yml,.yaml
}

_choice_task() {
    task $(_argc_util_param_select_options --dir --taskfile) --list-all | tail -n +2 | sed 's/\* \(\S\+\):\(\s\+\(\S\+.*\)\)\?/\1\t\3/' 
}
