[[ -n "${_argc_utils_loaded:-}" ]] && return 0
_argc_utils_loaded=1

# Complete path
# Args:
#   `dir`: Complete path is dir
#   `prefix=`: Set __argc_prefix
#   `filter=`: Set __argc_filter
#   `cd=`: Set __argc_path_cd
#   `suffix=`: Set __argc_suffix
#   `exts=`: Set file's allowed exts. e.g. `exts=.json,jsonc`
_argc_util_comp_path() {
    local isdir suffix filter exts chdir prefix with_filter with_prefix arg
    for arg in "${@}"; do
        case "$arg" in
        dir)
            isdir=1
            ;;
        prefix=*)
            with_prefix=1
            prefix="${arg:7}"
            ;;
        suffix=*)
            suffix="${arg:7}"
            ;;
        filter=*)
            with_filter=1
            filter="${arg:7}"
            ;;
        exts=*)
            exts=":${arg:5}"
            ;;
        cd=*)
            chdir="${arg:3}"
            ;;
        esac
    done
    if [[ -n "$chdir" ]]; then
        echo "__argc_cd=$chdir"
    fi
    if [[ -n "$suffix" ]]; then
        printf '__argc_suffix=%s\0\n' "$suffix"
    fi
    if [[ "$with_prefix" -eq 1 ]]; then
        echo "__argc_prefix=$prefix"
    fi
    if [[ "$with_filter" -eq 1 ]]; then
        echo "__argc_filter=$filter"
    fi
    if [[ "$isdir" -eq 1 ]]; then
        echo "__argc_value=dir"
    else
        echo "__argc_value=path$exts"
    fi
}


# Complete key value pairs
# Args:
#   SEP: seperator
#   FILTER: default value is ARGC_CWORD
#   PREFIX: additional prefix
#
# ```sh
# _choice_fn() {
#     cat <<-'EOF' | _argc_util_comp_kv =
# foo=yes,no;;desc foo
# bar=v1,v2,v3;;desc bar
# baz=__argc_value=file;;desc baz
# qux=`_choice_fn`;;desc qux
# quux;;as flag, no value
# quxs=`_choice_fn`,*;;comma seperated list
# *=`_choice_fn`;;when nothing else matches
# EOF
# }
# ```
_argc_util_comp_kv() {
    local sep="$1"
    local filter="${2-$ARGC_CWORD}"
    local prefix="${3}"
    if [[ "$filter" == *"$sep"* ]]; then
        argc__kv_key="${filter%%"$sep"*}"
        argc__kv_local_prefix="$argc__kv_key$sep"
        argc__kv_prefix="$prefix$argc__kv_local_prefix"
        argc__kv_filter="${filter#*"$sep"}"
        echo "__argc_prefix=$argc__kv_prefix"
        echo "__argc_filter=$argc__kv_filter"
    else
        argc__kv_key=""
        argc__kv_local_prefix=""
        argc__kv_prefix="$prefix"
        argc__kv_filter="$filter"
        if [[ -n "$argc__kv_prefix" ]]; then
            echo "__argc_prefix=$argc__kv_prefix"
        fi
        echo "__argc_filter=$argc__kv_filter"
    fi
    local line desc key key_value asterisk_key_value
    local -a lines=()
    # Nested function intentionally reads the caller's locals (dynamic scope).
    _argc_util_comp_kv_eval_value() {
        local vsep value="$1" filter="$2"
        if [[ "$value" == $'`'*$'`' ]]; then
            eval "${value:1:-1}" 2>/dev/null
        elif [[ "$value" == *$'`'*$'`' ]]; then
            vsep="${value%%$'`'*}"
            value="${value:${#vsep}}"
            if [[ "$filter" == *"$vsep"* ]]; then
                argc__kv_local_prefix="${filter%"$vsep"*}$vsep"
                argc__kv_prefix="$prefix$argc__kv_local_prefix"
                argc__kv_filter="${filter##*"$vsep"}"
                echo "__argc_prefix=$argc__kv_prefix"
                echo "__argc_filter=$argc__kv_filter"
            fi
            eval "${value:1:-1}" 2>/dev/null | _argc_util_transform nospace
        else
            echo "$value" | command tr ',' '\n'
        fi
    }
    # Read all input first so evaluated choice functions cannot consume it.
    mapfile -t lines
    for line in "${lines[@]}"; do
        if [[ -z "$line" ]]; then
            continue
        fi
        if [[ "$line" == *";;"* ]]; then
            desc="${line#*;;}"
            key_value=${line%%;;*}
        else
            desc=""
            key_value="$line"
        fi
        key="${key_value%%=*}"
        if [[ "$key" == "*" ]]; then
            asterisk_key_value="$key_value"
            continue
        fi
        if [[ -z "$argc__kv_local_prefix" ]]; then
            if [[ "$key" == "$key_value" ]]; then
                printf '%s\t%s\n' "$key" "$desc"
            else
                printf '%s%s\0\t%s\n' "$key" "$sep" "$desc"
            fi
        else
            if [[ "$key" == "$argc__kv_key" ]]; then
                _argc_util_comp_kv_eval_value "${key_value#*=}" "$filter"
                return
            fi
        fi
    done
    if [[ -n "$asterisk_key_value" ]]; then
        _argc_util_comp_kv_eval_value "${asterisk_key_value#*=}" "$filter"
    fi
}


