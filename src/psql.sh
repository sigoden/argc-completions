_patch_help() {
    $@ --help | \
    sed \
        -e 's/ ("one"),/,/' \
        -e '/^\s*--help/ d' \
        -e 's/(default: "\S\+")//' \

}

_patch_table() {
    _patch_table_edit_options \
        '--help;[options|commands|variables]' \
        '--host;[`_module_os_hostname`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'database;[`_choice_database`]' \
        'user;[`_choice_user`]' \
        
}

_choice_database() {
    psql -AtqwlF \t 2>/dev/null | gawk 'NF > 1 { print $1 }'
}

_choice_user() {
    psql -Atqwc 'select usename from pg_user' template1 2>/dev/null
}
