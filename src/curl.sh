_patch_help() {
    curl --help all | \
    sed -e '/--curves/ s/<algorithm list> (EC)/<algorithm list>  (EC)/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--cert-type;[DER|PEM|ENG]' \
        '--engine;[`_choice_engine`]' \
        '--header;[`_module_http_header`]' \
        '--ftp-method;[`_choice_ftp_method`]' \
        '--key-type;[DER|PEM|ENG]' \
        '--krb;[clear|safe|confidential|private]' \
        '--request;[`_module_http_method`]' \
        '--proxy-cert-type;[DER|PEM|ENG]' \

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
