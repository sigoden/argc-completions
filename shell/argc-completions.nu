let ARGC_COMPLETIONS_EXTEND_CMDS = (ls $env.ARGC_COMPLETIONS_DIR | where type == dir | each {|it| $it.name | path basename })

def _argc_completions_complete_path [name: string, is_dir: bool] {
    let sep = if $nu.os-info.family == "windows" {
        "\\"
    } else {
        "/"
    }
    let paths = (try {ls ($name + '*')} catch { [] })
    mut paths = if $is_dir {
        $paths | where type == dir
    } else {
        $paths
    }
    let homedir = ('~' | path expand)
    let num_paths = ($paths | length)
    $paths | each {|it| 
        let value = (if $it.type == 'dir' {
            $it.name + $sep 
        } else {
            $it.name + ' '
        })
        if ($name | str starts-with '~') {
            $value | str replace $homedir '~'
        } else if ($name | str starts-with ('.' + $sep)) {
            '.' + $sep + $value
        } else {
            $value
        }
    }
}

def _argc_completions_complete_list [] {
    each { |line| $line | split column "\t" value description } | flatten 
}

def _argc_completions_complete_impl [args: list<string>] {
    let cur = ($args | last)
    mut candidates = ((do { argc --argc-compgen nushell $args } | complete | get stdout) | split row "\n" | range 0..-2)
    if ($candidates | length) > 0  {
        if $candidates.0 == '__argc_value:file' {
            $candidates = ($candidates | skip 1 | append (_argc_completions_complete_path $cur false))
        } else if $candidates.0 == '__argc_value:dir' {
            $candidates = ($candidates | skip 1 | append (_argc_completions_complete_path $cur true))
        }
    }
    $candidates | _argc_completions_complete_list
}

def _argc_completions_completer [args: list<string>] {
    let cmd = ($args.0 | path parse | get stem)
    mut extend = false
    mut scriptfile = ""
    if (($args | length) > 2) and ($cmd in $ARGC_COMPLETIONS_EXTEND_CMDS) {
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
        if not ($scriptfile | path exists) {
            return (_argc_completions_complete_path ($args | last) false | _argc_completions_complete_list)
        }
    }
    _argc_completions_complete_impl ($args | insert 0 $scriptfile)
}