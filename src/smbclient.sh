_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e '/^\s*-/ s/|-/ -/' \

}

_patch_table() {
    _patch_table_dedup_options \
        '--machine-pass' \
        '--max-protocol' \
    | \
    _patch_table_edit_options \
        '--name-resolve;[`_choice_name_resolve`]' \
    | \
    _patch_table_edit_commands ';;' | \
    _patch_table_edit_arguments ';;' 'servicename' 'password'
}

_choice_name_resolve() {
    cat <<-'EOF'
lmhosts	Lookup an IP address in the Samba lmhosts file.
host	Do a standard host name to IP address resolution, using the system /etc/hosts, NIS, or DNS lookups.
wins	Query a name with the IP address listed in the wins server parameter.
bcast	Do a broadcast on each of the known local interfaces listed in the interfaces parameter.
EOF
}
