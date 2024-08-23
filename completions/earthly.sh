#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_module_bridge_compline`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_bridge_compline() {
    line="${argc__args[*]}"
    output="$(COMP_LINE="$line" COMP_POINT="${#line}" "${argc__args[0]}")"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}

command eval "$(argc --argc-eval "$0" "$@")"