let-env ARGC_COMPLETIONS_EXTEND_CMDS = (ls $env.ARGC_COMPLETIONS_DIR | where type == dir | each {|it| $it.name | path basename })

def _argc_completions_completer [args: list<string>] {
    let cmd = ($args.0 | path parse | get stem)
    mut extend = false
    mut scriptfile = ""
    if (($args | length) > 2) and ($cmd in $env.ARGC_COMPLETIONS_EXTEND_CMDS) {
        let subcmd = $args.1
        if $subcmd =~ ^[A-Za-z0-9] {
            $scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join $cmd ($subcmd + '.sh') | path expand)
            if ($scriptfile | path exists) {
                $extend = true
            }
        }
    }
    mut args = $args
    if $extend {
        $args = ($args | skip 1)
    } else {
        $scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join ($cmd + '.sh') | path expand)
    }

    argc --argc-compgen nushell $scriptfile $args
        | split row "\n" | range 0..-2 
        | each { |line| $line | split column "\t" value description } | flatten 
}