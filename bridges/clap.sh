#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @arg words~[`_bridge_clap`]
# <<< SPEC

# >>> HINTS
# Complete with clap bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_bridge_clap() {
    local output
    output="$(
        _CLAP_IFS=$'\n' \
            _CLAP_COMPLETE_INDEX="$(( ${#argc__args[@]} - 1 ))" \
            _CLAP_COMPLETE_COMP_TYPE="" \
            _CLAP_COMPLETE_SPACE=false \
            COMPLETE=fish \
            "${argc__args[0]}" -- "${argc__args[@]}" 2>/dev/null
    )"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    printf '%s\n' "$output" |
        _argc_util_transform nospaceIfEnd== nospaceIfEnd=/ nospaceIfEnd=:
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
