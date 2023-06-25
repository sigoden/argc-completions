ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_complete_path() {
    local cur="$1"
    local kind="$2"
    if [[ "$kind" == "dir" ]]; then
        compopt -o nospace -o plusdirs > /dev/null 2>&1
        COMPREPLY=($(compgen -d -- "${cur}"))
    else
        COMPREPLY=($(compgen -f -- "${cur}"))
        local args
        if [[ ${#COMPREPLY[@]} -ne 1 ]]; then
            args="-o nospace"
        fi
        compopt $args -o plusdirs > /dev/null 2>&1
    fi
}

_argc_completions_complete_impl() {
    local cur="${!#}"
    export COMP_WORDBREAKS
    local candidates
    mapfile -t candidates < <(argc --argc-compgen bash "$@" 2>/dev/null)
    if [[ ${#candidates[@]} -eq 1 ]]; then
        if [[ "${candidates[0]}" == "__argc_value:file" ]]; then
            _argc_completions_complete_path "$cur"
            return
        elif [[ "${candidates[0]}" == "__argc_value:dir" ]]; then
            _argc_completions_complete_path "$cur" dir
            return
        fi
    fi
    if [[ ${#candidates[@]} -gt 0 ]]; then
        compopt -o nospace
        COMPREPLY=( "${candidates[@]}" )
    fi
}

_argc_completions_completer() {
    local words=( ${COMP_LINE:0:${COMP_POINT}} )
    local cur="${COMP_WORDS[COMP_CWORD]}"
    if [[ "$cur" == "" ]]; then
        words+=( "" )
    fi

    local cmd="$(basename "${words[0]}")"
    local extend=0
    local scriptfile
    if [[ ${#words[@]} -gt 2 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $cmd" ]]; then
        local subcmd="${words[1]}"
        if [[ "$subcmd" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$cmd/$subcmd.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    if [[ $extend -eq 1 ]]; then
        words=( "${words[@]:1}" )
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$cmd.sh"
        if [[ ! -f "$scriptfile" ]]; then
            _argc_completions_complete_path "$cur"
            return
        fi
    fi
    _argc_completions_complete_impl "$scriptfile" "${words[@]}"
}

complete -F _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}