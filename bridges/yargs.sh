#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @arg words~[`_bridge_yargs`]
# <<< SPEC

# >>> HINTS
# Complete with yargs bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_bridge_yargs() {
    local output candidate value description
    output="$(
        SHELL=/bin/zsh \
            "${argc__args[0]}" --get-yargs-completions "${argc__args[@]}" 2>/dev/null
    )"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    while IFS= read -r candidate; do
        [[ -n "$candidate" ]] || continue
        candidate="${candidate//\\:/$'\001'}"
        value="${candidate%%:*}"
        [[ -n "$value" ]] || continue
        if [[ "$candidate" == *:* ]]; then
            description="${candidate#*:}"
            printf '%s\t%s\n' "${value//$'\001'/:}" "$description"
        else
            printf '%s\n' "${value//$'\001'/:}"
        fi
    done <<<"$output"
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
