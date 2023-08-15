
_patch_help() {
    $@ --help | \
    sed \
        -e '/ -,,/,+1 d' \

}

_patch_table() {
    _patch_table_edit_options \
        '--character-sets-dir(<dir>)' \
        '--defaults-extra-file(<file>)' \
        '--defaults-file(<file>)' \
        '--defaults-group-suffix(<#>)' \
        '--host;[`_module_os_hostname`]' \
        '--login-path(<path>)' \
        '--plugin-dir(<dir>)' \
        '--result-file(<file>)' \
        '--server-public-key-path(<path>)' \
        '--ssl-capath(<path>)' \
        '--ssl-crlpath(<path>)' \

}
