let argc_completer = {|spans|
    let scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join ($spans.0 + '.sh') | path expand)
    if not ($scriptfile | path exists) {
        return
    }
    let line = ($spans | skip 1 | str join " ")
    let line = if $line == "" { " " } else { $line }
    let candicates = ((argc --argc-compgen fish $scriptfile $line) | str trim | split row "\n")
    let candicates = if ($candicates | length) == 1  {
        if $candicates.0 == '__argc_comp:file' {
            _argc_complete_path ($spans | last) false
        } else if $candicates.0 == '__argc_comp:dir' {
            _argc_complete_path ($spans | last) true
        } else {
            $candicates
        }
    } else {
        $candicates
    }
    $candicates | each { |line| $line | split column "\t" value description } | flatten 
}

def _argc_complete_path [name?: string, is_dir?: bool] {
    let sep = if $nu.os-info.family == "windows" {
        "\\"
    } else {
        "/"
    }
    let paths = (ls ($name + '*'))
    let paths = if $is_dir {
        $paths | where type == dir
    } else {
        $paths
    }
    $paths | each {|it| if $it.type == 'dir' { $it.name + $sep } else { $it.name }}
}
