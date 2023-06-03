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
    let word1 = ($words.0 | path parse | get stem)
    mut extend = false
    mut scriptfile = ""
    mut line = ""
    if (($words | length) > 2) and ($word1 in $ARGC_COMPLETIONS_EXTEND_CMDS) {
        let word2 = $words.1
        if $word2 =~ ^[A-Za-z0-9] {
            $scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join $word1 ($word2 + '.sh') | path expand)
            if ($scriptfile | path exists) {
                $extend = true
            }
        }
    }
    if $extend {
        $line = ($words | skip 2 | str join " ")
    } else {
        $scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join ($word1 + '.sh') | path expand)
        if not ($scriptfile | path exists) {
            return (_argc_competions_complete_path ($words | last) false | _argc_competions_complete_list)
        }
        $line = ($words | skip 1 | str join " ")
    }
    if $line == "" {
        $line = " "
    }
    mut candicates = ((argc --argc-compgen nushell $scriptfile $line) | str trim | split row "\n")
    if ($candicates | length) == 1  {
        if $candicates.0 == '__argc_comp:file' {
            $candicates = (_argc_competions_complete_path ($words | last) false)
        } else if $candicates.0 == '__argc_comp:dir' {
            $candicates = (_argc_competions_complete_path ($words | last) true)
        }
    }
    $candicates | _argc_competions_complete_list
}