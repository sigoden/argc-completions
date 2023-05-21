ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//' | tr '\n' ' ') )

_argc_completions() {
    local scriptfile="$ARGC_COMPLETIONS_DIR/${COMP_WORDS[0]}.sh"
    if [[ ! -f "$scriptfile" ]]; then
        return
    fi
    cur="${COMP_WORDS[COMP_CWORD]}"
    local line=${COMP_LINE:${#COMP_WORDS[0]}}
    local IFS=$'\n'
	export COMP_WORDBREAKS
    local candicates=($(argc --argc-compgen bash "$scriptfile" "$line" 2>/dev/null))
    if [[ ${#candicates[@]} -eq 1 ]]; then
        if [[ "${candicates[0]}" == "__argc_comp:file" ]]; then
            candicates=()
            _argc_complete_path
        elif [[ "${candicates[0]}" == "__argc_comp:dir" ]]; then
            candicates=()
            _argc_complete_path -d
        fi
    fi

    _argc_complete_nospace "${candicates[@]}"

    if [[ ${#candicates[@]} -gt 0 ]]; then
        COMPREPLY=(${candicates[@]})
    fi
}

_argc_complete_path() {
    if type _filedir >/dev/null 2>&1; then
        _filedir ${1-}
    else
        if [[ ${1-} == "-d" ]]; then
            compopt -o nospace -o plusdirs > /dev/null 2>&1
            COMPREPLY=($(compgen -d -- "${cur}"))
        else
            compopt -o nospace -o plusdirs > /dev/null 2>&1
            COMPREPLY=($(compgen -f -- "${cur}"))
        fi
    fi
}

_argc_complete_nospace() {
    if [[ $# -eq 0 ]]; then
        return
    fi
    local nospace=1
    local value last_char
    for value in ${@}; do
        last_char="${value: -1}"
        if [[ ! "$COMP_WORDBREAKS" == *"$last_char"* ]]; then
            nospace=0
            break
        fi
    done
    if [[ "$nospace" == "1" ]]; then
        compopt -o nospace > /dev/null 2>&1
    fi
}

complete -F _argc_completions ${ARGC_COMPLETIONS_SCRIPTS[@]}