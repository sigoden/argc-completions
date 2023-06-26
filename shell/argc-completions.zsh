ARGC_COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$(dirname $(dirname $(readlink -f $0)) )/completions"}
ARGC_COMPLETIONS_SCRIPTS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//' | tr '\n' ' ') )
ARGC_COMPLETIONS_EXTEND_CMDS=( $(ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||' | tr '\n' ' ') )

_argc_completions_complete_impl() {
    local candidates=()
    while IFS=$'\n' read -r line; do
        if [[ "$line" == "" ]]; then line=$'\0'; fi
        candidates+=( "$line" )
    done < <(argc --argc-compgen zsh $@ 2>/dev/null)
    local skip=0
    if [[ ${#candidates[@]} -gt 0 ]]; then
        if [[ "$candidates[1]" == "__argc_value:file" ]]; then
            skip=1
            _path_files
        elif [[ "$candidates[1]" == "__argc_value:dir" ]]; then
            skip=1
            _path_files -/
        fi
    fi
    if [[ ${#candidates[@]} -gt $skip ]]; then
        local values=()
        local displays=()
        for candidate in ${candidates[@]:$skip}; do
            IFS=$'\t' read -r value display <<< "$candidate"
            values+=( "$value" )
            displays+=( "$display" )
        done
        zstyle ":completion:${curcontext}:*" list-colors "=(#b)(-- *)=0=2;37:=(#b)(--[A-Za-z0-9_-]#)( * -- *)=0==2;37"
        _describe "" displays values -Q -S ''
    fi
}

_argc_completions_completer()
{
    local cur="$words[$CURRENT]"
    if [[ "$cur" == "" ]]; then
        words+=( $'\0' )
    fi
    local cmd="$(basename "$words[1]")"
    local extend=0
    local scriptfile
    if [[ ${#words[@]} -gt 2 ]] && [[ " ${ARGC_COMPLETIONS_EXTEND_CMDS[*]} " =~ " $cmd " ]]; then
        local subcmd="$words[2]"
        if [[ "$subcmd" =~ ^[A-Za-z0-9] ]]; then
            scriptfile="$ARGC_COMPLETIONS_DIR/$cmd/$subcmd.sh"
            if [[ -f  "$scriptfile" ]]; then
                extend=1
            fi
        fi
    fi
    if [[ $extend -eq 1 ]]; then
        words=( ${words[2, -1]} )
    else
        scriptfile="$ARGC_COMPLETIONS_DIR/$cmd.sh"
        if [[ ! -f "$scriptfile" ]]; then
            _path_files
            return
        fi
    fi
    _argc_completions_complete_impl $scriptfile $words
}

compdef _argc_completions_completer ${ARGC_COMPLETIONS_SCRIPTS[@]}