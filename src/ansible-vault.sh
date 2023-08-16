_patch_help() { 
    $@ --help | sed '/^positional arguments:/,+1 {N;s/\n\s*\x7b.*$//;s/^positional arguments:$/Commands:/;}'
}
