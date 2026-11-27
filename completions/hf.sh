#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @describe Client library for huggingface.co hub
# @arg words~[`_choice_bridge_click`]
# <<< SPEC

# >>> HINTS
# Complete with click bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_bridge_click() {
    local prog="${argc__args[0]##*/}"
    local complete_var="_${prog^^}_COMPLETE"
    complete_var="${complete_var//-/_}"
    complete_var="${complete_var//./_}"

    local line="" word incomplete="" current=""
    local -a words=("${argc__args[@]}")
    if [[ ${#words[@]} -gt 1 ]]; then
        current="${words[${#words[@]}-1]}"
        words=("${words[@]:0:${#words[@]}-1}")
    fi
    for word in "${words[@]}"; do
        line+="${line:+ }$(_helper_click_quote "$word")"
    done
    if [[ -n "$current" ]]; then
        line+="${line:+ }$(_helper_click_quote "$current")"
        incomplete="$current"
    else
        line+=" "
    fi
    local cword=""
    if [[ -n "$incomplete" ]]; then
        cword="$(_helper_click_quote "$incomplete")"
    fi

    local output item type value help
    output="$(
        env "$complete_var=fish_complete" \
            COMP_WORDS="$line" \
            COMP_CWORD="$cword" \
            "${argc__args[0]}" 2>/dev/null
    )"
    if [[ -z "$output" ]]; then
        return
    fi

    if [[ "$incomplete" == -*=* ]]; then
        printf '__argc_prefix=%s=\n' "${incomplete%%=*}"
        printf '__argc_filter=%s\n' "${incomplete#*=}"
    fi

    while IFS= read -r item; do
        [[ -n "$item" ]] || continue
        type="${item%%,*}"
        value="${item#*,}"
        help=""
        if [[ "$value" == *$'\t'* ]]; then
            help="${value#*$'\t'}"
            value="${value%%$'\t'*}"
        fi
        case "$type" in
            dir)
                _argc_util_comp_path dir
                return
                ;;
            file)
                _argc_util_comp_path
                return
                ;;
            plain)
                if [[ -n "$value" ]]; then
                    if [[ -n "$help" ]]; then
                        printf '%s\t%s\n' "$value" "$help"
                    else
                        printf '%s\n' "$value"
                    fi
                fi
                ;;
        esac
    done <<<"$output"
}

_helper_click_quote() {
    local value="$1"
    value="${value//\'/\'\\\'\'}"
    printf "'%s'" "$value"
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
