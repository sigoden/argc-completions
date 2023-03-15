ARGC_COMPELTIONS_BASE_DIR=$(dirname $(readlink -f $0))
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPELTIONS_BASE_DIR/completions" | sed 's/.sh$//' ) )
ARGC_COMPLETIONS_GIT_BASH=${ARGC_COMPLETIONS_GIT_BASH:-bash}

_argc_completions_scripts()
{
    local argcfile line opts opts2 bin
    bin=$(basename $words[1])
    argcfile="$ARGC_COMPELTIONS_BASE_DIR/completions/$bin.sh"
    line="${words[2,-1]}"
    if [[ $? -ne 0 ]]; then
        return 0
    fi
    IFS=$'\n'
    opts=( $(argc --compgen "$argcfile" "$line" 2>/dev/null) )
    if [[ ${#opts[@]} == 0 ]]; then
        return 0
    elif [[ ${#opts[@]} == 1 ]]; then
        if [[ "${opts[1]}" == \`*\` ]]; then
            opts=( $("$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" "${opts:1:-1}" 2>/dev/null) )
        fi
    fi
    opts2=()
    for item in "${opts[@]}"; do
        if [[ "$item" == "<FILE>" ]] || [[ "$item" == "<PATH>" ]] || [[ "$item" == "<FILE>..." ]] || [[ "$item" == "<PATH>..." ]]; then
            _path_files
        elif [[ "$item" == "<DIR>" ]] || [[ "$item" == "<DIR>..." ]]; then
            _path_files -/
        else
            opts2+=("$item")
        fi
    done

    if [[ ${#opts2[@]} -gt 0 ]]; then
        compadd -- $opts2[@]
    fi
}

compdef _argc_completions_scripts ${ARGC_COMPLETIONS_SCRIPTS[@]}