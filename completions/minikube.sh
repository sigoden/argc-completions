#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# >>> SPEC
# @describe Run a Kubernetes cluster locally
# @arg words~[`_choice_bridge_cobra`]
# <<< SPEC

# >>> HINTS
# Complete with cobra bridge
# <<< HINTS

# >>> CHOICES
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_bridge_cobra() {
    local -a lines=() values=() filtered=()
    local line flag exts
    mapfile -t lines < <("${argc__args[0]}" __complete "${argc__args[@]:1}" 2>/dev/null)
    for line in "${lines[@]}"; do
        if [[ "$line" == _activeHelp_\ * ]]; then
            continue
        fi
        filtered+=("$line")
    done
    lines=("${filtered[@]}")
    if [[ ${#lines[@]} -eq 0 ]]; then
        return
    fi
    flag="${lines[${#lines[@]}-1]}"
    flag="${flag#:}"
    flag="${flag%$'\r'}"
    if [[ ! "$flag" =~ ^[0-9]+$ ]]; then
        _argc_util_comp_path
        return
    fi
    if (( flag & 1 )); then
        return
    fi
    values=( "${lines[@]:0:$((${#lines[@]} - 1))}" )
    if (( flag & 16 )); then
        if [[ ${#values[@]} -eq 0 ]] || [[ -z "${values[0]}" ]]; then
            _argc_util_comp_path dir
        elif [[ -d "${values[0]}" ]]; then
            _argc_util_comp_path dir "cd=${values[0]}"
        fi
        return
    fi
    if (( flag & 8 )); then
        if [[ ${#values[@]} -eq 0 ]]; then
            _argc_util_comp_path
            return
        fi
        exts=""
        for line in "${values[@]}"; do
            if [[ -n "$line" ]]; then
                exts+=".${line#.},"
            fi
        done
        if [[ -z "$exts" ]]; then
            _argc_util_comp_path
            return
        fi
        _argc_util_comp_path "exts=${exts%,}"
        return
    fi
    if [[ ${#values[@]} -eq 0 ]]; then
        if (( flag & 4 )); then
            return
        fi
        _argc_util_comp_path
        return
    fi
    if (( flag & 2 )); then
        printf '%s\n' "${values[@]}" | _argc_util_transform nospace
    else
        printf '%s\n' "${values[@]}"
    fi
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
