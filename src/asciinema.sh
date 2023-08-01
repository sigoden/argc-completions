_patch_help() { 
    TERM_WIDTH=200 _patch_help_run_help $@ | sed '/positional arguments:/,+1 c\Commands:'
}