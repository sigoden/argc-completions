_patch_help() {
    rsync --help | sed \
        -e '/Usage:/ cUsage: rsync [OPTION]... [SRC]... DEST' \
        -e '/^--help/ c--help                   show this help (* -h is help only on its own)' \
        -e '/^--append-verify/ c--append-verify         append data in file checksum'
}