_patch_help() { 
    _transform() {
        gawk '{
            idx = 1
            usage = "usage: "
            split("", options)
            while (match(substr($0, idx), /\s*(\S+|\[[^\]]*\]\]*)\s*/, arr)) {
                idx = idx + RLENGTH
                value = arr[1]
                if (substr(value, 1, 1) == "[") {
                    value = substr(value, 2, length(value) - 2)
                }
                if (substr(value, 1, 1) == "-") {
                    if (index(value, " ") > 0 || substr(value, 1, 2) == "--") {
                        options[length(options) + 1] = "  " value
                    } else if (match(value, /^-\S+(\|-\S+)$/)) {
                        split(value, flags, "|")
                        for (i in flags) {
                            options[length(options) + 1] = "  -" flags[i]
                        }
                    } else {
                        split(substr(value, 2), shorts, "")
                        for (i in shorts) {
                            options[length(options) + 1] = "  -" shorts[i]
                        }
                    }
                } else {
                    usage = usage " " value
                }
            }
            print usage
            for (i in options) {
                print  options[i]
            }
        }'
    }
    if [[ "$*" == "tmux" ]]; then
        tmux --help 2>&1 | sed -e '{N; s/^usage: //; s/\n\s*/ /;}' | _transform
        echo "Commands:"
        tmux list-commands | sed -e 's/^\([a-z0-9][a-z0-9-]\+\) (\(\S\+\)) .*/  \1, \2/' -e 's/\([a-z0-9][a-z0-9-]\+\) .*/  \1/'
    else
        tmux list-commands $2 | sed 's/^\([a-z0-9][a-z0-9-]\+\) (\(\S\+\)) \(.*\)$/\1 \3/' | _transform
    fi
}

_patch_table() { 
    if [[ "$*" == "tmux split-window" ]]; then
        _patch_table_dedup_options -e
        
    else
        cat
    fi
}