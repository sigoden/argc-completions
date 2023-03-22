ARGC_COMPELTIONS_DIR=${ARGC_COMPELTIONS_DIR:-"$( dirname $(readlink -f $0) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPELTIONS_DIR" | sed 's/.sh$//' ) )
ARGC_COMPLETIONS_GIT_BASH=${ARGC_COMPLETIONS_GIT_BASH:-bash}

_argc_completions_scripts()
{
    local argcfile line opts opts2 comp_file comp_dir
    local bin=$(basename $words[1])
    argcfile="$ARGC_COMPELTIONS_DIR/$bin.sh"
    line="${words[2,-1]}"
    if [[ $? -ne 0 ]]; then
        return 0
    fi
    IFS=$'\n'
    opts=( $(argc --compgen "$argcfile" "$line" 2>/dev/null) )
    opts2=()
    for opt in ${opts[@]}; do
        if [[ "$opt" == \`*\` ]]; then
            local choices=( $("$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" "${opt:1:-1}" 2>/dev/null) )
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
        _path_files
    elif [[ "$comp_dir" == 1 ]]; then
        _path_files -/
    fi
    if [[ ${#opts2[@]} -gt 0 ]]; then
        compadd -- $opts2[@]
    fi
}

compdef _argc_completions_scripts ${ARGC_COMPLETIONS_SCRIPTS[@]}