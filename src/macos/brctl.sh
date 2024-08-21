_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $1 | gawk '
        BEGIN {
            split("", LINES)
            NUM = 0
        }
        {
            NUM = NUM + 1
            LINES[NUM] = $0
        }
        END {
            print "Commands:"
            for (i = 1; i <= NUM; i++) {
                line = LINES[i]
                if (match(line, /the following commands:/)) {
                    start = 1
                    continue
                }
                if (start != 1) {
                    continue
                }
                if (match(line, /^[A-Z]/)) {
                    start = 0
                    continue
                }
                if (match(line, /^     ([A-Za-z_-]+)/, arr)) {
                    print "    " arr[1]  "  "  LINES[i+1]
                    i += 1
                }
            }
        }'
    else
        _patch_help_run_man $1 | gawk -v subcmd=$2 '
        {
            line = $0
            if (match(line, /^     (\S+) /, arr)) {
                if (arr[1] == subcmd) {
                    start = 1
                    gsub(/^     /, "Usage: brctl ", line)
                    gsub(/[⟨⟩]/, "", line)
                    print line
                    next
                } else {
                    start = 0
                }
            }
            if (start == 1) {
                gsub(/^     /, "", line)
                print line
            }
        }
        '
    fi
}
