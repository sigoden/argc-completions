_patch_table() { 
    _patch_table_edit_options \
        '-d;*[`_choice_mode`]' \
        '-t;*[`_choice_tool`]' \
    | \
    _patch_table_edit_arguments \
        'targets;[`_choice_target`]' \

}

_choice_mode() {
    ninja -d list | sed -n 's/^  \(\S\+\)\s*\(.*\)/\1\t\2/p'
}

_choice_tool() {
    ninja -t list | sed -n 's/^\s\+\(\S\+\)\s\+\(.*\)/\1\t\2/p'
}

_choice_target() {
    ninja $(_argc_util_param_select_options -C -f) -t targets all | sed 's/:.*//'
}
