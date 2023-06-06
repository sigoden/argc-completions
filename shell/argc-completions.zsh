ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname $(dirname $(readlink -f $0)) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_completer()
{
    local word1="$(basename "$words[1]")"
    local extend=0
    local scriptfile line
    if [[ $CURRENT -gt 2 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $word1 " ]]; then
        local word2="$words[2]"
        if [[ "$word2" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$word1/$word2.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    local cur="$words[$CURRENT]"
    if [[ $extend -eq 1 ]]; then
        words=( ${words[2,$CURRENT]} )
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$word1.sh"
        if [[ ! -f "$scriptfile" ]]; then
            _path_files
            return
        fi
    fi
    if [[ "$cur" == "" ]]; then
        words+=( $'\0' )
    fi
    local IFS=$'\n'
    local candicates=( $(argc --argc-compgen zsh "$scriptfile" $words 2>/dev/null) )
    if [[ ${#candicates[@]} -eq 1 ]]; then
        if [[ "$candicates[1]" == "__argc_comp:file" ]]; then
            _path_files
            return
        elif [[ "$candicates[1]" == "__argc_comp:dir" ]]; then
            _path_files -/
            return
        fi
    fi
    if [[ ${#candicates[@]} -gt 0 ]]; then
        _describe '' candicates
    fi
}

compdef _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}