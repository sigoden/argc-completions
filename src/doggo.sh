_patch_table() {
    _patch_table_dedup_options \
        '--ndots' \
    | \
    _patch_table_edit_options \
        '--class;[IN|CH|HS]' \
        '--nameserver;[`_choice_nameserver`]' \
        '--strategy;[all|random|first]' \
        '--type;[`_choice_type`]' \
    | \
    _patch_table_edit_arguments ';;' 'hostname' 'type;[`_choice_type`]' 
}

_choice_type() {
    printf "%s\n" A AAAA CAA CNAME HINFO MX NS PTR SOA SRV TXT
}

_choice_nameserver() {
    cat <<-'EOF'
1.1.1.1
8.8.8.8
9.9.9.9
114.114.114.144
EOF
}
