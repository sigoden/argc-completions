_patch_help() { 
    _patch_help_run_help $@ | sed '/^\s*-r -s off/ d'
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'intpufile' 'outputfile'
}
