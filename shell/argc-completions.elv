use path
use re
use str

var ARGC_COMPLETIONS_SCRIPTS = [(ls -p -1 $E:ARGC_COMPLETIONS_DIR | grep -v '/' | sed 's/.sh$//')]
var ARGC_COMPLETIONS_EXTEND_CMDS = [(ls -p -1 $E:ARGC_COMPLETIONS_DIR | grep '/$' | sed 's|/$||')]

fn argc-completions-complete-path {|arg &is_dir=$false|
    edit:complete-filename $arg | each {|c|
        var x = $c[stem]
        if (or (not $is_dir) (path:is-dir $x)) {
            put $c
        }
    }
}

fn argc-completions-complete-impl {|@args|
    var candidates = [(try { argc --argc-compgen elvish (all $args) 2>/dev/null } catch e { echo '' })]
    var skip = (num 0)
    if (> (count $candidates) (num 0)) {
        if (eq $candidates[0] '__argc_value:file') {
            set skip = (num 1)
            argc-completions-complete-path $args[-1]
        } elif (eq $candidates[0] '__argc_value:dir') {
            set skip = (num 1)
            argc-completions-complete-path &is_dir=$true $args[-1]
        }
    }
    all $candidates[$skip..] | each {|candidate| 
        var parts = [(str:split "\t" $candidate)]
        var code-suffix = (if (eq $parts[1] 1) { echo ' ' } else { echo '' })
        if (eq $parts[3] '') {
            edit:complex-candidate $parts[0] &display=(styled $parts[2] 'default') &code-suffix=$code-suffix
        } else {
            edit:complex-candidate $parts[0] &display=(styled $parts[2] 'default')(styled ' ' 'dim white bg-default')(styled '('$parts[3]')' 'dim white') &code-suffix=$code-suffix
        }
    }
}


fn argc-completions-completer {|@args|
    var cmd = (basename $args[0])
    var extend = $false
    var scriptfile
    if (and (> (count $args) (num 2)) (has-value $ARGC_COMPLETIONS_EXTEND_CMDS $cmd)) {
        var subcmd = $args[1]
        if (re:match '^[A-Za-z0-9]' $subcmd) {
            set scriptfile = (path:join $E:ARGC_COMPLETIONS_DIR $cmd (printf "%s.sh" $subcmd))
            if (path:is-regular &follow-symlink=$true $scriptfile) {
                set extend = $true
            }
        }
    }
    if $extend {
        set args = $args[1..]
    } else {
        set scriptfile = (path:join $E:ARGC_COMPLETIONS_DIR (printf "%s.sh" $cmd))
        if (not (path:is-regular &follow-symlink=$true $scriptfile)) {
            argc-completions-complete-path $args[-1]
            return
        }
    }
    argc-completions-complete-impl (all (conj [$scriptfile] (all $args)))
}

all $ARGC_COMPLETIONS_SCRIPTS | each {|c|         
    set edit:completion:arg-completer[$c] = $argc-completions-completer~
}