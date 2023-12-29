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

_module_bridge_compline() {
    line="${argc__args[*]}"
    output="$(COMP_LINE="$line" COMP_POINT="${#line}" "${argc__args[0]}")"
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}
