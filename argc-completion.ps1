$ARGC_COMPLETIONS_DIR = if ($ARGC_COMPLETIONS_DIR) { $ARGC_COMPLETIONS_DIR.TrimEnd('\') } else { (Split-Path -Parent $MyInvocation.MyCommand.Path) + "\completions" }
$ARGC_COMPLETIONS_SCRIPTS = (Get-ChildItem $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name -replace '\.sh$' })

$_argc_completions_scripts = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $commandAst.CommandElements[0] + ".sh")
    if (!$scriptfile) {
        $scriptfile = $commandAst.CommandElements[0]
        if (-not(Test-Path -Path $scriptfile -PathType Leaf)) {
            return;
        }
    }
    $tail = if ($wordToComplete.ToString() -eq "") { " " } else { "" }
    if ($commandAst.CommandElements.Count -gt 1) {
        $line = ($commandAst.CommandElements[1..($commandAst.CommandElements.Count - 1)] -join " ") + $tail
    } else {
        $line = $tail
    }
    $candicates = (argc --argc-compgen "$scriptfile" "$line" 2>$null).Split("`n")
    if ($candicates.Count -eq 1) {
        if ($candicates[0] -eq "__argc_comp:file") {
            $candicates = (Get-ChildItem -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
        } elseif ($candicates[0] -eq "__argc_comp:dir") {
            $candicates = (Get-ChildItem -Attributes Directory -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
        }
    }
    $candicates | 
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { 
            if ($_.StartsWith("-")) {
                $t = [System.Management.Automation.CompletionResultType]::ParameterName
            } else {
                $t = [System.Management.Automation.CompletionResultType]::ParameterValue
            }
            [System.Management.Automation.CompletionResult]::new($_, $_, $t, '-')
        }
}

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions_scripts -CommandName $ARGC_COMPLETIONS_SCRIPTS