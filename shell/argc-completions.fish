set -q ARGC_COMPLETIONS_DIR || set ARGC_COMPLETIONS_DIR (dirname (dirname (status -f)))/completions
set ARGC_COMPLETIONS_SCRIPTS (ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//')

function __argc_completions
    set -l tokens (commandline -c | string trim -l | string split " " --)
    set -l bin (basename $tokens[1])
    set -l scriptfile "$ARGC_COMPLETIONS_DIR/$bin.sh"
    if not test -f "$scriptfile"
        return 0
    end
    set -l line "$tokens[2..]"
    set -l IFS '\n'
    set -l candicates (argc --argc-compgen fish "$scriptfile" "$line" 2>/dev/null)
    if test (count $candicates) -eq 1
        if [ "$candicates[1]" = "__argc_comp:file" ]
            set candicates
            __fish_complete_path
        else if [ "$candicates[1]" = "__argc_comp:dir" ]
            set candicates
            __fish_complete_directories 
        end
    end
    for item in $candicates
        echo "$item"
    end
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script -a "(__argc_completions)"
end