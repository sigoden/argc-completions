# Complete multiple parts of words separated by a char
# ```sh
# git ls-files | _argc_util_comp_parts /
# ```
_argc_util_comp_parts() {
    awk -v SEP="$1" -v ARGC_FILTER="${2-$ARGC_FILTER}" -v ARGC_PREFIX="${3}" '
BEGIN {
    split("", VALUES)
    split("", DEDUPS)
    ONLY_LINE = ""
    COUNT = 0
    split(ARGC_FILTER, filterParts, SEP)
    FILTER = filterParts[length(filterParts)]
    PREFIX = ""
    for (i = 1; i < length(filterParts); i++) 
        PREFIX = PREFIX filterParts[i] SEP
    print "__argc_filter=" FILTER
    print "__argc_prefix=" ARGC_PREFIX PREFIX
}
{
    if (index($0, ARGC_FILTER) == 1) {
        value = substr($0, length(PREFIX) + 1)
        if (COUNT == 0) {
            ONLY_LINE = value
            if (substr(ONLY_LINE, length(ONLY_LINE)) == SEP) {
                ONLY_LINE = ONLY_LINE "\0"
            }
        }
        COUNT = COUNT + 1
        idx = index(value, SEP)
        if (idx > 0) {
            value = substr(value, 1, idx) "\0"
        }
        if (!DEDUPS[value]) {
            DEDUPS[value] = 1
            VALUES[length(VALUES) + 1] = value
        }
    }
}

END {
    if (COUNT == 1) {
        print ONLY_LINE
    } else {
        for (i in VALUES) {
            print VALUES[i]
        }
    }
}'
}