_patch_help() { 
    :;
}

_patch_table() { 
    _patch_table_edit_arguments \
        ';;' \
        'command;[`_choice_command`]' \
        'args;~[`_module_os_command_args`]' \

}

_choice_command() {
    coreutils -h | sed -n '/^    \S/ {s/^    //p}' | tr -d '\n' | sed 's/,\s*/\n/g'
}
