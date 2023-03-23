$ARGC_COMPLETIONS_DIR = if ($ARGC_COMPLETIONS_DIR) { $ARGC_COMPLETIONS_DIR.TrimEnd('\') } else { (Split-Path -Parent $MyInvocation.MyCommand.Path) + "\completions" }
$ARGC_COMPLETIONS_SCRIPTS = (Get-ChildItem $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name -replace '\.sh$' })
$ARGC_COMPLETIONS_GIT_BASH = if ($ARGC_COMPLETIONS_GIT_BASH) { $ARGC_COMPLETIONS_GIT_BASH } else { "C:\Program Files\Git\bin\bash.exe" }

$_argc_completions_scripts = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $argcfile = ($ARGC_COMPLETIONS_DIR + "\" + $commandAst.CommandElements[0] + ".sh")
    if (!$argcfile) {
        $argcfile = $commandAst.CommandElements[0]
        if (-not(Test-Path -Path $argcfile -PathType Leaf)) {
            return;
        }
    }
    if ($wordToComplete.ToString() -eq "") {
        $tail = " "
    } else {
        $tail = ""
    }
    if ($commandAst.CommandElements.Count -gt 1) {
        $cmds = ($commandAst.CommandElements[1..($commandAst.CommandElements.Count - 1)] -join " ") + $tail
    } else {
        $cmds = $tail
    }
    $opts = (argc --compgen "$argcfile" "$cmds" 2>$null).Split("`n")
    $opts2 = @()
    foreach ($opt in $opts) {
        if ($opt -match '^-') {
            $opts2 += $opt
        } elseif ($opt -match '^`[^` ]+`$') {
            $choices = (& $ARGC_COMPLETIONS_GIT_BASH "$argcfile" $opt.Substring(1, $opt.Length - 2) 2>$null).Split("`n")
            $opts2 += $choices
        } elseif ($opt -match '^<') {
            if ($opt -imatch "file|path>(\.\.\.)?") {
                $comp_file = True
            } elseif ($opt -imatch "dir>(\.\.\.)?") {
                $comp_dir = True;
            } else {
                $opts2 += $opt
            }
        } else {
            $opts2 += $opt
        }
    }

    $result = ($opts2 | 
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { 
            if ($_.StartsWith("-")) {
                $t = [System.Management.Automation.CompletionResultType]::ParameterName
            } else {
                $t = [System.Management.Automation.CompletionResultType]::ParameterValue
            }
            [System.Management.Automation.CompletionResult]::new($_, $_, $t, '-')
        })

    $paths = @()
    if ($comp_file) {
        $paths = (Get-ChildItem -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
    } elseif ($comp_dir) {
        $paths = (Get-ChildItem -Attributes Directory -Path "$wordToComplete*" | Select-Object -ExpandProperty Name)
    }
    foreach ($path in $paths) {
        $t = [System.Management.Automation.CompletionResultType]::ParameterValue
        $result.Add([System.Management.Automation.CompletionResult]::new($path, $path, $t, '-'))
    }

    return $result
}

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions_scripts -CommandName $ARGC_COMPLETIONS_SCRIPTS