_patch_help() {
    _patch_help_run_man $@ | \
    gawk '{
        printLine = 1
        if (match($0, /^\s*conf-variable:/)) {
            printLine = 0
        } else if (match($0, /^\s*-/)) {
            if (match($0, /<[A-Za-z0-9_-]+(\x2f[A-Za-z0-9_-]+)+>/) && !match($0, /ip\x2fhostname/)) {
                gsub("<", "{")
                gsub(">", "}")
                gsub("/", "|")
            }
        }
        if (printLine) {
            print $0
        }
    }'
}
