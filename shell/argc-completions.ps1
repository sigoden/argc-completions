using namespace System.Management.Automation

$ARGC_COMPLETIONS_DIR = if ($ARGC_COMPLETIONS_DIR) { $ARGC_COMPLETIONS_DIR.TrimEnd('\') } else {(Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)) + "\completions" }
$ARGC_COMPLETIONS_SCRIPTS = (Get-ChildItem -File $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name -replace '\.sh$' })
$ARGC_COMPLETIONS_EXTEND_CMDS = (Get-ChildItem -Directory $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name })

$_argc_completions_completer = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $words = @($commandAst.CommandElements | Where { $_.Extent.StartOffset -lt $cursorPosition } | ForEach-Object { $_.ToString() })
    if ($commandAst.CommandElements[-1].Extent.EndOffset -lt $cursorPosition) {
        $words += ''
    }
    $word1 = $words[0]
    if ($word1 -cmatch '([A-Za-z0-9_-]+)(\.[^.]+)?$') {
        $word1 = $matches[1]
    }
    $extend = $false
    $scriptfile = ""
    $line = ""
    if (($words.Count -gt 2) -and ($word1 -in $ARGC_COMPLETIONS_EXTEND_CMDS)) {
        $word2 = $words[1]
        if ($word2 -match '^[A-Za-z0-9]') {
            $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $word1 + "\" + $word2 + ".sh")
            if (Test-Path -Path $scriptfile -PathType Leaf) {
                $extend = $true
            }
        }
    }
    if ($extend) {
        $line = $words[2..($words.Count-1)] -join " "
    } else {
        $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $word1 + ".sh")
        if (-not(Test-Path -Path $scriptfile -PathType Leaf)) {
            return
        }
        $line = $words[1..($words.Count-1)] -join " "
    }
    if ($line -eq "") {
        $line = " "
    }
    $candicates = @((argc --argc-compgen powershell $scriptfile $line 2>$null).Split("`n"))
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

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions_completer -CommandName $ARGC_COMPLETIONS_SCRIPTS