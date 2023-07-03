# Resolve paths, including converting paths to specific formats, concatenating paths, cleaning paths.
# Args:
#   -p: Convert paths to windows format on windows and to unix format on unix.
#   -u: Convert path to unix format.
#
# ```sh
# _argc_util_path_resolve /home/alice gh/argc                 # /home/alice/gh/argc
# _argc_util_path_resolve C:\\Users\\alice gh\\argc           # C:\Users\alice\gh\argc
# _argc_util_path_resolve -u C:\\Users\\alice gh\\argc        # /c/Users/alice/gh/argc
# _argc_util_path_resolve -p /home/alice gh/argc              # C:\Users\alice\gh\argc (windows); /home/alice/gh/argc (non-windows)
# _argc_util_path_resolve argc/src ../tests                   # understand ..
# _argc_util_path_resolve argc/src .//tests/                  # cleaning extra / 
# pwd | _argc_util_path_resolve -p                            # accept pipe
# ```
_argc_util_path_resolve() {
    local format args value
    if [[ "$1" == "-p" ]]; then format=1; shift; fi # platform path
    if [[ "$1" == "-u" ]]; then format=2; shift; fi # unix path
    if [[ $# -eq 0 ]]; then args=( "$(cat)" ); else args=( "$@" ); fi
    args="$(printf "%q\n" "${args[@]}")"
    value="$(awk -v RAW_ARGS="$args" 'BEGIN {
    split(RAW_ARGS, args, "\n"); split("", parts)
    partsLen = 0; isWin = 0; sep = "/";
    for (i in args) {
        arg = args[i]
        if (arg == "\x27\x27") continue
        if (i == 1) {
            if (match(arg, /^[A-Za-z]:/)) {
                value = substr(arg, 1, 2) "\\"; arg = substr(arg, 3); isWin = 1; sep = "\\"; 
            } else if (substr(arg, 1, 1) == "/") {
                value = "/"; arg = substr(arg, 2)
            }
        }
        if (isWin == 1) gsub("\\\\", "/", arg)
        split(arg, pathParts, "/")
        for (j in pathParts) {
            pathPart = pathParts[j]
            if (pathPart == "" || pathPart == ".") continue
            if (pathPart == "..") {
                if (partsLen == 0) exit 1
                parts[partsLen] = ""; partsLen = partsLen - 1
            } else {
                partsLen = partsLen + 1; parts[partsLen] = pathPart
            }
        }
    }
    for (i = 1; i <= partsLen; i++) {
        if (i == 1) {
            value = value parts[i]
        } else {
            value = value sep parts[i]
        }
    }
    print value
}'
)"
    if [[ $? -ne 0 ]]; then exit $?;  fi
    if [[ -z "$value" ]]; then return; fi
    if [[ "$value" == [A-Za-z]:* ]]; then
        if [[ "$format" -eq 2 ]] && [[ "$ARGC_OS" == "windows" ]]; then cygpath -u "$value"; else echo "$value"; fi
    else
        if [[ "$format" -eq 1 ]] && [[ "$ARGC_OS" == "windows" ]]; then cygpath -w "$value"; else echo "$value"; fi
    fi
}