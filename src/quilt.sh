_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | sed '/^QUILT COMMANDS REFERENCE/ c\COMMANDS'
    else
        _patch_help_run_man $1 | \
        gawk -v SUBCMD=$2 '{
            if (match($0, /^QUILT COMMANDS REFERENCE/)) {
                commondZone = 1
            } else if (match($0, /^[A-Z]/)) {
                commondZone = 0
                subcmdZone = 0
            }
            if (commondZone) {
                if (match($0, /^       \S/)) {
                    if (match($0, "^       " SUBCMD "( |$)")) {
                        subcmdZone = 1
                        $0 = "Usage: " gensub(/^\s*/, "", 1, $0)
                    } else {
                        subcmdZone = 0
                    }
                }
            }
            if (subcmdZone) {
                print gensub(/^ {6}/, "", 1, $0)
            }
        }' | \
        sed '/^\s*-p n/,+2 d'
    fi
}
