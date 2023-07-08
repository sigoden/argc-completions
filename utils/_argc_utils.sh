# Complete file
# Args:
#   `-prefix=`: Set __argc_prefix
#   `-filter=`: Set __argc_filter, default value is ARGC_FILTER
#   `-cd=`: Set __argc_cd
#   `-exts=`: Set file's allowed exts. e.g. `-exts=.json,jsonc`
_argc_util_comp_file() {
    local filter="$ARGC_FILTER"
    local exts chdir prefix
    for arg in "${@}"; do
        case "$arg" in
        -prefix=*)
            prefix="${arg:8}"
            ;;
        -filter=*)
            filter="${arg:8}"
            ;;
        -exts=*)
            exts=":${arg:6}"
            ;;
        -cd=*)
            chdir="${arg:4}"
            ;;
        esac
    done
    if [[ -n "$chdir" ]]; then
        echo "__argc_cd=$chdir"
    fi
    if [[ -n "$prefix" ]]; then
        echo "__argc_prefix=$prefix"
    fi
    echo "__argc_filter=$filter"
    echo "__argc_value=file$exts"
}


# Complete key value pairs
#
# ```sh
# _choice_fn() {
#     cat <<-'EOF' | _argc_util_comp_kv =
# foo=yes,no
# bar=v1,v2,v3
# baz=__argc_value=file
# qux=`_choice_fn`
# EOF
# }
# ```
_argc_util_comp_kv() {
    local sep="$1"
    local filter="${2-$ARGC_FILTER}"
    local prefix 
    if [[ "$filter" == *"$sep"* ]]; then
        prefix="${filter%%$sep*}$sep"
        filter="${filter#*$sep}"
        echo "__argc_prefix=$prefix"
    fi
    echo "__argc_filter=$filter"
    for line in $(cat); do
        if [[ -z "$prefix" ]]; then
            echo -e "${line%%=*}$sep\0"
        else
            if [[ "$line" == "$prefix"* ]]; then
                local value="${line#*$sep}"
                if [[ "$value" == $'`'* ]]; then
                    eval "${value:1:-1}" 2>/dev/null
                else
                    echo $value | tr ',' '\n'
                fi
            fi
        fi
    done
}


