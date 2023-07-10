_patch_help() { 
    $@ --help | sed '/positional arguments:/,+1 c\Commands:'
}