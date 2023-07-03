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