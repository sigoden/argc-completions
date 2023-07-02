_argc_util_comp_kv() {
    local prefix
    local filter="${2-$ARGC_FILTER}"
    if [[ "$filter" == *$1* ]]; then
        prefix="${filter%%$1*}"
        filter="${filter#*$1}"
    fi
    if [[ -n "$prefix" ]]; then
        echo __argc_prefix:$prefix$1
    else
        echo __argc_suffix:$1
    fi
    echo __argc_filter:$filter
    for line in $(cat); do
        if [[ -z "$prefix" ]]; then
            echo -e "${line%%=*}\0"
        else
            if [[ "$line" =~ ^${prefix}= ]]; then
                local value="${line#*=}"
                if [[ "$value" =~ ^$'`' ]]; then
                    eval "${value:1:-1}" 2>/dev/null
                else
                    echo $value | tr ',' '\n'
                fi
            fi
        fi
    done
}