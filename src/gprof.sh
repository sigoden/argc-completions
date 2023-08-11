_patch_help() { 
    _patch_help_run_man $@ | \
    gawk 'BEGIN {
            split("", LINES)
            NUM = 0
        }
        {
            NUM = NUM + 1
            LINES[NUM] = $0
        }
        END {
            for (i = 1; i <= NUM; i++) {
                line = LINES[i]
                if (match(line, /^OPTIONS/)) {
                    isOptionZone = 1
                } else if (match(line, /^[A-Z]/)) {
                    isOptionZone = 0
                }
                if (isOptionZone == 1) {
                    if (match(line, /^\s*"-\S.*"$/)) {
                        gsub(/"/, "", line)
                        if (optionLine == "") {
                            optionLine = line
                        } else {
                            optionLine = optionLine ", " trim(line)
                        }
                    } else {
                        print optionLine
                        optionLine = ""
                        print line
                    }
                } else {
                    print line
                }
            }
        }
        function trim(input) {
            gsub(/^[[:space:]]+|[[:space:]]+$/,"", input)
            return input
        }
        '
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'image-file' 'profile-file...'
}
