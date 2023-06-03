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

fn argc-completions-completer {|@words|
    var word1 = (basename $words[0])
    var extend = $false
    var scriptfile
    var line
    if (and (> (count $words) (num 2)) (has-value $ARGC_COMPLETIONS_EXTEND_CMDS $word1)) {
        var word2 = $words[1]
        if (re:match '^[A-Za-z0-9]' $word2) {
            set scriptfile = (path:join $E:ARGC_COMPLETIONS_DIR $word1 (printf "%s.sh" $word2))
            if (path:is-regular $scriptfile) {
                set extend = $true
            }
        }
    }
    if $extend {
        set line = (all $words[2..] | str:join ' ')
    } else {
        set scriptfile = (path:join $E:ARGC_COMPLETIONS_DIR (printf "%s.sh" $word1))
        if (not (path:is-regular $scriptfile)) {
            argc-completions-complete-path $words[-1]
            return
        }
        set line = (all $words[1..] | str:join ' ')
    }
    if (eq $line '') {
        set line = ' '
    }
    var candicates = [(argc --argc-compgen elvish $scriptfile $line)]
    if (eq (count $candicates) (num 1)) {
        if (eq $candicates[0] '__argc_comp:file') {
            argc-completions-complete-path $words[-1]
            return
        } elif (eq $candicates[0] '__argc_comp:dir') {
            argc-completions-complete-path &is_dir=$true $words[-1]
            return
        }
    }
    var pad = (num 2)
    var candicates = [(all $candicates | each {|x|
        var parts = [(str:split "\t" $x)]
        var text = $parts[0]
        var text-len = (count $text)
        if (> $text-len $pad) {
            set pad = $text-len
        }
        var desc = (if (eq (count $parts) (num 1)) { echo ' ' } else { echo $parts[1] })
        put [$text $desc]
    })]
    var pad = (+ $pad (num 2))
    all $candicates | each {|x| 
        var spaces = (repeat (- $pad (count $x[0])) ' ' | str:join '')
        edit:complex-candidate $x[0] &display=$x[0]$spaces$x[1] &code-suffix=' '
    }
}

all $ARGC_COMPLETIONS_SCRIPTS | each {|c|         
    set edit:completion:arg-completer[$c] = $argc-completions-completer~
}