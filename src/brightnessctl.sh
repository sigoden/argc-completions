_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help  2>&1| \
        sed \
            -e '/^Usage:/ s/ \[operation\]//' \
            -e '/^Operations:/,/^\s*$/ s/ \([A-Z]\+\)\t/ /' \
            -e 's/^Operations:/Commands:/' \
            
    fi
}
