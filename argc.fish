set -q ARGC_COMPLETIONS_DIR || set ARGC_COMPLETIONS_DIR (string join "" (cd (dirname (status -f)); and pwd)  "/completions")
set ARGC_COMPLETIONS_SCRIPTS (ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//')
set -q ARGC_BASH || set ARGC_BASH bash

function __argc_completion_scripts
    set -l tokens (commandline -c | string trim -l | string split " " --)
    set -l bin (basename $tokens[1])
    set -l scriptfile "$ARGC_COMPLETIONS_DIR/$bin.sh"
    if not test -f $scriptfile
        return 0
    end
    set -l line "$tokens[2..]"
    set -l IFS '\n'
    set -l compgen_values (argc --compgen "$scriptfile" "$line" 2>/dev/null)
    set -l candicates
    set -l arg_value
    for item in $compgen_values
        if string match -qr -- '^-' "$item"
            set -a candicates "$item"
        else if string match -qr '^`[^` ]+`' -- "$item"
            set -l name (string sub "$item" -s 2 -e -1)
            set -a candicates ("$ARGC_BASH" "$scriptfile" $name "$line" 2>/dev/null)
        else if string match -q -- '<*' "$item" || string match -q -- '[*'
            set arg_value "$item"
        else
            set -a candicates "$item"
        end
    end
    if test -z "$candicates"
        if string match -qir -- '(file|path)' "$item"
            __fish_complete_path
        else if string match -qir -- 'dir' "$item"
            __fish_complete_directories 
        end
    else if test -n "$arg_value"
        set -a candicates "$arg_value"
    end
    for item in $candicates
        echo $item
    end
end
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script  -n 'true' -a "(__argc_completion_scripts)"
end