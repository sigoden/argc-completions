ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname $(dirname $(readlink -f $0)) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_completer() {
    local words2 cword cmd extend scriptfile
    _argc_reassemble_words

    cmd="$(basename "$words2[1]")"
    if [[ ${#words2[@]} -gt 2 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $cmd " ]]; then
        local subcmd="$words2[2]"
        if [[ "$subcmd" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$cmd/$subcmd.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    if [[ $extend -eq 1 ]]; then
        words2=( "${words2[1]}-${words2[2]}" ${words2[3, -1]} )
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$cmd.sh"
    fi

    local candidates=() values=() displays=() colors
    while IFS=$'\n' read -r line; do
        if [[ "$line" == "" ]]; then line=$'\0'; fi
        candidates+=( "$line" )
    done < <(argc --argc-compgen zsh $scriptfile $words2 2>/dev/null)
    for candidate in ${candidates[@]}; do
        IFS=$'\t' read -r value display color_key color <<< "$candidate"
        colors="$colors:=(#b)($color_key)( * -- *)=0=$color=2;37:=(#b)($color_key)()=0=$color=2;37"
        values+=( "${value}" )
        displays+=( "$display" )
    done
    zstyle ":completion:${curcontext}:*" list-colors "${colors:1}:=(#b)(-- *)=0=2;37:=(#b)(--[A-Za-z0-9_-]#)( * -- *)=0==2;37"
    _describe "" displays values -Q -S '' -o nosort
}

_argc_reassemble_words() {
    local i
    words2=()
    for ((i=1; i<=$CURRENT; i++)); do
        cword="$words[$i]"
        if [[ "$cword" == "" ]]; then
            words2+=( $'\0' )
        else
            if [[ "$cword" == *"\\"* ]]; then
                local j char next_char cword_len word
                cword_len="${#cword}"
                for ((j=0; j<$cword_len; j++)); do
                    char="${cword:$j:1}"
                    if [[ "$char" == "\\" ]]; then
                        next_char="${cword:$((j+1)):1}"
                        if [[ "$next_char" == "\\" ]]; then
                            word="$word$char"
                            j=$((j+1))
                        fi
                    else
                        word="$word$char"
                    fi
                done
                cword="$word"
            fi
            words2+=( "$cword" )
        fi
    done
}

compdef _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}