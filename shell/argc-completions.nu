let ARGC_COMPLETIONS_EXTEND_CMDS = (ls $env.ARGC_COMPLETIONS_DIR | where type == dir | each {|it| $it.name | path basename })

def _argc_competions_complete_path [name: string, is_dir: bool] {
    let sep = if $nu.os-info.family == "windows" {
        "\\"
    } else {
        "/"
    }
    let paths = (ls ($name + '*') | skip 2)
    let paths = if $is_dir {
        $paths | where type == dir
    } else {
        $paths
    }
    $paths | each {|it| 
        if $it.type == 'dir' {
            $it.name + $sep 
        } else {
            $it.name 
        }
    }
}

def _argc_competions_complete_list [] {
    each { |line| $line | split column "\t" value description } | flatten 
}

def _argc_completions_completer [words: list<string>] {
    let cmd = ($words.0 | path parse | get stem)
    mut extend = false
    mut scriptfile = ""
    mut line = ""
    if (($words | length) > 2) and ($cmd in $ARGC_COMPLETIONS_EXTEND_CMDS) {
        let subcmd = $words.1
        if $subcmd =~ ^[A-Za-z0-9] {
            $scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join $cmd ($subcmd + '.sh') | path expand)
            if ($scriptfile | path exists) {
                $extend = true
            }
        }
    }
    mut words = $words
    if $extend {
        $words = ($words | skip 1)
    } else {
        $scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join ($cmd + '.sh') | path expand)
        if not ($scriptfile | path exists) {
            return (_argc_competions_complete_path ($words | last) false | _argc_competions_complete_list)
        }
    }
    mut candidates = ((argc --argc-compgen nushell $scriptfile $words) | split row "\n")
    if ($candidates | length) == 1  {
        if $candidates.0 == '__argc_comp:file' {
            $candidates = (_argc_competions_complete_path ($words | last) false)
        } else if $candidates.0 == '__argc_comp:dir' {
            $candidates = (_argc_competions_complete_path ($words | last) true)
        }
    }
    $candidates | _argc_competions_complete_list
}