_patch_help() { 
   _patch_help_run_help $@ | sed -e '/^GIT CONFIG/, $ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--inspect-raw-lines;[true|false]' \
        '--pager;[`_choice_cmd`]' \
        '--syntax-theme;[`_choice_theme`]' \

}

_choice_cmd() {
    _argc_util_comp_path
    _module_os_command
}

_choice_theme() {
    delta --list-syntax-themes | sed  's/^\w\+\s\+//'
}