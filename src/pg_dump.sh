_patch_table() {
    _patch_table_edit_options \
        '--dbname;[`_choice_database`]' \
        '--format;[`_choice_format`]' \
        '--host;[`_module_os_hostname`]' \
        '--section;[pre-data|data|post-data]' \
        '--username;[`_choice_user`]' \
    | \
    _patch_table_edit_arguments \
        'dbname;[`_choice_database`]' \
        
}

_choice_format() {
    cat <<-'EOF'
c	custom
d	directory
t	tar
p	plain text
EOF
}

_choice_database() {
    psql -AtqwlF \t 2>/dev/null | gawk 'NF > 1 { print $1 }'
}

_choice_user() {
    psql -Atqwc 'select usename from pg_user' template1 2>/dev/null
}
