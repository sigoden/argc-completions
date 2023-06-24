set -q ARGC_COMPLETIONS_DIR || set ARGC_COMPLETIONS_DIR (dirname (dirname (status -f)))/completions
set ARGC_COMPLETIONS_SCRIPTS (ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep -v '/' | sed 's/.sh$//')
set ARGC_COMPLETIONS_EXTEND_CMDS (ls -p -1 "$ARGC_COMPLETIONS_DIR" | grep '/$' | sed 's|/$||')

function _argc_completions_complete_impl
    set -l cur $argv[-1]
    set -l candidates (argc --argc-compgen fish $argv 2>/dev/null)
    if test (count $candidates) -eq 1
        if [ $candidates[1] = "__argc_value:file" ]
            __fish_complete_path $cur
            return
        else if [ $candidates[1] = "__argc_value:dir" ]
            __fish_complete_directories $cur
            return
        end
    end
    for item in $candidates
        echo $item
    end
end

function __argc_completions_completer
    set -l args (commandline -o)
    set -l cur (commandline -t)
    if [ $cur = "" ]
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
        if not test -f "$scriptfile"
            __fish_complete_path $cur
            return
        end
    end
    _argc_completions_complete_impl $scriptfile $args
end

for argc_script in $ARGC_COMPLETIONS_SCRIPTS
    complete -x -c $argc_script -a "(__argc_completions_completer)"
end