_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '-entries;[`_choice_category`]' \
        '-q;[`_choice_category`]' \

}

_choice_category() {
    cat <<-'EOF'
group	name or gid
host	name or ip_address (used for both IPv6 and IPv4)
mount	name
protocol	name or number
rpc	name or number
service	name or port
user	name or uid
EOF
}
