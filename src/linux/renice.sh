_patch_table() {
    _patch_table_edit_options \
        '--pgrp(<value>)' \
        '--pid;[`_module_os_pid`]' \
        '--user;[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments ';;' '<priority>'
}
