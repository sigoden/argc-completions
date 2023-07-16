_patch_help() { 
    $@ --help | sed '/^Available output columns:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--groups;*,[`_choice_group`]'  \
        '--logins;*,[`_choice_user`]' \
        '--output;*,[`_choice_column`]' \
    | \
    _patch_table_edit_arguments 'username;*[`_choice_user`]'
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

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}