_patch_table() {
    _patch_table_edit_options \
        '-connector;[docker|runc]' \
        '-s;[`_choice_sort`]' \

}

_choice_sort() {
    printf "%s\n" id name cpu mem net pids io state uptime 
}
