$ARGC_COMPLETIONS_DIR = if ($ARGC_COMPLETIONS_DIR) { $ARGC_COMPLETIONS_DIR.TrimEnd('\') } else { (Split-Path -Parent $MyInvocation.MyCommand.Path) + "\completions" }
$ARGC_COMPLETIONS_SCRIPTS = (Get-ChildItem $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name -replace '\.sh$' })
$ARGC_BASH = if ($ARGC_BASH) { $ARGC_BASH } else { "C:\Program Files\Git\bin\bash.exe" }

$_argc_completions_scripts = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $commandAst.CommandElements[0] + ".sh")
    if (!$scriptfile) {
        $scriptfile = $commandAst.CommandElements[0]
        if (-not(Test-Path -Path $scriptfile -PathType Leaf)) {
            return;
        }
    }
    if ($wordToComplete.ToString() -eq "") {
        $tail = " "
    } else {
        $tail = ""
    }
    if ($commandAst.CommandElements.Count -gt 1) {
        $line = ($commandAst.CommandElements[1..($commandAst.CommandElements.Count - 1)] -join " ") + $tail
    } else {
        $line = $tail
    }
    $compgen_values = (argc --compgen "$scriptfile" "$line" 2>$null).Split("`n")
    $candicates = @()
    $arg_value = ""
    foreach ($item in $compgen_values) {
        if ($item -match '^-') {
            $candicates += $item
        } elseif ($item -match '^`[^` ]+`$') {
            $choices = (& $ARGC_BASH "$scriptfile" $item.Substring(1, $item.Length - 2) "$line" 2>$null)
            if ($choices) {
                $candicates += $choices.Split("`n")
            }
        } elseif ($item -match '^[<|\[]') {
            $arg_value = $item
        } else {
            $candicates += $item
        }
    }
    $paths = @()
    if ($candicates.Count -eq 0) {
        if ($arg_value -imatch "file|path") {
            $paths = (Get-ChildItem -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
        } elseif ($arg_value -imatch "dir") {
            $paths = (Get-ChildItem -Attributes Directory -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
        }
    } elseif ($arg_value) {
        $candicates += $arg_value
    }
    $param_value = [System.Management.Automation.CompletionResultType]::ParameterValue
    $param_name = [System.Management.Automation.CompletionResultType]::ParameterName
    $result = ($candicates | 
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { 
            if ($_.StartsWith("-")) {
                $t = $param_name
            } else {
                $t = $param_value
            }
            [System.Management.Automation.CompletionResult]::new($_, $_, $t, '-')
        })

    foreach ($path in $paths) {
        $result.Add([System.Management.Automation.CompletionResult]::new($path, $path, $param_value, '-'))
    }

    return $result
}

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions_scripts -CommandName $ARGC_COMPLETIONS_SCRIPTS