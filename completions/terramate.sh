#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_module_bridge_argcomplete`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_bridge_argcomplete() {
    line="${argc__args[*]}"
    output="$( \
        COMP_LINE="$line" \
        COMP_POINT="${#line}" \
        _ARGCOMPLETE=1 \
        _ARGCOMPLETE_DFS=$'\t' \
        _ARGCOMPLETE_IFS=$'\n' \
        _ARGCOMPLETE_SHELL="fish" \
        _ARGCOMPLETE_SUPPRESS_SPACE=1 \
        "${argc__args[0]}" 8>&1 9>&2 2>/dev/null \
    )"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}

command eval "$(argc --argc-eval "$0" "$@")"