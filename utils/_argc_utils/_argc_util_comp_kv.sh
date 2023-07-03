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