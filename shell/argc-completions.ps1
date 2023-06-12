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
    $cmd = $words[0]
    if ($cmd -cmatch '([A-Za-z0-9_-]+)(\.[^.]+)?$') {
        $cmd = $matches[1]
    }
    $extend = $false
    $scriptfile = ""
    $line = ""
    if (($words.Count -gt 2) -and ($cmd -in $ARGC_COMPLETIONS_EXTEND_CMDS)) {
        $subcmd = $words[1]
        if ($subcmd -match '^[A-Za-z0-9]') {
            $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $cmd + "\" + $subcmd + ".sh")
            if (Test-Path -Path $scriptfile -PathType Leaf) {
                $extend = $true
            }
        }
    }
    if ($extend) {
        $words = $words[1..($words.Count-1)]
    } else {
        $scriptfile = ($ARGC_COMPLETIONS_DIR + "\" + $cmd + ".sh")
        if (-not(Test-Path -Path $scriptfile -PathType Leaf)) {
            return
        }
    }
    $candicates = @((argc --argc-compgen powershell $scriptfile $words 2>$null).Split("`n"))
    if ($candicates.Count -eq 1) {
        if (($candicates[0] -eq "__argc_comp:file") -or ($candicates[0] -eq "__argc_comp:dir")) {
            return
        } elseif ($candicates[0] -eq "") {
            return ""
        }
    }
    $candicates | ForEach-Object { 
        $parts = ($_ -split "`t")
        $value = $parts[0]
        $description = ""
        if ($parts[1] -eq "1") {
            $value = $value + " "
        }
        if ($parts[3] -eq "") {
            $description = "$([char]0x1b)[92m" + $parts[2] + "$([char]0x1b)[0m"
        } else {
            $description = "$([char]0x1b)[92m" + $parts[2] + "$([char]0x1b)[0m" + "$([char]0x1b)[38;5;238m (" + $parts[3] + ")$([char]0x1b)[0m"
        }
        [CompletionResult]::new($value, $description, [CompletionResultType]::ParameterValue, " ")
    }
}

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions_completer -CommandName $ARGC_COMPLETIONS_SCRIPTS