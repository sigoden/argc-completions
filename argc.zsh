ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$( dirname $(readlink -f $0) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//' ) )
ARGC_BASH=${ARGC_BASH:-bash}

_argc_completion_scripts()
{
    local bin=$(basename $words[1])
    local scriptfile="$ARGC_COMPLETIONS_DIR/$bin.sh"
    if [[ ! -f "$scriptfile" ]]; then
        return 0
    fi
    local line="${words[2,-1]}"
    local IFS=$'\n'
    local compgen_values=( $(argc --compgen "$scriptfile" "$line" 2>/dev/null) )
    local candicates=()
    local arg_value=""
    for item in ${compgen_values[@]}; do
        if [[ "$item" == '-'* ]]; then
            candicates+=( "$item" )
        elif [[ "$item" == \`*\` ]]; then
            local choices=( $("$ARGC_BASH" "$scriptfile" "${item:1:-1}" "$line" 2>/dev/null) )
            candicates=( "${candicates[@]}" "${choices[@]}" )
        elif [[ "$item" == '<'* ]] || [[ "$item" == '['* ]]; then
            arg_value="$item"
        else
            candicates+=( "$item" )
        fi
    done
    if [[ ${#candicates[@]} -eq 0 ]]; then
        if echo "$item" | grep -qi '\(file\|path\)'; then
            _path_files
        elif echo "$item" | grep -qi 'dir'; then
            _path_files -/
        fi
    elif [[ -n "$arg_value" ]]; then
        candicates+=( "$arg_value" )
    fi
    if [[ ${#candicates[@]} -gt 0 ]]; then
        compadd -- $candicates[@]
    fi
}

compdef _argc_completion_scripts ${ARGC_COMPLETIONS_SCRIPTS[@]}