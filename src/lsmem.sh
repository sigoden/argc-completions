_patch_help() { 
    $@ --help | sed '/^Available output columns:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--output;*,[`_choice_column`]' \
        '--split;*,[`_choice_column`]' \
        '--summary;[never|always|only]' \

}

_choice_column() {
    cat <<-'EOF'
RANGE	start and end address of the memory range
SIZE	size of the memory range
STATE	online status of the memory range
REMOVABLE	memory is removable
BLOCK	memory block number or blocks range
NODE	numa node of memory
ZONES	valid zones for the memory range
EOF
}
