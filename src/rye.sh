_patch_table() {
    if [[ "$*" == "rye toolchain remove" ]]; then
        _patch_table_edit_arguments 'version;[`_choice_toolchain`]'
    elif [[ "$*" == "rye tools uninstall" ]] \
      || [[ "$*" == "rye uninstall" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_tool`]'
    else
        cat
    fi
}

_choice_toolchain() {
    rye toolchain list | sed -n 's/^\(\S\+\) (\(.*\)).*/\1\t\2/p'
}

_choice_tool() {
    rye tools list
}
