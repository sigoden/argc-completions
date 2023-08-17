_patch_table() {
    _patch_table_edit_options \
        '--database;[`_choice_database`]' \
        '--dbname;[`_choice_database`]' \
        '--host;[`_module_os_hostname`]' \
        '--username;[`_choice_user`]' \
        
}

_choice_database() {
    psql -AtqwlF \t 2>/dev/null | gawk 'NF > 1 { print $1 }'
}

_choice_user() {
    psql -Atqwc 'select usename from pg_user' template1 2>/dev/null
}
