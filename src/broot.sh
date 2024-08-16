_patch_help() { 
    $@ --help | \
    _patch_help_strip_ansi | \
    gawk '
        BEGIN {
            split("", OPTIONS)
            NUM = 0
        }
        {
            firstChar = substr($0, 1, 1)
            if (firstChar == "┌") {
                isTable = 1
                next
            } else if (firstChar == "└") {
                isTable = 0
                next
            }
            if (isTable == 1) {
                split($0, parts, "│")
                long = trim(parts[3])
                if (long == "") {
                    OPTIONS[NUM, 3] = OPTIONS[NUM, 3] " " trim(parts[4])
                    next
                }
                NUM = NUM + 1
                OPTIONS[NUM, 1] = trim(parts[2])
                OPTIONS[NUM, 2] = long
                OPTIONS[NUM, 3] = trim(parts[4])
            }
        }
        END {
            for (i = i; i <= NUM; i++) {
                short = OPTIONS[i, 1]
                long = OPTIONS[i, 2]
                description = OPTIONS[i, 3]
                gsub(/ Possible values: /, " ", description)
                if (short != "") {
                    short = " " short ", "
                }
                print "  " short long "    " description
            }
        }
        function trim(input) {
            gsub(/^[[:space:]]+|[[:space:]]+$/,"", input)
            return input
        }
    '
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'dir'
}
