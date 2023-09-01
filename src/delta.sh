_patch_help() { 
  $@ --help | _patch_help_strip_ansi | sed -e '/^GIT CONFIG/, $ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--inspect-raw-lines;[true|false]' \
        '--pager;[`_module_os_command`]' \
        '--syntax-theme;[`_choice_theme`]' \

}

_choice_theme() {
    delta --list-syntax-themes | sed  's/^\w\+\s\+//'
}
