_patch_help() {
    rsync --help | sed \
        -e '/Usage:/ cUsage: rsync [OPTION]... [SRC]... DEST' \
        -e 's/--help, -h (\*)/--help         /'
}