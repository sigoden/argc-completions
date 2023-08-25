_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--library(<file:.db>)' \
        '--noiseprofiles(<file:.json>)' \
        '-d;[`_choice_debug_option`]' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}

_choice_debug_option() {
    printf "%s\n" all cache camctl camsupport control dev fswatch input lighttable lua masks memory nan opencl perf pwstorage print sql ioporder imageio
}
