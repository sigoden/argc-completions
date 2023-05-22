def argc_completions [spans: list<string>] {
    let scriptfile = ($env.ARGC_COMPLETIONS_DIR | path join ($spans.0 + '.sh') | path expand)
    def _filepath [name?: string, is_dir?: bool] {
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
    if not ($scriptfile | path exists) {
        _filepath ($spans | last) false
    }
    let line = ($spans | skip 1 | str join " ")
    let line = if $line == "" { " " } else { $line }
    let candicates = ((argc --argc-compgen fish $scriptfile $line) | str trim | split row "\n")
    let candicates = if ($candicates | length) == 1  {
        if $candicates.0 == '__argc_comp:file' {
            _filepath ($spans | last) false
        } else if $candicates.0 == '__argc_comp:dir' {
            _filepath ($spans | last) true
        } else {
            $candicates
        }
    } else {
        $candicates
    }
    $candicates | each { |line| $line | split column "\t" value description } | flatten 
}