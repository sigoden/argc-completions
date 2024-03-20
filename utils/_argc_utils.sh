# Complete path
# Args:
#   `dir`: Complete path is dir
#   `prefix=`: Set __argc_prefix
#   `filter=`: Set __argc_filter
#   `cd=`: Set __argc_path_cd
#   `suffix=`: Set __argc_suffix
#   `exts=`: Set file's allowed exts. e.g. `-exts=.json,jsonc`
_argc_util_comp_path() {
    local isdir suffix filter exts chdir prefix with_filter with_prefix
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
        echo -e "__argc_suffix=$suffix\0"
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
        argc__kv_key="${filter%%$sep*}"
        argc__kv_local_prefix="$argc__kv_key$sep"
        argc__kv_prefix="$prefix$argc__kv_local_prefix"
        argc__kv_filter="${filter#*$sep}"
        echo "__argc_prefix=$argc__kv_prefix"
        echo "__argc_filter=$argc__kv_filter"
    else
        argc__kv_key=""
        argc__kv_local_prefix=""
        argc__kv_prefix="$prefix"
        argc__kv_filter="$filter"
        echo "__argc_filter=$argc__kv_filter"
    fi
    local line desc key key_value asterisk_key_value
    local IFS=$'\n'
    _eval_value() {
        local vsep value="$1" filter="$2"
        if [[ "$value" == $'`'*$'`' ]]; then
            eval "${value:1:-1}" 2>/dev/null
        elif [[ "$value" == *$'`'*$'`' ]]; then
            vsep="${value%%$'`'*}"
            value="${value:${#vsep}}"
            if [[ "$filter" == *"$vsep"* ]]; then
                argc__kv_local_prefix="${filter%$vsep*}$vsep"
                argc__kv_prefix="$prefix$argc__kv_local_prefix"
                argc__kv_filter="${filter##*$vsep}"
                echo "__argc_prefix=$argc__kv_prefix"
                echo "__argc_filter=$argc__kv_filter"
            fi
            eval "${value:1:-1}" 2>/dev/null | _argc_util_transform nospace
        else
            echo "$value" | command tr ',' '\n'
        fi
    }
    for line in $(command cat); do
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
                echo -e "$key\t$desc"
            else
                echo -e "$key$sep\0\t$desc"
            fi
        else
            if [[ "$key" == "$argc__kv_key" ]]; then
                _eval_value "${key_value#*=}" "$filter"
                return
            fi
        fi
    done
    if [[ -n "$asterisk_key_value" ]]; then
        _eval_value "${asterisk_key_value#*=}" "$filter"
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
    local line desc key key_value value lines value_parts args_len parts_len idx part_value

    args_len=${#argc__positionals[@]}
    lines=()
    local IFS=$'\n'
    for line in $(command cat); do
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
            IFS=';' read -a value_parts <<<"$value"
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
                        echo $part_value | command tr ',' '\n'
                    fi
                    return
                fi
            fi
        done

        if [[ " ${argc__positionals[@]} " == *" $key "* ]]; then
            if [[ "$key" != "${argc__positionals[-1]}" ]]; then
                continue
            fi
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
        argc__parts_local_prefix="${filter%$sep*}$sep"
        argc__parts_filter="${filter##*$sep}"
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

    gawk -v SEP="$sep" -v FILTER="$argc__parts_filter" -v PREFIX="$argc__parts_local_prefix" '
BEGIN {
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
            argc__multi_local_prefix="${filter%$sep*}$sep"
            argc__multi_filter="${filter##*$sep}"
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
    gawk -v SEP="$sep" -v RAW_VALUES="$argc__multi_local_prefix" -v FILTER="$argc__multi_filter" '
BEGIN {
    split(RAW_VALUES, VALUES, SEP)
    split("", DEDUPS)
    FILTER_LEN = length(FILTER)
    for (i in VALUES) {
        DEDUPS[VALUES[i]] = 1
    }
}
{
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

# Complete subcommand for something like `sudo`/`npx`.
# Args:
#   INDEX: Slice from positional args
#   PREPENDARGS*: Args to prepend to sliced positional args array
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
    argc --argc-compgen generic "" "${args[@]}"
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
        argc__kv_key="${filter%%$sep*}"
        argc__kv_prefix="$argc__kv_key$sep"
        argc__kv_filter="${filter#*$sep}"
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
        argc__parts_local_prefix="${filter%$sep*}$sep"
        argc__parts_filter="${filter##*$sep}"
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
    local format args value
    if [[ "$1" == "-p" ]]; then format=1; shift; fi # platform path
    if [[ "$1" == "-u" ]]; then format=2; shift; fi # unix path
    if [[ $# -eq 0 ]]; then args=( "$(command cat)" ); else args=( "$@" ); fi
    case "${args[0]}::$ARG_OS" in
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
    if (substr(value, valueLen) == "\r") {
        value = substr(value, 1, valueLen - 1)
        valueLen = valueLen - 1
    }
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
            if (substr(value, valueLen) == substr(arg, 14)) {
                nospace = 1
            }
        } else if (index(arg, "prefix=")) {
            value = substr(arg, 8) value
        } else if (index(arg, "suffix=")) {
            value = value substr(arg, 8)
        } else if (index(arg, "color=")) {
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
        split("", COLS_INDEX)
        split("", COLS_LEN)
    }
    {
        if(tableOn != 1) {
            for (i in COLS) {
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
            for (i in COLS) {
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
# _choice_fn | argc_util_filter "$argc__parts_prefix" :
# ```
_argc_util_filter() {
    local include=0
    if [[ "$1" == "-i" ]]; then
        include=1
        shift
    fi
    gawk -v "INCLUDE=$include" -v "RAW_WORDS=$1" -v "SEP=$2" '
BEGIN {
    split(RAW_WORDS, WORDS, SEP)
}
{
    found = 0
    split($0, parts, "\t")
    value = parts[1]
    gsub("\x00", "", value)
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
    local cache_dir cache_key cache_file
    cache_dir="$ARGC_COMPLETIONS_ROOT"/tmp/argc_completions_cache
    if [[ -z "$3" ]]; then
        cache_key="$(printf "%s_" "${argc__args[@]:0:$(( $argc__cmd_arg_index + 1 ))}")$2"
    else
        if [[ "$3" == *':'* ]]; then
            local key="$(echo "${3#*:}" | openssl sha1)"
            key="${key#* }"
            cache_key="${3%%:*}_$key"
        else
            cache_key="$3"
        fi
    fi
    cache_file="$cache_dir/$cache_key"
    if [[ -s "$cache_file" ]]; then
        if [[ "$ARGC_OS" == "macos" ]]; then
          mod_time=$(command stat -f "%Sm" -t "%s" "$cache_file")
        else
          mod_time=$(command stat -c %Y "$cache_file")
        fi
        now_time=$(date '+%s')
        if (( $now_time - $mod_time < $1 )); then
            command cat $cache_file
            return
        fi
    fi
    if [ ! -d "$cache_dir" ]; then
        mkdir -p "$cache_dir"
    fi
    $2 2>/dev/null | command tee "$cache_file"
}

# Strip ansi color/code
#
# ```
# cat | _argc_util_strip_ansi
# ```
_argc_util_strip_ansi() {
    gawk '{gsub(/[\x1B\x9B][[\]()#;?]*((((;[-a-zA-Z0-9\/#&.:=?%@~_]+)*|[a-zA-Z0-9]+(;[-a-zA-Z0-9\/#&.:=?%@~_]*)*)?\x07)|(([0-9]{1,4}(;[0-9]{0,4})*)?[0-9A-PR-TZcf-ntqry=><~]))/, ""); gsub(/.\x08/, ""); print}'
}