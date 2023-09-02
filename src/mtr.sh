_patch_table() {
    _patch_table_edit_options \
        '--displaymode;[`_choice_displaymode`]' \
        '--interface;[`_module_os_network_interface`]' \
        '--ipinfo;[`_choice_ipinfo`]' \
    | \
    _patch_table_edit_arguments 'hostname;[`_module_os_hostname`]'
}

_choice_displaymode() {
    cat <<-'EOF'
0	selects statistics
1	selects the stripchart without latency information
2	selects the stripchart with latency information
EOF
}

_choice_ipinfo() {
    cat <<-'EOF'
0	Display AS number (equivalent to -z)
1	Display IP prefix
2	Display country code of the origin AS
3	Display RIR (ripencc, arin, ...)
4	Display the allocation date of the IP prefix
EOF
}
