ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_completer() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local cmd="$(basename "${COMP_WORDS[0]}")"
    local extend=0
    local scriptfile line
    if [[ $COMP_CWORD -gt 1 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $cmd" ]]; then
        local subcmd="${COMP_WORDS[1]}"
        if [[ "$subcmd" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$cmd/$subcmd.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    if [[ $extend -eq 1 ]]; then
        line="${COMP_LINE:0:${COMP_POINT}}"
        line="${line/"$cmd"/}"
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$cmd.sh"
        if [[ ! -f "$scriptfile" ]]; then
            _argc_completions_complete_path "$cur"
            return
        fi
        line="${COMP_LINE:0:${COMP_POINT}}"
    fi
    local words=( $line )
    if [[ "$cur" == "" ]]; then
        words+=( "" )
    fi
	export COMP_WORDBREAKS
    local IFS=$'\n'
    local candidates=($(argc --argc-compgen bash "$scriptfile" "${words[@]}" 2>/dev/null))
    if [[ ${#candidates[@]} -eq 1 ]]; then
        if [[ "${candidates[0]}" == "__argc_comp:file" ]]; then
            _argc_completions_complete_path "$cur"
            return
        elif [[ "${candidates[0]}" == "__argc_comp:dir" ]]; then
            _argc_completions_complete_path "$cur" dir
            return
        fi
    fi

    if [[ ${#candidates[@]} -gt 0 ]]; then
        compopt -o nospace
        COMPREPLY=(${candidates[@]})
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

complete -F _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}