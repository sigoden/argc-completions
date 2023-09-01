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
                    OPTIONS[NUM, 4] = OPTIONS[NUM, 4]  trim(parts[5])
                    next
                } else if (substr(long, 1, 1) != "-") {
                    next
                }
                NUM = NUM + 1
                OPTIONS[NUM, 1] = trim(parts[2])
                OPTIONS[NUM, 2] = long
                OPTIONS[NUM, 3] = trim(parts[4])
                OPTIONS[NUM, 4] = trim(parts[5])
            }
        }
        END {
            for (i = i; i <= NUM; i++) {
                short = OPTIONS[i, 1]
                if (short != "") {
                    short = " " short ", "
                }
                notation = OPTIONS[i, 3]
                if (notation != "") {
                    notation = " <" notation ">"
                }
                print "  " short OPTIONS[i, 2] notation "    " OPTIONS[i, 4]
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
