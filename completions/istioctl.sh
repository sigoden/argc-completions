#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_module_bridge_corba`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_bridge_corba() {
    mapfile -t lines < <("${argc__args[0]}" __complete "${argc__args[@]:1}" 2>/dev/null)
    if [[ ${#lines} -eq 0 ]]; then
        return
    fi
    len=${#lines[@]}
    flag="${lines[-1]}"
    flag="${flag#:}"
    if [[ "$flag" -eq 1 ]]; then
        return
    fi
    values=( "${lines[@]:0:$((len - 1))}" )
    if [[ "$flag" -eq 16 ]]; then
        if [[ "$len" -gt 2 ]]; then
            _argc_util_comp_path dir "cd=${lines[0]}"
        else
            _argc_util_comp_path dir
        fi
        return
    elif [[ "$flag" -eq 8 ]]; then
        exts="$(printf ".%s," "${values[@]}")"
        _argc_util_comp_path "exts=${exts}"
        return
    fi

    if [[ "$len" -lt 3 ]] && [[ "$flag" -ne 4 ]]; then
        _argc_util_comp_path
        return
    fi
    if [[ "$flag" -eq 2 ]]; then
        printf "%s\n" "${values[@]}" | sed 's|\t|\x00\t|'
    else
        printf "%s\n" "${values[@]}"
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"