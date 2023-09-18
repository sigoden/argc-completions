use path
use re
use str

var ARGC_COMPLETIONS_SCRIPTS = [(ls -p -1 $E:ARGC_COMPLETIONS_DIR | grep -v '/' | sed 's/.sh$//')]
var ARGC_COMPLETIONS_EXTEND_CMDS = [(ls -p -1 $E:ARGC_COMPLETIONS_DIR | grep '/$' | sed 's|/$||')]

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
        set args = [(str:join '-' $args[0..2]) (all $args[2..])]
    } else {
        set scriptfile = (path:join $E:ARGC_COMPLETIONS_DIR (printf "%s.sh" $cmd))
    }

    var candidates = [(argc --argc-compgen elvish (all (conj [$scriptfile] (all $args))))]
    all $candidates | each {|candidate| 
        var parts = [(str:split "\t" $candidate)]
        var code-suffix = (if (eq $parts[1] 1) { echo ' ' } else { echo '' })
        var display = (if (eq $parts[3] '') {
            put (styled $parts[2] $parts[4])
        } else {
            put (styled $parts[2] $parts[4])(styled ' ' 'dim white bg-default')(styled '('$parts[3]')' 'dim white')
        })
        edit:complex-candidate $parts[0] &display=$display &code-suffix=$code-suffix
    }
}

all $ARGC_COMPLETIONS_SCRIPTS | each {|c|         
    set edit:completion:arg-completer[$c] = $argc-completions-completer~
}