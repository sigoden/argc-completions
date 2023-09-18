_patch_help() {
    $@ -h | \
    sed \
        '/^\s*-/ s/ : /  /' \

}

_patch_table() {
    _patch_table_edit_options \
        '-c(<num>)' \
        '-d(<secs>)' \
        '-f(<filter>)' \
        '-v(<view-mode>);[`_choice_view_mode`]' \
    | \
    _patch_table_edit_arguments ';;' 'device;[`_module_os_network_interface`]'

}

_choice_view_mode() {
    cat <<-'EOF'
0	KB/s
1	total KB
2	total B
3	total MB
4	MB/s
5	GB/s
EOF
}
