ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_complete_path() {
    local cur="$1"
    local kind="$2"
    if [[ "$kind" == "dir" ]]; then
        COMPREPLY=($(compgen -d -- "${cur}"))
        compopt -o plusdirs
    else
        COMPREPLY=($(compgen -f -- "${cur}"))
        local opts
        if [[ ${#COMPREPLY[@]} -eq 1 ]]; then
            opts="+o nospace"
        fi
        compopt $opts -o plusdirs
    fi
}

_argc_completions_complete_impl() {
    local cur="${!#}"
    export COMP_WORDBREAKS
    local candidates
    while IFS=$'\n' read -r line; do
        candidates+=( "$line" )
    done < <(argc --argc-compgen bash "$@" 2>/dev/null)
    local skip=0
    if [[ ${#candidates[@]} -gt 0 ]]; then
        if [[ "${candidates[0]}" == "__argc_value:file" ]]; then
            skip=1
            _argc_completions_complete_path "$cur"
        elif [[ "${candidates[0]}" == "__argc_value:dir" ]]; then
            skip=1
            _argc_completions_complete_path "$cur" dir
        fi
    fi
    COMPREPLY=( "${candidates[@]:$skip}" "${COMPREPLY[@]}" )
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

complete -F _argc_completions_completer -o nospace ${ARGC_COMPLETIONS_SCRIPTS[@]}