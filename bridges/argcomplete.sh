#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @arg words~[`_choice_bridge_argcomplete`]
# <<< SPEC

# >>> HINTS
# Complete with argcomplete bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_bridge_argcomplete() {
    local line="" word output
    for word in "${argc__args[@]}"; do
        line+="${line:+ }$(_helper_argcomplete_quote "$word")"
    done
    output="$( \
        COMP_LINE="$line" \
        COMP_POINT="${#line}" \
        COMP_TYPE="" \
        _ARGCOMPLETE=1 \
        _ARGCOMPLETE_DFS=$'\t' \
        _ARGCOMPLETE_IFS=$'\n' \
        _ARGCOMPLETE_SHELL="fish" \
        _ARGCOMPLETE_SUPPRESS_SPACE=1 \
        "${argc__args[0]}" 8>&1 9>&2 1>/dev/null 2>/dev/null </dev/null \
    )"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    printf '%s\n' "$output" |
        _argc_util_transform nospaceIfEnd== nospaceIfEnd=/ nospaceIfEnd=:
}

_helper_argcomplete_quote() {
    local value="$1"
    value="${value//\'/\'\\\'\'}"
    printf "'%s'" "$value"
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
