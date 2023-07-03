# Enetr kv complete mode
# Args:
# - sep: key value seperator
# - filter: The filter, defualt value is $ARGC_FILTER
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