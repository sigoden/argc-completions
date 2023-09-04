_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@  | sed '/^STANDALONE TOOLS/,$ d'
    else
        man_text="$(_patch_help_run_man $1 $2)"
        if grep -q "$1 $2 <subcommand>" <<<"$man_text"; then
            if [[ $# -eq 2 ]]; then
                echo "$man_text" | \
                sed -n '/^SUBCOMMAND/,/^[A-Z]/ p' | \
                gawk '
                    BEGIN { print "Commands:" }
                    {
                        if (match($0, /^       \S/)) {
                            commandZone = 1
                            print $0
                        } else if (match($0, /^\s*$/)) {
                            commandZone = 0
                        } else if (commandZone == 1) {
                            print $0
                        }
                    }'
            else
                echo "$man_text" | \
                sed -n '/^SUBCOMMAND/,/^[A-Z]/ p' | \
                gawk -v PREFIX="$1 $2" -v CMD="$3" '
                    {
                        if (match($0, /^       \S/)) {
                            line = substr($0, 8)
                            if (match(line, "^" CMD "( |$)")) {
                                print "Usage: " PREFIX line
                                zone = 1
                            } else {
                                zone = 0
                            }
                        } else {
                            if (zone == 1) {
                                print substr($0, 8)
                            }
                        }
                    }' | \
                sed '/^\s*-/ s/|--/, --/' 
            fi
        else
            echo "$man_text" | \
            sed \
                -e 's/| -l <device>$//' \
                -e '/^\s*-/ s/|--/, --/' \

        fi
    fi
}

_patch_table() {
    if [[ "$*" == "btrfs receive" ]]; then
        _patch_table_dedup_options \
            '--quiet' \
            '-v' \

    elif [[ "$*" == "btrfs subvolume delete" ]]; then
        _patch_table_edit_arguments ';;'  'subvolume...'

    else
        cat
    fi
}
