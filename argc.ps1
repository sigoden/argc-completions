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
    $option_values = @()
    $value_kind = 0
    foreach ($item in $compgen_values) {
        if ($item -match '^-') {
            $option_values += $item
        } elseif ($item -match '^`[^` ]+`$') {
            $choices = (& $ARGC_BASH "$scriptfile" $item.Substring(1, $item.Length - 2) "$line" 2>$null).Split("`n")
            $candicates += $choices
        } elseif ($item -match '^<') {
            if ($item -imatch "<args>...") {
                $value_kind = 1
            } elseif ($item -imatch "file|path") {
                $value_kind = 2
            } elseif ($item -imatch "dir") {
                $value_kind = 3
            } else {
                $value_kind = 9
            }
        } else {
            $candicates += $item
        }
    }
    $paths = @()
    if ($value_kind -eq 0) {
        if ($candicates.Count -eq 0) {
            $candicates = $option_values
        }
    } elseif ($value_kind -eq 1) {
        if ($candicates.Count -eq 0) {
            $candicates = $option_values
        }
        if ($candicates.Count -eq 0) {
            $paths = (Get-ChildItem -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
        }
    } elseif ($value_kind -eq 2) {
        $paths = (Get-ChildItem -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
    } elseif ($value_kind -eq 3) {
        $paths = (Get-ChildItem -Attributes Directory -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
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