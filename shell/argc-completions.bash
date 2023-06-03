ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_completer() {
    local word1="$(basename "${COMP_WORDS[0]}")"
    local extend=0
    local scriptfile line
    if [[ $COMP_CWORD -gt 1 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $word1" ]]; then
        local word2="${COMP_WORDS[1]}"
        if [[ "$word2" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$word1/$word2.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    if [[ $extend -eq 1 ]]; then
        line="${COMP_WORDS[@]:2:COMP_CWORD}"
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$word1.sh"
        if [[ ! -f "$scriptfile" ]]; then
            return
        fi
        line="${COMP_WORDS[@]:1:COMP_CWORD}"
    fi
    local cur="${COMP_WORDS[COMP_CWORD]}" # for _filedir
    local IFS=$'\n'
	export COMP_WORDBREAKS
    local candicates=($(argc --argc-compgen bash "$scriptfile" "$line" 2>/dev/null))
    if [[ ${#candicates[@]} -eq 1 ]]; then
        if [[ "${candicates[0]}" == "__argc_comp:file" ]]; then
            candicates=()
            _argc_completions_complete_path "$cur"
        elif [[ "${candicates[0]}" == "__argc_comp:dir" ]]; then
            candicates=()
            _argc_completions_complete_path "$cur" dir
        fi
    fi

    _argc_completions_complete_nospace "${candicates[@]}"

    if [[ ${#candicates[@]} -gt 0 ]]; then
        COMPREPLY=(${candicates[@]})
    fi
}

_argc_completions_complete_path() {
    local cur="$1"
    local kind="$2"
    if [[ "$kind" == "dir" ]]; then
        compopt -o nospace -o plusdirs > /dev/null 2>&1
        COMPREPLY=($(compgen -d -- "${cur}"))
    else
        compopt -o nospace -o plusdirs > /dev/null 2>&1
        COMPREPLY=($(compgen -f -- "${cur}"))
    fi
}

_argc_completions_complete_nospace() {
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

complete -F _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}