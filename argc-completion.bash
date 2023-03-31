ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$( dirname "${BASH_SOURCE[0]}")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//' | tr '\n' ' ') )

_argc_completion_scripts() {
    local scriptfile="$ARGC_COMPLETIONS_DIR/${COMP_WORDS[0]}.sh"
    if [[ ! -f "$scriptfile" ]]; then
        return 0
    fi
    cur="${COMP_WORDS[COMP_CWORD]}"
    local line=${COMP_LINE:${#COMP_WORDS[0]}}
    local IFS=$'\n'
    local candicates=($(argc --argc-compgen "$scriptfile" "$line" 2>/dev/null))
    if [[ ${#candicates[@]} -eq 1 ]]; then
        if [[ "${candicates[0]}" == "__argc_comp:file" ]]; then
            candicates=()
            COMPREPLY=($(compgen -f -- "${cur}"))
        elif [[ "${candicates[0]}" == "__argc_comp:dir" ]]; then
            candicates=()
            COMPREPLY=($(compgen -d -- "${cur}"))
        fi
    fi
    if [[ ${#candicates[@]} -gt 0 ]]; then
        candicates=($(compgen -W "${candicates[*]}" -- "${cur}"))
        if [ ${#candicates[@]} -gt 0 ]; then
            COMPREPLY=( "${COMPREPLY[@]}" $(printf '%q\n' "${candicates[@]}") )
        fi
    fi
}

complete -F _argc_completion_scripts ${ARGC_COMPLETIONS_SCRIPTS[@]}