ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$( dirname $(readlink -f $0) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//' ) )

_argc_completion_scripts()
{
    local bin=$(basename $words[1])
    local scriptfile="$ARGC_COMPLETIONS_DIR/$bin.sh"
    if [[ ! -f "$scriptfile" ]]; then
        return 0
    fi
    local line="${words[2,-1]}"
    local IFS=$'\n'
    local candicates=( $(argc --argc-compgen "$scriptfile" "$line" 2>/dev/null) )
    if [[ ${#candicates[@]} -eq 1 ]]; then
        if [[ "$candicates[1]" == "__argc_comp:file" ]]; then
            candicates=()
            _path_files
        elif [[ "$candicates[1]" == "__argc_comp:dir" ]]; then
            candicates=()
            _path_files -/
        fi
    fi
    if [[ ${#candicates[@]} -gt 0 ]]; then
        compadd -- $candicates[@]
    fi
}

compdef _argc_completion_scripts ${ARGC_COMPLETIONS_SCRIPTS[@]}