_patch_help() {
    $@ --help 2>&1 | sed 's/+/ /'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--interface;[`_module_os_network_interface`]' \
        '--module;[`_choice_method`]' \
        '--options;*,[`_choice_option`]' \

}

_choice_method() {
    printf "%s\n" default icmp tcp tcpconn udp udplite dccp raw
}

_choice_option() {
    if [[ "$argc_module" == "icmp" ]] || [[ -n "$argc_icmp" ]]; then
        cat <<-'EOF'
raw	Use only raw sockets (the traditional way).
dgram	Use only dgram icmp sockets.
EOF

    elif [[ "$argc_module" == "tcp" ]] || [[ -n "$argc_tcp" ]]; then
        cat <<-'EOF'
syn	Set flag
ack	Set flag
fin	Set flag
rst	Set flag
psh	Set flag
urg	Set flag
ece	Set flag
cwr	Set flag
flags=	Sets the flags field in the tcp header exactly to num.
ecn	Send syn packet with tcp flags ECE and CWR (for Explicit Congestion Notification, rfc3168).
sack	Use the corresponding tcp header option in the outgoing probe packet.
timestamps	Use the corresponding tcp header option in the outgoing probe packet.
window_scaling	Use the corresponding tcp header option in the outgoing probe packet.
sysctl	Use current sysctl (/proc/sys/net/*) setting for the tcp header options above and ecn.
mss=	Use value of num for maxseg tcp header option (when syn).
info	Print tcp flags of final tcp replies when the target host is reached.
EOF

    elif [[ "$argc_module" == "udplite" ]] || [[ -n "$argc_udplite" ]]; then
        cat <<-'EOF'
coverage=	Set udplite send coverage to num.
EOF
    elif [[ "$argc_module" == "dccp" ]] || [[ -n "$argc_dccp" ]]; then
        cat <<-'EOF'
service=	Set DCCP service code to num (default is 1885957735).
EOF
    elif [[ "$argc_module" == "raw" ]] || [[ -n "$argc_protocol" ]]; then
        cat <<-'EOF'
protocol=	Sse IP protocol proto
EOF
    fi
}
