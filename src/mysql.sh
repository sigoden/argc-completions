_patch_help() {
    $@ --help | \
    sed \
        -e '/-I, --help/ d' \
        -e '/ -,,/,+1 d' \
        -e '/-U, --i-am-a-dummy/ d' \

}

_patch_table() {
    _patch_table_edit_options \
        '--character-sets-dir(<dir>)' \
        '--defaults-extra-file(<file>)' \
        '--defaults-file(<file>)' \
        '--defaults-group-suffix(<#>)' \
        '--host;[`_module_os_hostname`]' \
        '--load-data-local-dir(<dir>)' \
        '--local-infile;[0|1]' \
        '--login-path(<path>)' \
        '--plugin-dir(<dir>)' \
        '--server-public-key-path(<path>)' \
        '--ssl-capath(<path>)' \
        '--ssl-crlpath(<path>)' \
   
}
