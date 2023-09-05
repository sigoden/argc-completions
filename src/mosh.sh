_patch_help() { 
    $@ --help | sed '/^\s*-/ s/\(-\S\)\s\+-/\1 -/'
}

_patch_table() { 
    _patch_table_dedup_options \
        '--family' \
        '--predict' \
    | \
    _patch_table_edit_options \
        '--family;[`_choice_family`];Network family setting' \
        '--predict;[`_choice_predict`];Predict setting"' \
        '--ssh;[`_module_os_command`]' \
    | \
    _patch_table_edit_arguments ';;' 'host;[`_module_os_hostname`]' 'args..'

}

_choice_predict() {
    cat <<-'EOF'
adaptive	local echo for slower links
always	use local echo even on fast links
never	never use local echo
experimental	aggressively echo even when incorrect
EOF
}

_choice_family() {
    cat <<-'EOF'
inet	use IPv4 only
inet6	use IPv6 only
auto	autodetect network type for single-family hosts only
all	try all network types
prefer-inet	use all network types, but try IPv4 first [default]
prefer-inet6	use all network types, but try IPv6 first
EOF
}
