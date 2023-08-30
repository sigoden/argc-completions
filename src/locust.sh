_patch_table() {
    _patch_table_edit_options \
        '--loglevel;[DEBUG|INFO|WARNING|ERROR|CRITICAL]' \
    | \
    _patch_table_edit_arguments 'userclass;[`_choice_userclass`]' 

}

_choice_userclass() {
    locust --list | sed -n 's/^\s\+\(.*\)$/\1/p'
}
