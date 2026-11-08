#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @arg words~[`_bridge_urfave`]
# <<< SPEC

# >>> HINTS
# Complete with urfave bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_bridge_urfave() {
    local current="${argc__args[${#argc__args[@]}-1]}"
    local output candidate value description
    local -a argv=("${argc__args[@]:0:${#argc__args[@]}-1}")
    if [[ "$current" == -* ]]; then
        argv+=("$current")
    fi
    argv+=(--generate-shell-completion)
    output="$("${argv[@]}" 2>/dev/null)"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    while IFS= read -r candidate; do
        [[ -n "$candidate" ]] || continue
        value="${candidate%%:*}"
        [[ -n "$value" ]] || continue
        if [[ "$candidate" == *:* ]]; then
            description="${candidate#*:}"
            printf '%s\t%s\n' "$value" "$description"
        else
            printf '%s\n' "$value"
        fi
    done <<<"$output"
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