# Complete multiple parts of words separated by a char
#
# ```sh
# git ls-files | _argc_util_comp_parts /
# ```
_argc_util_comp_parts() {
    gawk -v SEP="$1" -v ARGC_FILTER="${2-$ARGC_FILTER}" -v ARGC_PREFIX="${3}" '
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


# Complete subcommand for something like `sudo`/`npx`.
# Args:
#   Index:  Slice from positional args
#   PrependArgs*: Args to prepend to sliced positional args array
#
# ```sh
# @ description A sudo cli
# # @arg cmd
# # @arg args~[`_choice_args`]
# _choice_args() {
#     _argc_util_comp_subcommand 0 
# }
# ```
_argc_util_comp_subcommand() {
    local args=( "${@:2}" "${argc__positionals[@]:$1}" )
    args[-1]="$ARGC_LAST_ARG"
    local completions_dir="$( dirname "${BASH_SOURCE[0]}" )"
    local scriptfile="$completions_dir/${args[0]}.sh"
    if [[ ! -f "$scriptfile" ]]; then
        scriptfile="$completions_dir/${args[0]}/${args[1]}.sh"
        if [[ ! -f "$scriptfile" ]]; then
            return
        fi
    fi
    scriptfile="$(_argc_util_path_resolve -p "$scriptfile")"
    argc --argc-compgen generic "$scriptfile" "${args[@]}"
}


# Test value is a path
#
# ```sh
# _argc_util_is_path ./      # yes
# _argc_util_is_path /       # yes
# _argc_util_is_path ~       # yes
# _argc_util_is_path C:\\    # yes
# _argc_util_is_path README  # no
# ```
_argc_util_is_path() {
     if [[ "$1" == '.'* || "$1" == '/'* || "$1" == '~'* || "$1" == [A-Za-z]:*  ]]; then
        return 0
    else
        return 1
    fi
}


# Enetr kv complete mode
# Args:
#   sep: key value seperator
#   filter: the filter, defualt value is $ARGC_FILTER
#
# Explain:
# Suppose we add `_argc_util_mode_kv :` to choice fn.
# If the word is `local:w/argc`, we will get variabels:
#   argc__kv_key: local
#   argc__kv_prefix: local:
#   argc__kv_filter: w/argc
# If the word is `local`, we will get variabels:
#   argc__kv_key: local
#   argc__kv_prefix:
#   argc__kv_filter: local
_argc_util_mode_kv() {
    local sep="$1"
    local filter="${2-$ARGC_FILTER}"
    if [[ "$filter" == *"$sep"* ]]; then
        argc__kv_key="${filter%%$sep*}"
        argc__kv_prefix="$argc__kv_key$sep"
        argc__kv_filter="${filter#*$sep}"
        echo "__argc_prefix=$argc__kv_prefix"
        echo "__argc_filter=$argc__kv_filter"
    else
        argc__kv_filter="$filter"
        echo "__argc_filter=$argc__kv_filter"
    fi
}


# Enetr parts complete mode
# Args:
#   sep: key value seperator
#   filter: The filter, defualt value is $ARGC_FILTER
#   prefix: The prefix
_argc_util_mode_parts() {
    local sep="$1"
    argc__parts_filter="${2-$ARGC_FILTER}" 
    argc__parts_prefix="${3}"
    if [[ "$argc__parts_filter" == *"$sep"* ]]; then
        argc__parts_local_prefix="${argc__parts_filter%$sep*}$sep"
        argc__parts_filter="${argc__parts_filter##*$sep}"
        argc__parts_prefix="$argc__parts_prefix$argc__parts_local_prefix"
    fi
    echo "__argc_prefix=$argc__parts_prefix"
    echo "__argc_filter=$argc__parts_filter"
}


# Run functions in parallel
#
# ```sh
# _argc_util_parallel _choice_branch ::: _choice_tag ::: _choice_head
# ```
_argc_util_parallel() {
    argc --argc-parallel $(_argc_util_path_resolve $0) "$@"
}


# Select global options from command line
#
# ```sh
# _git() {
#     git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
# }
# _docker() {
#     docker $(_argc_util_param_select_options --host --config --context) "$@"
# }
# ```
_argc_util_param_select_options() {
    local option option_var option_val
    for option in "$@"; do
        option_var="argc_$(echo "$option" | sed 's/^-\+//' | tr '-' '_')"
        option_val="${!option_var}"
        if [[ -n "$option_val" ]]; then
            if [[ "$option_val" -eq 1 ]]; then
                echo -n " $option"
            else
                echo -n " $option $option_val"
            fi
        fi
    done
}


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
    value="$(gawk -v RAW_ARGS="$args" 'BEGIN {
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


# Search for a file by traversing the directory tree upwards starting from the current directory.
# Args:
#   -p: Return the parent directory, not the file itself.
#
# ```sh
#   _argc_util_path_search_parent package.json
#   _argc_util_path_search_parent deno.json deno.jsonc
#   _argc_util_path_search_parent -p package.json  # search folder contains package.json
# ```
_argc_util_path_search_parent() {
    local pwd_="$PWD"
    local parent
    if [[ "$1" == "-p" ]]; then parent=1; shift; fi
    _check() {
        local value target
        for value in $@; do
            if [[ -f "$value" ]]; then
                target="$(realpath "$value")"
                if [[ $parent == 1 ]]; then dirname "$target"; else echo "$target"; fi
                return 0
            fi
        done
        if [[ $PWD == "/"  ]]; then return 0; fi
        return 1
    }
    until _check $@; do cd ..; done
    cd "$pwd_"
}


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
    gawk -v RAW_ARGS="$args" 'BEGIN {
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


