set ARGC_COMPELTIONS_BASE_DIR (cd (dirname (status -f)); and pwd) 
set ARGC_COMPLETIONS_SCRIPTS (ls -1 "$ARGC_COMPELTIONS_BASE_DIR/completions" | sed 's/.sh$//')
set -q ARGC_COMPLETIONS_GIT_BASH || set ARGC_COMPLETIONS_GIT_BASH bash

function __fish_complete_argc_scripts
    echo START > /tmp/file1
    set -l tokens (commandline -c | string trim -l | string split " " --)
    printf "%s\n" $tokens[1] > /tmp/file1
    set -l bin (basename $tokens[1])
    set -l argcfile "$ARGC_COMPELTIONS_BASE_DIR/completions/$bin.sh"
    if test -z $argcfile
        return 0
    end
    set -l IFS '\n'
    set -l opts (argc --compgen "$argcfile" "$tokens[2..]" 2>/dev/null)
    if [ (count $opts) = 0 ]
        return 0
    else if [ (count $opts) = 1 ]
        if string match -qr '^`[^` ]+`' -- "$opts[1]"
            set -l name (string sub $opts[1] -s 2 -e -1)
            set opts ("$ARGC_COMPLETIONS_GIT_BASH" "$argcfile" $name 2>/dev/null)
        end
    end
    for item in $opts
        if test "$item" = "<FILE>" || test "$item" = "<PATH>" || test "$item" = "<FILE>..." || test "$item" = "<PATH>..."
            __fish_complete_path
        else if test "$item" = "<DIR>" || test "$item" = "<DIR>..."
            __fish_complete_directories 
        else
            echo $item
        end
    end
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script  -n 'true' -a "(__fish_complete_argc_scripts)"
end