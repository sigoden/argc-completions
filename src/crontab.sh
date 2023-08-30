_patch_help() {
    cat <<-'EOF'
usage:  crontab [-u user] file
    -u <user>     specific user
    -e            edit user's crontab
    -l            list user's crontab
    -r            delete user's crontab
    -i            prompt before deleting user's crontab
EOF
}

_patch_table() {
    _patch_table_edit_options \
        '-u;[`_module_os_user`]' \

}
