set -q ARGC_COMPLETIONS_DIR || set ARGC_COMPLETIONS_DIR (dirname (dirname (status -f)))/completions
set ARGC_COMPLETIONS_SCRIPTS (ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//')
set ARGC_COMPLETIONS_EXTEND_CMDS (ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||')

function __argc_completions_completer
    set -l words (commandline -c | string trim -l | string split " " --)
    set -l word1 (basename $words[1])
    set -l extend 0
    set -l scriptfile
    set -l line
    if test (count $words) -gt 2; and contains $word1 $ARGC_COMPLETIONS_EXTEND_CMDS
        set -l word2 $words[2]
        if string match -q -r -- '^[A-Za-z0-9]' $word2
            set scriptfile "$ARGC_COMPLETIONS_DIR/$word1/$word2.sh"
            if test -f "$scriptfile"
                set extend 1
            end
        end
    end
    if test $extend -eq 1
        set line "$words[3..]"
    else
        set scriptfile "$ARGC_COMPLETIONS_DIR/$word1.sh"
        if not test -f "$scriptfile"
            __fish_complete_path
            return
        end
        set line "$words[2..]"
    end
    set -l candicates (argc --argc-compgen fish $scriptfile $line 2>/dev/null)
    if test (count $candicates) -eq 1
        if [ "$candicates[1]" = "__argc_comp:file" ]
            __fish_complete_path
            return
        else if [ "$candicates[1]" = "__argc_comp:dir" ]
            __fish_complete_directories 
            return
        end
    end
    for item in $candicates
        echo "$item"
    end
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script -a "(__argc_completions_completer)"
end