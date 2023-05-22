use str
use path

fn argc-completions {|@arg|
    var scriptfile = (path:join $E:ARGC_COMPLETIONS_DIR (echo $arg[0]'.sh') )
    fn _filedir {|arg &is_dir=$false|
        edit:complete-filename $arg | each {|c|
            var x = $c[stem]
            if (and $is_dir (not (path:is-dir $x))) {
            } else {
                put $x
            }
        }
    }
    if (not (path:is-regular $scriptfile)) {
        _filedir $arg[-1]
        return
    }
    var line = (all $arg[1..] | str:join ' ')
    var line = (if (eq $line '') { echo ' ' } else { echo $line })
    var candicates = [(argc --argc-compgen fish $scriptfile $line)]
    if (eq (count $candicates) (num 1)) {
        if (eq $candicates[0] '__argc_comp:file') {
            _filedir $arg[-1]
            return
        } elif (eq $candicates[0] '__argc_comp:dir') {
            _filedir &is_dir=$true $arg[-1]
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

ls -1 $E:ARGC_COMPLETIONS_DIR | sed 's/.sh$//' | each {|c| 
    set edit:completion:arg-completer[$c] = $argc-completions~
}