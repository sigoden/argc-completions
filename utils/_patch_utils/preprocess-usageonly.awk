# Variables
#   - RAW_ARGS: cmd values
# 
# Example Input
# ```
# usage: tmux choose-buffer [-NrZ] [-F format] [-f filter] [-K key-format] [-O sort-order] [-t target-pane] [template]
# ```
#
# Example Output
# ```
# usage: tmux choose-buffer [template]
#   -N
#   -r
#   -Z
#   -F format
#   -f filter
#   -K key-format
#   -O sort-order
#   -t target-pane
# ```
BEGIN {
    split(RAW_ARGS, ARGS, " ")
    LEVEL = length(ARGS)
}

{
    idx = 1
    usage = ""
    numArg = 0
    split("", options)
    while (match(substr($0, idx), /\s*(\S+|\[[^\]]*\]\]?|\{[^}]*\}\}?)\s*/, arr)) {
        numArg += 1
        idx = idx + RLENGTH
        value = arr[1]
        if (numArg <= LEVEL + 1) {
            if (!usage) {
                usage = value
            } else {
                usage = usage " " value
            }
            continue
        }
        if (match(value, /^[\[{]/)) {
            value = substr(value, 2, length(value) - 2)
        }
        if (substr(value, 1, 1) == "-") {
            if (match(value, /\|\s*-/)) {
                split(value, flags, "|")
                for (i in flags) {
                    options[length(options) + 1] = "  " flags[i]
                }
            } else if (index(value, " ") > 0 || substr(value, 1, 2) == "--") {
                options[length(options) + 1] = "  " value
            } else {
                split(substr(value, 2), shorts, "")
                for (i in shorts) {
                    options[length(options) + 1] = "  -" shorts[i]
                }
            }
        } else {
            if (value != "..." && !match(value, /^[\[{(]/)) {
                value = "[" value "]"
            }
            usage = usage " " value
        }
    }
    print usage
    for (i in options) {
        print  options[i]
    }
}