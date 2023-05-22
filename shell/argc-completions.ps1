$ARGC_COMPLETIONS_DIR = if ($ARGC_COMPLETIONS_DIR) { $ARGC_COMPLETIONS_DIR.TrimEnd('\') } else {(Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)) + "\completions" }
$ARGC_COMPLETIONS_SCRIPTS = (Get-ChildItem $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name -replace '\.sh$' })

$_argc_completions = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $commandAst.CommandElements[0] + ".sh")
    if (!$scriptfile) {
        $scriptfile = $commandAst.CommandElements[0]
        if (-not(Test-Path -Path $scriptfile -PathType Leaf)) {
            return
        }
    }
    $tail = if ($wordToComplete.ToString() -eq "") { " " } else { "" }
    if ($commandAst.CommandElements.Count -gt 1) {
        $line = ($commandAst.CommandElements[1..($commandAst.CommandElements.Count - 1)] -join " ") + $tail
    } else {
        $line = $tail
    }
    $candicates = (argc --argc-compgen powershell "$scriptfile" "$line" 2>$null).Split("`n")
    if ($candicates.Count -eq 1) {
        if (($candicates[0] -eq "__argc_comp:file") -or ($candicates[0] -eq "__argc_comp:dir")) {
            return
        } elseif ($candicates[0] -eq "") {
            return ""
        }
    }
    $candicates | ForEach-Object { 
        $parts=($_ -split "`t")
        $value = $parts[0]
        $desc = if ($parts[1]) { $parts[1] } else { " " }
        [CompletionResult]::new($value, $value, [CompletionResultType]::ParameterValue, $desc)
    }
}

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions -CommandName $ARGC_COMPLETIONS_SCRIPTS