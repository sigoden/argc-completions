_patch_help() {
    $@ --help | sed 's/^\(-\S\)\[-\]\s*\[.*\]/\1     /'
}
