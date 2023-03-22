ARGC_COMPELTIONS_DIR=${ARGC_COMPELTIONS_DIR:-"$( dirname "${BASH_SOURCE[0]}")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPELTIONS_DIR" | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_GIT_BASH=${ARGC_COMPLETIONS_GIT_BASH:-bash}

_argc_completions_scripts() {
    local argcfile cur opts opts2 line index IFS comp_file comp_dir
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=()
    argcfile="$ARGC_COMPELTIONS_DIR/${COMP_WORDS[0]}.sh"
    if [[ $? != 0 ]]; then
        return 0
    fi
    line=${COMP_LINE:${#COMP_WORDS[0]}}
    IFS=$'\n'
    opts=($(argc --compgen "$argcfile" "$line" 2>/dev/null))
    opts2=()
    for opt in ${opts[@]}; do
        if [[ "$opt" == \`*\` ]]; then
            local choices=($("$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" "${opts:1:-1}" 2>/dev/null))
            opts2=( "${opts2[@]}" "${choices[@]}" )
        elif [[ "$opt" == "<FILE>" ]] || [[ "$opt" == "<PATH>" ]] || [[ "$opt" == "<FILE>..." ]] || [[ "$opt" == "<PATH>..." ]]; then
            comp_file=1
        elif [[ "$opt" == "<DIR>" ]] || [[ "$opt" == "<DIR>..." ]]; then
            comp_dir=1
        else
            opts2+=( "$opt" )
        fi
    done
    if [[ "$comp_file" == 1 ]]; then
        compopt +o filenames 
    elif [[ "$comp_dir" == 1 ]]; then
        compopt +o dirnames
    fi
    if [[ ${#opts2[@]} -gt 0 ]]; then
        CANDIDATES=($(compgen -W "${opts2[*]}" -- "${cur}"))
        if [ ${#CANDIDATES[*]} -gt 0 ]; then
            COMPREPLY=($(printf '%q\n' "${CANDIDATES[@]}"))
        fi
    fi
}

complete -F _argc_completions_scripts -o bashdefault -o default ${ARGC_COMPLETIONS_SCRIPTS[@]}