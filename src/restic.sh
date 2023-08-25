_patch_help() { 
    $@ --help | \
    sed \
        -e '1,/^Usage:/ c\Usage:' \
        -e 's/--iexclude --exclude/--iexclude pattern  /' \
        -e 's/--iinclude --include/--iinclude pattern  /' \

}

_patch_table() { 
    table="$( \
        _patch_table_edit_options \
            '--repo;[`_choice_repo`]' \
    )"

    if [[ "$*" == "restic" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--cacert;*,' \

    else
        echo "$table"
    fi
}

_choice_repo() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path dir
        return
    fi
    _choice_remote_repo
}

_choice_remote_repo() {
    command cat <<-'EOF' | _argc_util_comp_kv :
sftp=;;SFTP
rest=;;HTTP
s3=;;Amazon S3
swift=;;OpenStack Swift
b2=;;Backblaze B2
azure=;;Microsoft Azure Blob Storage
gs=;;Google Cloud Storage
rclone=;;rclone
EOF
}
