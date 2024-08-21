_patch_help() { 
    $@ --help | sed '/^Available output columns:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--groups;*,[`_module_os_group`]' \
        '--logins;*,[`_module_os_user`]' \
        '--output;*,[`_choice_column`]' \
    | \
    _patch_table_edit_arguments 'username;*[`_module_os_user`]'
}

_choice_column() {
    cat <<-'EOF'
USER	user name
UID	user ID
GECOS	full user name
FAILED-TTY	where did the login fail?
HUSHED	user's hush settings
PWD-WARN	days user is warned of password expiration
PWD-CHANGE	date of last password change
PWD-MIN	number of days required between changes
PWD-MAX	max number of days a password may remain unchanged
PWD-EXPIR	password expiration date
CONTEXT	the user's security context
PROC	number of processes run by the user
EOF
}
