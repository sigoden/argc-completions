set -q ARGC_COMPLETIONS_DIR || set ARGC_COMPLETIONS_DIR (dirname (dirname (status -f)))/completions
set ARGC_COMPLETIONS_SCRIPTS (ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//')
set ARGC_COMPLETIONS_EXTEND_CMDS (ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||')

function __argc_completions_completer
    set -l args (commandline -o)
    set -l cur (commandline -t)
    if [ ! "$cur" ]
        set -a args ''
    end

    set -l cmd (basename $args[1])
    set -l extend 0
    set -l scriptfile
    if test (count $args) -gt 2; and contains $cmd $ARGC_COMPLETIONS_EXTEND_CMDS
        set -l subcmd $args[2]
        if string match -q -r -- '^[A-Za-z0-9]' $subcmd
            set scriptfile "$ARGC_COMPLETIONS_DIR/$cmd/$subcmd.sh"
            if test -f "$scriptfile"
                set extend 1
            end
        end
    end
    if test $extend -eq 1
        set args $args[2..]
    else
        set scriptfile "$ARGC_COMPLETIONS_DIR/$cmd.sh"
    end
    argc --argc-compgen fish "$scriptfile" $args
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script -a "(__argc_completions_completer)"
end