# Complete tag-value pairs.
#
# ```sh
# _choice_fn() {
#     cat <<-'EOF' | _argc_util_comp_tv =
# foo=yes,no;;desc foo
# bar=v1,v2,v3;;desc bar
# baz=__argc_value=file;;desc baz
# qux=`_choice_fn`;;desc qux
# quux;;desc qux
# abc=`_choice_arg1`;`_choice_arg2`;;support two arguments
# EOF
# }
# ```
_argc_util_comp_tv() {
    local line desc key key_value value lines value_parts args_len parts_len i idx part_value positional tag_key
    local last=""

    args_len=${#argc__positionals[@]}
    if [[ $args_len -gt 0 ]]; then
        last="${argc__positionals[$((args_len - 1))]}"
    fi
    local -a input=() lines=()
    local -A used_tags=()
    for positional in "${argc__positionals[@]}"; do
        used_tags["x$positional"]=1
    done
    mapfile -t input
    for line in "${input[@]}"; do
        if [[ -z "$line" ]]; then
            continue
        fi
        if [[ "$line" == *";;"* ]]; then
            desc="${line#*;;}"
            key_value=${line%%;;*}
        else
            desc=""
            key_value="$line"
        fi
        key="${key_value%%=*}"
        value="${key_value#*=}"
        if [[ "$key" == "$value" ]]; then
            parts_len=0
        else
            IFS=';' read -ra value_parts <<<"$value"
            parts_len="${#value_parts[@]}"
            if [[ "$parts_len" == 0 ]]; then
                value_parts=( "" )
                parts_len=1
            fi
        fi
        for ((i = parts_len; i >= 1; i--)); do
            if [[ $args_len -gt $i ]]; then
                idx=$(( args_len - i - 1 ))
                if [[ "${argc__positionals[idx]}" == "$key" ]]; then
                    part_value="${value_parts[$((i - 1))]}"
                    if [[ "$part_value" == $'`'* ]]; then
                        eval "${part_value:1:-1}" 2>/dev/null
                    elif [[ -n "$part_value" ]]; then
                        printf '%s\n' "$part_value" | command tr ',' '\n'
                    fi
                    return
                fi
            fi
        done

        tag_key="x$key"
        if [[ -n "${used_tags[$tag_key]+set}" ]] && [[ "$key" != "$last" ]]; then
            continue
        fi
        lines+=( "$key"$'\t'"$desc" )
    done
    printf "%s\n" "${lines[@]}"
}


# Complete multiple parts of words separated by a char
# Args:
#   SEP: seperator
#   FILTER: default value is ARGC_CWORD
#   PREFIX: additional prefix
#
# ```sh
# git ls-files | _argc_util_comp_parts /
# ```
_argc_util_comp_parts() {
    local sep="$1"
    local filter="${2-$ARGC_CWORD}"
    local prefix="${3}"
    if [[ "$filter" == *"$sep"* ]]; then
        argc__parts_local_prefix="${filter%"$sep"*}$sep"
        argc__parts_filter="${filter##*"$sep"}"
        argc__parts_prefix="$prefix$argc__parts_local_prefix"
    else
        argc__parts_local_prefix=""
        argc__parts_filter="$filter"
        argc__parts_prefix="$prefix"
    fi
    echo "__argc_prefix=$argc__parts_prefix"
    echo "__argc_filter=$argc__parts_filter"

    IFS="$sep" read -ra argc__parts_values <<<"$filter"
    if [[ -z "$argc__parts_filter" ]]; then
        argc__parts_values=( "${argc__parts_values[@]}" "" )
    fi
    # Exposed for choice functions that switch on the number of parts.
    argc__parts_len="${#argc__parts_values[@]}"

    gawk -v SEP="${sep//\\/\\\\}" -v FILTER="${argc__parts_filter//\\/\\\\}" -v PREFIX="${argc__parts_local_prefix//\\/\\\\}" '
BEGIN {
    PROCINFO["sorted_in"] = "@ind_num_asc"
    split("", VALUES)
    split("", DEDUPS)
    ONLY_LINE = ""
    COUNT = 0
    SEP_LEN = length(SEP)
    PREFIX_LEN = length(PREFIX)
    FILTER_LEN = length(FILTER)
}
{
    if (PREFIX == "" || substr($0, 1, PREFIX_LEN) == PREFIX) {
        value = substr($0, PREFIX_LEN + 1)
        if (COUNT == 0) {
            ONLY_LINE = value
            if (substr(value, length(value) - SEP_LEN + 1) == SEP) {
                ONLY_LINE = value "\0"
            }
        }
        COUNT = COUNT + 1
        idx = index(value, SEP)
        if (idx > 0) {
            value = substr(value, 1, idx + SEP_LEN - 1) "\0"
        }
        if (FILTER_LEN > 0 && substr(value, 1, FILTER_LEN) != FILTER) {
            next
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

# Complete multi values seperated by SEP
# Args:
#   SEP: seperator, can be empty string
#   FILTER: filter value, defualt is $ARGC_CWORD
#   PREFIX: The additional prefix
_argc_util_comp_multi() {
    local sep="$1"
    local filter="${2-$ARGC_CWORD}" 
    local prefix="$3"

    if [[ -n "$sep" ]]; then
        if [[ "$filter" == *"$sep"* ]]; then
            argc__multi_local_prefix="${filter%"$sep"*}$sep"
            argc__multi_filter="${filter##*"$sep"}"
        else
            argc__multi_local_prefix=""
            argc__multi_filter="$filter"
        fi
    else
        argc__multi_local_prefix="$filter"
        argc__multi_filter=""
    fi
    argc__multi_prefix="$prefix$argc__multi_local_prefix"
    echo "__argc_prefix=$argc__multi_prefix"
    echo "__argc_filter=$argc__multi_filter"
    gawk -v SEP="$sep" -v RAW_VALUES="${argc__multi_local_prefix//\\/\\\\}" -v FILTER="${argc__multi_filter//\\/\\\\}" '
BEGIN {
    split(RAW_VALUES, VALUES, SEP)
    split("", DEDUPS)
    FILTER_LEN = length(FILTER)
    for (i in VALUES) {
        DEDUPS[VALUES[i]] = 1
    }
}
{
    desc = ""
    idx1 = index($0, "\t")
    if (idx1 > 0) {
        desc = substr($0, idx1 + 1)
        value = substr($0, 1, idx1 - 1)
    } else {
        value = $0
    }
    if (substr(value, length(value)) == "\0")  {
        value = substr(value, 1, length(value) - 1)
    }
    if (FILTER_LEN == 0 || substr(value, 1, FILTER_LEN) == FILTER) {
        if (DEDUPS[value] != 1) {
            if (desc != "") {
                print value "\0" "\t" desc
            } else {
                print value "\0"
            }
        }
    }
}
'
}

# Enetr kv complete mode
# Args:
#   SEP: key value seperator
#   FILTER: filter value, defualt is $ARGC_CWORD
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
    local filter="${2-$ARGC_CWORD}"

    if [[ "$filter" == *"$sep"* ]]; then
        argc__kv_key="${filter%%"$sep"*}"
        argc__kv_prefix="$argc__kv_key$sep"
        argc__kv_filter="${filter#*"$sep"}"
        echo "__argc_prefix=$argc__kv_prefix"
        echo "__argc_filter=$argc__kv_filter"
    else
        argc__kv_key=""
        argc__kv_prefix=""
        argc__kv_filter="$filter"
        echo "__argc_filter=$argc__kv_filter"
    fi
}


# Enetr parts complete mode
# Args:
#   SEP: key value seperator
#   FILTER: filter value, defualt is $ARGC_CWORD
#   PREFIX: The additional prefix
_argc_util_mode_parts() {
    local sep="$1"
    local filter="${2-$ARGC_CWORD}" 
    local prefix="${3}"

    if [[ "$filter" == *"$sep"* ]]; then
        argc__parts_local_prefix="${filter%"$sep"*}$sep"
        argc__parts_filter="${filter##*"$sep"}"
        argc__parts_prefix="$prefix$argc__parts_local_prefix"
    else
        argc__parts_local_prefix=""
        argc__parts_filter="$filter"
        argc__parts_prefix="$prefix"
    fi
    echo "__argc_prefix=$argc__parts_prefix"
    echo "__argc_filter=$argc__parts_filter"

    IFS="$sep" read -ra argc__parts_values <<<"$filter"
    if [[ -z "$argc__parts_filter" ]]; then
        argc__parts_values=( "${argc__parts_values[@]}" "" )
    fi
    argc__parts_len="${#argc__parts_values[@]}"
}

# Checks if given string has a path prefix.
#
# ```sh
# _argc_util_has_path_prefix ./      # yes
# _argc_util_has_path_prefix /       # yes
# _argc_util_has_path_prefix ~       # yes
# _argc_util_has_path_prefix C:\\    # yes
# _argc_util_has_path_prefix README  # no
# ```
_argc_util_has_path_prefix() {
    local filter="${1-$ARGC_CWORD}"
    if [[ "$filter" == '.'* ]] \
    || [[ "$filter" == '/'* ]] \
    || [[ "$filter" == '~'* ]] \
    || [[ "$filter" =~ ^[A-Za-z]: ]] \
    ; then
        return 0
    else
        return 1
    fi
}

# Run functions in parallel
#
# ```sh
# _argc_util_parallel _choice_branch ::: _choice_tag ::: _choice_head
# ```
_argc_util_parallel() {
    argc --argc-parallel "$(_argc_util_path_resolve "$0")" "$@"
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
    local option option_name option_var option_val declar_val item
    for option in "$@"; do
        if [[ "$option" == '--'* ]]; then
            option_name="${option#*--}"
        elif [[ "$option" == '-'* ]]; then
            option_name="${option#*-}"
        else
            continue
        fi
        option_name="${option_name//-/_}"
        option_var="argc_$option_name"
        declar_val=$(declare -p $option_var 2>/dev/null)
        if [[ -n "$declar_val" ]]; then
            if [[ "$declar_val" =~ "declare -a" ]]; then
                option_var="$option_var[@]"
                option_val=( "${!option_var}" )
                for item in "${option_val[@]}"; do
                    printf " %s %q" "$option" "$item"
                done
            else
                option_val="${!option_var}"
                if [[ "$option_val" == "1" ]]; then
                    printf " %s" "$option"
                else
                    printf " %s %q" "$option" "$option_val"
                fi
            fi
        fi
    done
}


# Resolve paths, including converting paths to specific formats, concatenating paths, cleaning paths.
# Args:
#   [flag]: A control flag
#     -p: Convert paths to windows format on windows and to unix format on unix.
#     -u: Convert path to unix format.
#
# ```sh
# _argc_util_path_resolve /home/alice gh/argc                 # /home/alice/gh/argc
# _argc_util_path_resolve C:\\Users\\alice gh\\argc           # C:\Users\alice\gh\argc
# _argc_util_path_resolve -u C:\\Users\\alice gh\\argc        # /c/Users/alice/gh/argc
# _argc_util_path_resolve -p /home/alice gh/argc              # C:\Users\alice\gh\argc (windows); /home/alice/gh/argc (non-windows)
# _argc_util_path_resolve argc/src ../tests                   # understand ..
# _argc_util_path_resolve argc/src .//tests/                  # cleaning extra / 
# _argc_util_path_resolve CONFIG_DIR app/config.yaml         # platform $config_dir/app/config.yaml
# _argc_util_path_resolve CACHE_DIR app/config.yaml          # platform $cache_dir/app/config.yaml
# pwd | _argc_util_path_resolve -p                            # accept pipe
# ```
_argc_util_path_resolve() {
    local format=0 value="" arg rest part sep="/" is_win=0 i parts_len=0
    local -a args=() parts=()
    if [[ "$1" == "-p" ]]; then format=1; shift; fi # platform path
    if [[ "$1" == "-u" ]]; then format=2; shift; fi # unix path
    if [[ $# -eq 0 ]]; then args=( "$(command cat)" ); else args=( "$@" ); fi
    case "${args[0]}::${ARGC_OS-}" in
        CONFIG_DIR::windows)
            args[0]="$APPDATA"
            ;;
        CONFIG_DIR::macos)
            args[0]="$HOME/Library/Application Support"
            ;;
        CONFIG_DIR:*)
            args[0]="${XDG_CONFIG_HOME:-$HOME/.config}"
            ;;
        CACHE_DIR::windows)
            args[0]="$LOCALAPPDATA"
            ;;
        CACHE_DIR::macos)
            args[0]="$HOME/Library/Cache"
            ;;
        CACHE_DIR::*)
            args[0]="${XDG_CACHE_HOME:-$HOME/.cache}"
            ;;
    esac
    for ((i = 0; i < ${#args[@]}; i++)); do
        arg="${args[$i]}"
        if [[ -z "$arg" ]]; then continue; fi
        if [[ $i -eq 0 ]]; then
            if [[ "$arg" =~ ^[A-Za-z]: ]]; then
                value="${arg:0:2}\\"
                arg="${arg:2}"
                is_win=1
                sep="\\"
            elif [[ "${arg:0:1}" == "/" ]]; then
                value="/"
                arg="${arg:1}"
            fi
        fi
        if [[ $is_win -eq 1 ]]; then arg="${arg//\\//}"; fi
        rest="$arg"
        while [[ -n "$rest" ]]; do
            part="${rest%%/*}"
            if [[ "$rest" == */* ]]; then rest="${rest#*/}"; else rest=""; fi
            if [[ -z "$part" ]] || [[ "$part" == "." ]]; then continue; fi
            if [[ "$part" == ".." ]]; then
                if [[ $parts_len -eq 0 ]]; then exit 1; fi
                parts_len=$(( parts_len - 1 ))
            else
                parts[$parts_len]="$part"
                parts_len=$(( parts_len + 1 ))
            fi
        done
    done
    for ((i = 0; i < parts_len; i++)); do
        if [[ $i -eq 0 ]]; then
            value="$value${parts[$i]}"
        else
            value="$value$sep${parts[$i]}"
        fi
    done
    if [[ -z "$value" ]]; then return; fi
    if [[ "$value" == [A-Za-z]:* ]]; then
        if [[ "$format" -eq 2 ]] && [[ "${ARGC_OS-}" == "windows" ]]; then cygpath -u "$value"; else echo "$value"; fi
    else
        if [[ "$format" -eq 1 ]] && [[ "${ARGC_OS-}" == "windows" ]]; then cygpath -w "$value"; else echo "$value"; fi
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
    _argc_util_path_search_parent_check() {
        local value target
        for value in "$@"; do
            if [[ -f "$value" ]]; then
                target="$(realpath "$value")"
                if [[ "$parent" == 1 ]]; then dirname "$target"; else echo "$target"; fi
                return 0
            fi
        done
        if [[ "$PWD" == "/" ]]; then return 0; fi
        return 1
    }
    until _argc_util_path_search_parent_check "$@"; do cd .. || return 1; done
    cd "$pwd_" || return 1
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
## `prefix=<value>`: append prefix to values
# ```sh
# _choice_fn | _argc_util_transform prefix=/
# ```
# 
## `suffix=<value>`: append suffix to values
# ```sh
# _choice_fn | _argc_util_transform suffix==
# ```

## `color=<value>`: append suffix to values
# ```
# _choice_fn | _argc_util_transform color=green,bold
# ```
# 
# Note: The transformer can be combined:
# ```sh
# _choice_fn | _argc_util_transform suffix== nospace
# ```
_argc_util_transform() {
    local args
    # printf -v avoids the subshell that "$(printf ...)" would create.
    printf -v args '%s\n' "$@"
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
    if (substr(value, valueLen) == "\r") {
        value = substr(value, 1, valueLen - 1)
        valueLen = valueLen - 1
    }
    nospace = 0
    if (substr(value, valueLen) == "\0") {
        nospace = 1; value = substr(value, 1, valueLen - 1)
        valueLen = valueLen - 1
    }
    for (i = start; i <= argsLen; i++) {
        arg = args[i]
        if (arg == "nospace") {
            nospace = 1
        } else if (arg == "space") {
            nospace = 0
        } else if (index(arg, "nospaceIfEnd=") == 1) {
            end = substr(arg, 14)
            endLen = length(end)
            if (endLen > 0 && valueLen >= endLen && substr(value, valueLen - endLen + 1) == end) {
                nospace = 1
            }
        } else if (index(arg, "prefix=") == 1) {
            value = substr(arg, 8) value
        } else if (index(arg, "suffix=") == 1) {
            value = value substr(arg, 8)
        } else if (index(arg, "color=") == 1) {
            color = substr(arg, 7)
        }
    }
    if (nospace == 1) { value = value "\0" }
    if (color != "") { color = "\t/color:" color }
    if (description != "") { description = "\t" description }
    print value color description
}'
}

# Select columns from table
# Args:
#   cols: Select columns
#   joins: Symols used to join cols
#
# ```
# docker images | _argc_util_transform_table 'IMAGE ID;REPOSITORY;TAG' '\t;:'
# ```
_argc_util_transform_table() {
    gawk -v RAW_COLS="$1" -v RAW_JOINS="$2" 'BEGIN {
        split(RAW_COLS, COLS, ";")
        split(RAW_JOINS, JOINS, ";")
        COLS_N = length(COLS)
        split("", COLS_INDEX)
        split("", COLS_LEN)
    }
    {
        if(tableOn != 1) {
            for (i = 1; i <= COLS_N; i++) {
                col = COLS[i]
                colLen = length(col)
                idx = index($0, col)
                if (idx == 0) {
                    next
                }
                remainLine = substr($0, idx + colLen)
                COLS_INDEX[i] = idx
                if (match(remainLine, /\s+\S/)) {
                    COLS_LEN[i] = colLen + RLENGTH - 1
                } else if (match(remainLine, /\s*$/)) {
                    COLS_LEN[i] = colLen + RLENGTH
                } else {
                    next
                }
            }
            tableOn = 1
        } else if (!match($0, /^[ -]*$/)) {
            line = ""
            for (i = 1; i <= COLS_N; i++) {
                value = substr($0, COLS_INDEX[i], COLS_LEN[i])
                gsub(/[[:space:]]+$/, "", value)
                if (i == 1) {
                    line = value
                } else {
                    line = line JOINS[i - 1] value
                }
            }
            print line
        }
    }'
}

# Use Filter
# Args:
#   `-i`: optional, if set, only include words
#   words: words to filter
#   sep: chars teo seperate words
#
# ```
# _choice_fn | _argc_util_filter "$argc__parts_prefix" :
# ```
_argc_util_filter() {
    local include=0
    if [[ "$1" == "-i" ]]; then
        include=1
        shift
    fi
    gawk -v "INCLUDE=$include" -v "RAW_WORDS=${1//\\/\\\\}" -v "SEP=$2" '
BEGIN {
    split(RAW_WORDS, WORDS, SEP)
}
{
    found = 0
    # The value is everything before the first tab. Avoid split() (regex + array
    # allocation) and only strip NULs when there are any.
    tab = index($0, "\t")
    value = tab ? substr($0, 1, tab - 1) : $0
    if (index(value, "\x00")) gsub("\x00", "", value)
    for (i in WORDS) {
        if (WORDS[i] == value) {
            found = 1
            break
        }
    }
    if ((found == 1 && INCLUDE == 1) || (found == 0 && INCLUDE == 0)) {
        print $0
    }
}
'
}

# Use Cache 
# Args:
#   timeout_secs: Timeout in seconds
#   choice_fn: Cache data from choice fn
#   key: optional cache key
#
# ```
# _argc_util_cache 86400 _choice_fn
# ```
_argc_util_cache() {
    local cache_dir cache_key cache_file mod_time now_time key
    cache_dir="$ARGC_COMPLETIONS_ROOT"/cache/argc-util-cache
    if [[ -z "$3" ]]; then
        cache_key="$(printf "%s_" "${argc__args[@]:0:$(( $argc__cmd_arg_index + 1 ))}")$2"
    else
        if [[ "$3" == *':'* ]]; then
            key="$(printf '%s' "${3#*:}" | openssl sha1)"
            key="${key#* }"
            cache_key="${3%%:*}_$key"
        else
            cache_key="$3"
        fi
    fi
    # The cache key becomes a file name: neutralize separators and other unsafe
    # characters so an argument like `/etc/foo` cannot escape the cache directory.
    cache_key="${cache_key//[^[:alnum:]._=-]/_}"
    if [[ ${#cache_key} -gt 120 ]]; then
        key="$(printf '%s' "$cache_key" | openssl sha1)"
        key="${key#* }"
        cache_key="${cache_key:0:80}_$key"
    fi
    cache_file="$cache_dir/$cache_key"
    if [[ -s "$cache_file" ]]; then
        if [[ "$ARGC_OS" == "macos" ]]; then
          mod_time=$(command stat -f "%Sm" -t "%s" "$cache_file")
        else
          mod_time=$(command stat -c %Y "$cache_file")
        fi
        # Builtin epoch conversion (bash >= 4.2), avoids one process per cache hit.
        printf -v now_time '%(%s)T' -1
        if (( now_time - mod_time < $1 )); then
            command cat "$cache_file"
            return
        fi
    fi
    if [[ ! -d "$cache_dir" ]]; then
        mkdir -p "$cache_dir"
    fi
    "$2" 2>/dev/null | command tee "$cache_file"
}

# Strip ansi color/code
#
# ```
# cat | _argc_util_strip_ansi
# ```
_argc_util_strip_ansi() {
    gawk '{
    # Fast path: without ESC, CSI or backspace both substitutions are no-ops.
    if ($0 !~ /[\x1B\x9B\x08]/) {
        print; next
    }
    gsub(/[\x1B\x9B][[\]()#;?]*((((;[-a-zA-Z0-9\/#&.:=?%@~_]+)*|[a-zA-Z0-9]+(;[-a-zA-Z0-9\/#&.:=?%@~_]*)*)?\x07)|(([0-9]{1,4}(;[0-9]{0,4})*)?[0-9A-PR-TZcf-ntqry=><~]))/, "")
    gsub(/.\x08/, "")
    print
}'
}

# Complete executable command names found in PATH
#
# Only real executables are candidates: builtins, keywords, aliases, shell
# functions, directories and non-executable files are skipped, and a name found
# in several PATH dirs is printed once. A path-like word is completed as a path.
# On Windows, `.dll` files (marked executable by MSYS/Cygwin) are skipped to
# reduce noise.
#
# ```sh
# _choice_command() {
#    if _argc_util_has_path_prefix; then
#        _argc_util_comp_path
#        return 0
#    fi
#    _argc_util_comp_command
# }
# ```
_argc_util_comp_command() {
    local path_list="${PATH:-}" strip_exe=""
    if [[ "${ARGC_OS:-}" == windows ]]; then
        # Windows PATH uses `;`, and its `C:/foo` entries would be cut in two by `IFS=:`.
        path_list="${path_list//;/:}"
        strip_exe=1
    fi
    local rest="$path_list" dir dir_key next file name seen_dir
    local -A seen=() seen_dirs=()
    local -a seen_dir_paths=()
    local is_seen_dir
    while [[ -n "$rest" ]]; do
        dir="${rest%%:*}"
        if [[ "$rest" == *:* ]]; then rest="${rest#*:}"; else rest=""; fi
        # A `C:/foo` entry lost its drive letter to the split; put it back.
        if [[ "$dir" == [A-Za-z] && "$rest" == [/\\]* ]]; then
            next="${rest%%:*}"
            if [[ "$rest" == *:* ]]; then rest="${rest#*:}"; else rest=""; fi
            dir="$dir:$next"
        fi
        # Normalize the entry for exact-directory dedup.
        dir_key="${dir//\\//}"
        dir_key="${dir_key%/}"
        [[ -n "$dir" && -d "$dir" ]] || continue
        # Do not scan the same directory twice. `-ef` also catches aliases
        # such as `/bin` and `/usr/bin` on MSYS/Cygwin.
        if [[ -n "${seen_dirs[$dir_key]+x}" ]]; then
            continue
        fi
        is_seen_dir=0
        for seen_dir in "${seen_dir_paths[@]}"; do
            # Compare inodes only for same-named dirs; avoids one stat per pair.
            if [[ "${seen_dir##*/}" == "${dir##*/}" && "$dir" -ef "$seen_dir" ]]; then
                is_seen_dir=1
                break
            fi
        done
        if [[ "$is_seen_dir" -eq 1 ]]; then
            continue
        fi
        seen_dirs[$dir_key]=1
        seen_dir_paths+=("$dir")
        for file in "$dir"/*; do
            name="${file##*/}"
            # Check `.dll` before stat-ing the file: Windows dirs can contain
            # hundreds of DLLs that MSYS/Cygwin report as executable.
            if [[ -n "$strip_exe" ]]; then
                case "${name,,}" in
                *.dll) continue ;;
                esac
            fi
            [[ -f "$file" && -x "$file" ]] || continue
            if [[ -n "$strip_exe" ]]; then
                case "${name,,}" in
                *.exe | *.com | *.bat | *.cmd) name="${name%.*}" ;;
                esac
            fi
            if [[ -n "${seen[$name]+x}" ]]; then
                continue
            fi
            seen[$name]=1
            printf '%s\n' "$name"
        done
    done
    return 0
}


# Complete command arguments for something like `sudo`/`npx`.
# Args:
#   INDEX: Slice from positional args
#   PREPENDARGS*: Args to prepend to sliced positional args array
#
# ```sh
# @ description A sudo cli
# # @arg cmd
# # @arg args~[`_choice_args`]
# _choice_args() {
#     _argc_util_comp_command_args 0 
# }
# ```
_argc_util_comp_command_args() {
    local args=( "${@:2}" "${argc__positionals[@]:$1}" )
    if [[ ${#args[@]} -eq 0 ]]; then
        args=( "" )
    fi
    args[-1]="$ARGC_LAST_ARG"
    argc --argc-compgen generic "" "${args[@]}"
}
