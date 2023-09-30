_patch_help() {
    $@ --help | \
    sed \
        '/^\s*-/ s/=.../ string/' \

}

_patch_table() {
    _patch_table_dedup_options \
        '--help' \
        '--version' \
    | \
    _patch_table_edit_options \
        '--dns-result-order;[`_choice_dns_result_order`]' \
        '--unhandled-rejections;[`_choice_unhandled_rejections`]' \
        '--use-largepages;[`_choice_use_largepages`]' \

}

_choice_dns_result_order() {
    cat <<-'EOF'
ipv4first	IPv4 addresses are placed before IPv6 addresses
verbatim	addresses are in the order the DNS resolver returned
EOF
}

_choice_unhandled_rejections() {
    cat <<-'EOF'
strict	always raise an error
throw	raise an error unless 'unhandledRejection' hook is set
warn	log a warning
none	silence warnings
warn-with-error-code	log a warning and set exit code 1 unless 'unhandledRejection' hook is set
EOF
}

_choice_use_largepages() {
    cat <<-'EOF'
off	the default value, meaning do not map
on	map and ignore failure, reporting it to stderr
silent	map and silently ignore failure
EOF
}
