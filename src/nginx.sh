_patch_help() {
    $@ -h 2>&1 | \
    sed \
        '/^\s*-/ s/ : /   /' \

}

_patch_table() {
    _patch_table_edit_options \
        '-s;[`_choice_signal`]' \

}

_choice_signal() {
    cat <<-'EOF'
quit	shut down gracefully (SIGQUIT)
reload	reload configuration (SIGHUP)
reopen	re-open log files (SIGUSR1)
stop	shut down quickly (SIGTERM)
EOF
}
