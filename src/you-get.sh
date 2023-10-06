_patch_help() {
    $@ --help 2>/dev/null | sed 's/ or USERNAME:PASSWORD@HOST:PORT//'
}
