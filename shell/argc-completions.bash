ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname "$(dirname "${BASH_SOURCE[0]}")")/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_completer() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local cmd="$(basename "${COMP_WORDS[0]}")"
    local extend=0
    local scriptfile line
    if [[ $COMP_CWORD -gt 1 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $cmd" ]]; then
        local subcmd="${COMP_WORDS[1]}"
        if [[ "$subcmd" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$cmd/$subcmd.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    if [[ $extend -eq 1 ]]; then
        line="${COMP_LINE:0:${COMP_POINT}}"
        line="${line/"$cmd"/}"
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$cmd.sh"
        if [[ ! -f "$scriptfile" ]]; then
            _argc_completions_complete_path "$cur"
            return
        fi
        line="${COMP_LINE:0:${COMP_POINT}}"
    fi
    local IFS=$'\n'
	export COMP_WORDBREAKS
    if [[ "$cur" == "" ]]; then
        line="$line ''"
    fi
    local candicates=($(echo "$line" | _argc_completions_complete_balance_quotes | xargs argc --argc-compgen bash "$scriptfile" 2>/dev/null))
    if [[ ${#candicates[@]} -eq 1 ]]; then
        if [[ "${candicates[0]}" == "__argc_comp:file" ]]; then
            _argc_completions_complete_path "$cur"
            return
        elif [[ "${candicates[0]}" == "__argc_comp:dir" ]]; then
            _argc_completions_complete_path "$cur" dir
            return
        fi
    fi

    if [[ ${#candicates[@]} -gt 0 ]]; then
        COMPREPLY=(${candicates[@]})
    fi
}

_argc_completions_complete_path() {
    local cur="$1"
    local kind="$2"
    if [[ "$kind" == "dir" ]]; then
        compopt -o nospace -o plusdirs > /dev/null 2>&1
        COMPREPLY=($(compgen -d -- "${cur}"))
    else
        compopt -o nospace -o plusdirs > /dev/null 2>&1
        COMPREPLY=($(compgen -f -- "${cur}"))
    fi
}

_argc_completions_complete_balance_quotes() {
    awk -v quotes="\"'" '{
        print $0 unbalance_quotations($0)
    }

    function unbalance_quotations(input) {
        split(input, chars, "")
        balances = ""
        for (i=1; i <= length(input); i++) {
            ch = chars[i]
            if (index(quotes, ch) > 0) {
                if (substr(balances, 1, 1) == ch) {
                    balances = substr(balances, 2)
                } else {
                    balances = ch balances
                }
            }
        }
        return balances
    }'
}

complete -F _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}