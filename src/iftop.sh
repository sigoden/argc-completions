_patch_help() {
    $@ -h 2>&1 | \
    sed \
        's/^   \(-\S\) \(\S\+\) \(\S\+\)/  \1 \2-\3/' \

}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_dedup_options \
        '-o' \
    | \
    _patch_table_edit_options \
        '-i;[`_module_os_network_interface`]' \
        '-o(type);[`_choice_order`];Sort order' \
    | \
    _patch_table_edit_arguments ';;'

}

_choice_order() {
    cat <<-'EOF'
2s	Sort by first column (2s traffic average)
10s	Sort by second column (10s traffic average) [default]
40s	Sort by third column (40s traffic average)
source	Sort by source address
destination	Sort by destination address
EOF
}
