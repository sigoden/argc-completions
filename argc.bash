ARGC_COMPELTIONS_BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPELTIONS_BASE_DIR/completions" | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_GIT_BASH=${ARGC_COMPLETIONS_GIT_BASH:-bash}

_argc_completions_scripts() {
    local argcfile cur opts line index IFS
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=()
    argcfile="$ARGC_COMPELTIONS_BASE_DIR/completions/${COMP_WORDS[0]}.sh"
    if [[ $? != 0 ]]; then
        return 0
    fi
    line=${COMP_LINE:${#COMP_WORDS[0]}}
    IFS=$'\n'
    opts=($(argc --compgen "$argcfile" "$line" 2>/dev/null))
    if [[ ${#opts[@]} == 0 ]]; then
        return 0
    elif [[ ${#opts[@]} == 1 ]]; then
        if [[ "$opts" == \`*\` ]]; then
            opts=($("$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" "${opts:1:-1}" 2>/dev/null))
        elif [[ "$opts" == "<FILE>" ]] || [[ "$opts" == "<PATH>" ]] || [[ "$opts" == "<FILE>..." ]] || [[ "$opts" == "<PATH>..." ]]; then
            opts=()
            compopt +o filenames 
        elif [[ "$opts" == "<DIR>" ]] || [[ "$opts" == "<DIR>..." ]]; then
            opts=()
            compopt +o dirnames
        fi
    fi
    if [[ ${#opts[@]} -gt 0 ]]; then
        CANDIDATES=($(compgen -W "${opts[*]}" -- "${cur}"))
        if [ ${#CANDIDATES[*]} -gt 0 ]; then
            COMPREPLY=($(printf '%q\n' "${CANDIDATES[@]}"))
        fi
    fi
}

complete -F _argc_completions_scripts -o bashdefault -o default ${ARGC_COMPLETIONS_SCRIPTS[@]}