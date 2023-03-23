ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$( dirname $(readlink -f $0) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//' ) )
ARGC_COMPLETIONS_GIT_BASH=${ARGC_COMPLETIONS_GIT_BASH:-bash}

_argc_completions_scripts()
{
    local argcfile line opts opts2 comp_file comp_dir
    local bin=$(basename $words[1])
    argcfile="$ARGC_COMPLETIONS_DIR/$bin.sh"
    if [[ ! -f "$argcfile" ]]; then
        return 0
    fi
    line="${words[2,-1]}"
    IFS=$'\n'
    opts=( $(argc --compgen "$argcfile" "$line" 2>/dev/null) )
    opts2=()
    for opt in ${opts[@]}; do
        if [[ "$opt" == '-'* ]]; then
            if [[ "$words[-1]" == '-'* ]]; then
                opts2+=( "$opt" )
            fi
        elif [[ "$opt" == \`*\` ]]; then
            local choices=( $("$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" "${opt:1:-1}" 2>/dev/null) )
            opts2=( "${opts2[@]}" "${choices[@]}" )
        elif [[ "$opt" == '<'* ]]; then
            if echo "$opt" | grep -qi '\(file\|path\)>\(\.\.\.\)\?'; then
                comp_file=1
            elif echo "$opt" | grep -qi 'dir>\(\.\.\.\)\?'; then
                comp_dir=1
            else
                opts2+=( "$opt" )
            fi
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