# Variables
#   - LEVEL: subcmd level
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
{
    idx = 1
    usage = ""
    numArg = 0
    split("", options)
    while (match(substr($0, idx), /\s*(\S+|\[[^\]]*\]\]*)\s*/, arr)) {
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
            if (value != "...") {
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