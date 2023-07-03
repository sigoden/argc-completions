# Tools to modify the completion list
#
##`nospace`: add nospace marker
# ```sh
# _choice_fn | _argc_util_transform nospace
# ```
#
##`nospaceIfEnd=<v>`: add nospace marker only if value endsWith <v>
# ```sh
# _choice_fn | _argc_util_transform nospaceIfEnd=/
# ```
# 
##`space`: remove nospace marker
# ```sh
# _choice_fn | _argc_util_transform space
# ```
# 
##`format=<sep>`: format the raw value-description text as completion list.
# ```sh
# cat <<-'EOF' | _argc_util_transform format=:
# value1:desc1
# value2:desc2
# EOF
# ```
# 
## `prefix=<value>`: append suffix to values
# ```sh
# _choice_fn | _argc_util_transform prefix=/
# ```
# 
## `suffix=<value>`: append suffix to values
# ```sh
# _choice_fn | _argc_util_transform suffix==
# ```
# 
# Note: The transformer can be combined:
# ```sh
# _choice_fn | _argc_util_transform suffix== nospace
# ```
_argc_util_transform() {
    local args
    args="$(printf "%s\n" "$@")"
    awk -v RAW_ARGS="$args" 'BEGIN {
    split(RAW_ARGS, args, "\n"); argsLen = length(args)
    start = 1; sep = "\t"
    if (index(args[1], "format=") == 1) {
        start = 2; sep = substr(args[1], 8)
    }
}{
    description = ""
    sepIdx = index($0, sep)
    if (sepIdx > 0) {
        value = substr($0, 1, sepIdx - 1)
        description = substr($0, sepIdx + 1)
    } else {
        value = $0
    }
    valueLen = length(value)
    nospace = 0
    if (substr(value, valueLen) == "\0") {
        nospace = 1; value = substr(value, 1, valueLen - 1)
    }
    for (i = start; i <= argsLen; i++) {
        arg = args[i]
        if (arg == "nospace") {
            nospace = 1
        } else if (arg == "space") {
            nospace = 0
        } else if (index(arg, "nospaceIfEnd=")) {
            if (substr(value, length(value)) == substr(arg, 14)) {
                nospace = 1
            }
        } else if (index(arg, "prefix=")) {
            value = substr(arg, 8) value
        } else if (index(arg, "suffix=")) {
            value = value substr(arg, 8)
        }
    }
    if (nospace == 1) { value = value "\0" }
    if (description != "") { description = "\t" description }
    print value description
}'
}