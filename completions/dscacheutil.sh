#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h                                     Lists the options for calling dscacheutil
# @option -q[`_choice_category`] <category>    Initiate a query using standard calls.
# @option -a <key> <value>                     Optional flag to -q for a specific key with a value.
# @flag -cachedump                             Dumps an overview of the cache by default.
# @flag -buckets                               Used in conjunction with -cachedump to also print hash bucket usage of the current cache.
# @option -entries[`_choice_category`] <category>  Used in conjunction with -cachedump to dump detailed information about cache entries.
# @flag -configuration                         Prints current configuration information, such as the search policy from Directory Service and cache parameters.
# @flag -flushcache                            Flushes the entire cache.
# @flag -statistics                            Prints statistics from the cache including an overview and detailed call statistics.

_choice_category() {
    cat <<-'EOF'
group	name or gid
host	name or ip_address (used for both IPv6 and IPv4)
mount	name
protocol	name or number
rpc	name or number
service	name or port
user	name or uid
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"