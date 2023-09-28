_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        _patch_help_strip_ansi | \
        gawk '{
            if (match($0, /^VERBS/)) {
                verbsZone = 1
                print "Commands:"
            } else if (match($0, /^[A-Z]/)) {
                verbsZone = 0
            } else if (verbsZone && match($0, /^     ([a-z-]+)( |$)/, arr)) {
                subcmdZone = 1
                print "  " arr[1]
            } else if (subcmdZone) {
                if (match($0, /^\s*$/)) {
                    subcmdZone = 0
                }
                if (subcmdZone) {
                    print $0
                }
            }
        }'
    else
        _patch_help_run_man $1 | \
        _patch_help_strip_ansi | \
        gawk -v SUBCMD=$2 '{
            if (match($0, "^     " SUBCMD))  {
                subcmdZone = 1
            } else if (subcmdZone)  {
                if (match($0, /^     \S/)) {
                    subcmdZone = 0
                }
                if (subcmdZone) {
                    print gensub(/^          /, "", 1, $0)
                }
            }
        }'
    fi
}
