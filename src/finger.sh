_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_arguments \
        'user;*[`_choice_user_host`]' \

}

_choice_user_host() {
    if [[ "$ARGC_CWORD" == *"@"* ]]; then
        echo __argc_prefix="${ARGC_CWORD%%@*}@"
        echo __argc_filter="${ARGC_CWORD#*@}"
        _module_ssh_host
    else
        _module_os_user | _argc_util_transform nospace
    fi
}
