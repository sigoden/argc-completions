_patch_help() {
    curl --help all | \
    sed \
        -e 's/\(>\|\]\) \([A-Z(]\)/\1  \2/' \
        -e 's/\(--\S\+\) \([A-Z(]\)/\1  \2/' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--cert-type;[DER|PEM|ENG]' \
        '--data-binary;[`_choice_data_binary`]' \
        '--engine;[`_choice_engine`]' \
        '--ftp-method;[`_choice_ftp_method`]' \
        '--header;[`_module_http_header`]' \
        '--key-type;[DER|PEM|ENG]' \
        '--krb;[clear|safe|confidential|private]' \
        '--proxy-cert-type;[DER|PEM|ENG]' \
        '--request;[`_module_http_method`]' \

}

_choice_data_binary() {
    if [[ "$ARGC_CWORD" == '@'* ]]; then
        _argc_util_comp_path prefix=@ filter="${ARGC_CWORD:1}"
    fi
}

_choice_engine() {
    curl --engine list | tail -n +2
}

_choice_ftp_method() {
    cat <<-'EOF'
multicwd	curl does a single CWD operation for each path part in the given URL
nocwd	curl does no CWD at all
singlecwd	curl does one CWD with the full target directory and then operates on the file 'normally'
EOF
}
