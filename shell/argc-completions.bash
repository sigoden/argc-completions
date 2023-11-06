ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_completer() {
    local words cword cmd extend scriptfile
    _argc_completions_parse_comp_line

    cmd="$(basename "${words[0]}")"
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
        words=( "${words[0]}-${words[1]}" "${words[@]:2}" )
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$cmd.sh"
    fi
    export COMP_WORDBREAKS
    while IFS=$'\n' read -r line; do
        COMPREPLY+=( "$line" )
    done < <(argc --argc-compgen bash "$scriptfile" "${words[@]}" 2>/dev/null)
}

_argc_completions_parse_comp_line() {
    local line len i char prev_char word unbalance word_index
    word_index=0
    line="${COMP_LINE:0:$COMP_POINT}"
    len="${#line}"
    for ((i=0; i<len; i++)); do
        char="${line:i:1}"
        if [[ -n "$unbalance" ]]; then
            word="$word$char"
            if [[  "$unbalance" == "$char" ]]; then
                unbalance=""
            fi
        elif [[ "$char" == " " ]]; then
            if [[ "$prev_char" == "\\" ]]; then
                word="$word$char"
            elif [[ -n "$word" ]]; then
                words[$word_index]="$word"
                word_index=$((word_index+1))
                word=""
            fi
        elif [[ "$char" == "'" || "$char" == '"' ]]; then
            word="$word$char"
            unbalance="$char"
        elif [[ "$char" == "\\" ]]; then
            if [[ "$prev_char" == "\\" ]]; then
                word="$word$char"
            fi
        else
            word="$word$char"
        fi
        prev_char="$char"
    done
    words[$word_index]="$word"
    cword="$word"
}

complete -F _argc_completions_completer -o nospace -o nosort ${ARGC_COMPLETIONS_SCRIPTS[@]}