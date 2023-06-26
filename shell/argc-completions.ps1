using namespace System.Management.Automation

$ARGC_COMPLETIONS_DIR = if ($ARGC_COMPLETIONS_DIR) { $ARGC_COMPLETIONS_DIR.TrimEnd('\') } else {(Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)) + "\completions" }
$ARGC_COMPLETIONS_SCRIPTS = (Get-ChildItem -File $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name -replace '\.sh$' })
$ARGC_COMPLETIONS_EXTEND_CMDS = (Get-ChildItem -Directory $ARGC_COMPLETIONS_DIR | ForEach-Object { $_.Name })

function _argc_completions_complete_path([string]$cur, [bool]$is_dir) {
    $prefix = ''
    $quoted = $false
    if ($cur.StartsWith('"') -or $cur.StartsWith("'")) {
        $prefix = $prefix + $cur.SubString(0, 1)
        $quoted = $true
        $cur = $cur.SubString(1)
    }
    if ($cur.StartsWith('~') -or $cur.StartsWith('/') -or $cur.StartsWith('\')) {
        $cur = (Resolve-Path $cur.SubString(0, 1)).Path + $cur.SubString(1)
    }
    if ($cur -eq "") {
        $cur = ".\"
    }
    $cur = $cur -replace '/','\'
    if ($cur.Contains('\')) {
        $prefix = $prefix + ($cur -replace '\[^\]+$','\')
    }
    $paths = @()
    if ($is_dir) {
        $paths = (Get-ChildItem -Attributes Directory -Path "$cur*")
    } else {
        $paths = (Get-ChildItem -Path "$cur*")
    }

    $paths | ForEach-Object {
        $name = $_.Name
        $file = $true
        if ($_.Attributes -band [System.IO.FileAttributes]::Directory) {
            $name = $name + '\'
            $file = $false
        }
        $value = $prefix + $name
        if (-not($quoted)) {
            if ($value -match '[()<>\[\]{}"` #$&,;@|]') {
                $value = "'" + $value + "'"
            }
            if ($file) {
                $value = $value + ' '
            }
        }
        $description = $name
        [CompletionResult]::new($value, $description, [CompletionResultType]::ParameterValue, " ")
    } 
}

function _argc_completions_complete_impl([array]$words) {
    $candidates = @((argc --argc-compgen powershell $words 2>$null) -split "`n")
    if ($candidates.Count -eq 0) {
        return ""
    }
    $skip = 0
    $paths = @()
    if ($candidates.Count -gt 0) {
        if ($candidates[0] -eq "__argc_value:file") {
            $skip = 1
            $paths = (_argc_completions_complete_path $words[-1] $false)
        } elseif ($candidates[0] -eq "__argc_value:dir") {
            $skip = 1
            $paths = (_argc_completions_complete_path $words[-1] $true)
        }
    }
    $candidates = ($candidates | Select-Object -Skip $skip | ForEach-Object { 
        $parts = ($_ -split "`t")
        $value = $parts[0]
        $description = ""
        if ($parts[1] -eq "1") {
            $value = $value + " "
        }
        if ($parts[3] -eq "") {
            $description = $parts[2]
        } else {
            $description = $parts[2] + "$([char]0x1b)[38;5;238m (" + $parts[3] + ")$([char]0x1b)[0m"
        }
        [CompletionResult]::new($value, $description, [CompletionResultType]::ParameterValue, " ")
    })
    $paths + $candidates
}


$_argc_completions_completer = {
    param($wordToComplete, $commandAst, $cursorPosition)
    $words = @($commandAst.CommandElements | Where { $_.Extent.StartOffset -lt $cursorPosition } | ForEach-Object { $_.ToString() })
    $emptyS = ''
    if ($PSVersionTable.PSVersion.Major -eq 5) {
        $emptyS = '""'
    }
    if ($commandAst.CommandElements[-1].Extent.EndOffset -lt $cursorPosition) {
        $words += $emptyS
    }
    $cmd = $words[0]
    if ($cmd -cmatch '([A-Za-z0-9_-]+)(\.[^.]+)?$') {
        $cmd = $matches[1]
    }
    $extend = $false
    $scriptfile = ""
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
            return (_argc_completions_complete_path $words[-1] $false)
        }
    }
    $words = @($scriptfile) + $words
    _argc_completions_complete_impl $words
}

Register-ArgumentCompleter -Native -ScriptBlock $_argc_completions_completer -CommandName $ARGC_COMPLETIONS_SCRIPTS