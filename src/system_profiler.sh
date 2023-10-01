_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '-detailLevel;[`_choice_detail_level`]' \
        '-timeout(<seconds>)' \
    | \
    _patch_table_edit_arguments ';;' 'dateType;*[`_choice_data_type`]'
}

_choice_detail_level() {
    cat <<-'EOF'
mini	report with no personal information
basic	basic hardware and network information
full	all available information
EOF
}

_choice_data_type() {
    system_profiler -listDataTypes | tail -n +2
}
