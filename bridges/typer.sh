#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @arg words~[`_choice_bridge_typer`]
# <<< SPEC

# >>> HINTS
# Complete with typer bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_bridge_typer() {
    local prog="${argc__args[0]##*/}"
    local complete_var="_${prog^^}_COMPLETE"
    complete_var="${complete_var//-/_}"
    complete_var="${complete_var//./_}"

    local line="" word incomplete=""
    for word in "${argc__args[@]}"; do
        line+="${line:+ }$(_helper_typer_quote "$word")"
    done
    if [[ ${#argc__args[@]} -gt 1 ]]; then
        incomplete="${argc__args[${#argc__args[@]}-1]}"
    fi

    local output
    output="$(
        env COLUMNS=9999 \
            "$complete_var=complete_fish" \
            _TYPER_COMPLETE_FISH_ACTION=get-args \
            _TYPER_COMPLETE_ARGS="$line" \
            "${argc__args[0]}" 2>/dev/null
    )"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi

    if [[ "$incomplete" == -*=* ]]; then
        printf '__argc_prefix=%s=\n' "${incomplete%%=*}"
        printf '__argc_filter=%s\n' "${incomplete#*=}"
    fi
    printf '%s\n' "$output"
}

_helper_typer_quote() {
    local value="$1"
    value="${value//\'/\'\\\'\'}"
    printf "'%s'" "$value"
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
