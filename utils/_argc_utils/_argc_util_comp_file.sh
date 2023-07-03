# Complete file
# Args:
# - `-prefix=`: Set __argc_prefix
# - `-filter=`: Set __argc_filter, default value is ARGC_FILTER
# - `-cd=`: Set __argc_cd
# - `-exts=`: Set file's allowed exts. e.g. `-exts=.json,jsonc`
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