set -q ARGC_COMPLETIONS_DIR || set ARGC_COMPLETIONS_DIR (string join "" (cd (dirname (status -f)); and pwd)  "/completions")
set ARGC_COMPLETIONS_SCRIPTS (ls -1 "$ARGC_COMPLETIONS_DIR" | sed 's/.sh$//')
set -q ARGC_COMPLETIONS_GIT_BASH || set ARGC_COMPLETIONS_GIT_BASH bash

function __fish_complete_argc_scripts
    set -l tokens (commandline -c | string trim -l | string split " " --)
    set -l bin (basename $tokens[1])
    set -l argcfile "$ARGC_COMPLETIONS_DIR/$bin.sh"
    if test -z $argcfile
        return 0
    end
    set -l IFS '\n'
    set -l opts (argc --compgen "$argcfile" "$tokens[2..]" 2>/dev/null)
    set comp_file 0
    set comp_dir 0
    for opt in $opts
        if string match -q -- '^-' "$opt"
            echo $opt
        else if string match -qr '^`[^` ]+`' -- "$opt"
            set -l name (string sub "$opt" -s 2 -e -1)
            "$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" $name 2>/dev/null
        else if string match -q -- '<*' "$opt"
            if string match -qir -- '(file|path)>(\.\.\.)?' "$opt"
                set comp_file 1
            else if string match -qir -- 'dir>(\.\.\.)?' "$opt"
                set comp_dir 1
            else
                echo $opt
            end
        else
            echo $opt
        end
    end
    if [ $comp_file -eq 1 ]
        __fish_complete_path
    else if [ $comp_dir -eq 1 ]
        __fish_complete_directories 
    end
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script  -n 'true' -a "(__fish_complete_argc_scripts)"
end