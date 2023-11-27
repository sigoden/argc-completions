#!/usr/bin/env bash

# Setup argc-completions in the shell.

set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

main() {
    if [[ "$1" != @(bash|zsh|powershell|fish|nushell|elvish|xonsh|tcsh) ]]; then
        echo "Usage: script-shell.sh <bash|zsh|powershell|fish|nushell|elvish|xonsh|tcsh> [--install]"
        exit 1
    fi
    file="$(_config_file $1)"
    script="$(_setup_script $1)"

    display_file="$(echo "$file" | sed 's|'$HOME'|~|')"
    if [[ "$1" == "powershell" ]]; then
        file_alias=' ($PROFILE)'
    elif [[ "$1" == "nushell" ]]; then
        file_alias=' ($nu.config-path)'
    fi
    echo "Please add the following code to '$display_file'$file_alias"
    echo -e "\n\`\`\`\n# argc-completions\n$script\n\`\`\`"

    if grep -q ARGC_COMPLETIONS_ROOT "$file" 2>/dev/null; then
        return
    fi

    if [ -t 0 ]; then
        echo
        read -p "Add the above code to '$display_file'? (y/N): " answer
        if [[ $answer =~ ^[Yy]$ ]]; then
            if [[ ! -e "$file" ]]; then
                mkdir -p "$(dirname "$file")"
                echo -e "# argc-completions\n$script" > "$file"
            else
                echo -e "\n# argc-completions\n$script" >> "$file"
            fi
        fi
    fi
}


_config_file() {
    case $1 in
    bash) echo "$HOME/.bashrc" ;;
    elvish)
        if [[ -n "$APPDATA" ]]; then
            echo "$APPDATA\\elvish\\rc.elv"
        else
            echo "$HOME/.config/elvish/rc.elv"
        fi
        ;;
    fish) echo "$HOME/.config/fish/config.fish" ;;
    nushell) 
        if [[ -n "$APPDATA" ]]; then
            echo "$APPDATA\\nushell\\config.nu"
        else
            echo "$HOME/.config/nushell/config.nu"
        fi
        ;;
    powershell)
        if command -v pwsh > /dev/null; then
            pwsh -c 'echo $PROFILE'
        elif command -v powershell > /dev/null; then
            powershell -Command 'echo $PROFILE'
        else
            if [[ -n "$USERPROFILE" ]]; then
                echo "$USERPROFILE\\Documents\\PowerShell\\Microsoft.PowerShell_profile.ps1"
            else
                echo "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"
            fi
        fi
        ;;
    xonsh)
        if [[ -n "$ALLUSERSPROFILE" ]]; then
            echo "$ALLUSERSPROFILE\\xonsh\\xonshrc"
        else
            echo "$HOME/.config/xonsh/rc.xsh"
        fi
        ;;
    zsh) echo "$HOME/.zshrc" ;;
    tcsh) echo "$HOME/.tcshrc"
    esac
}

_setup_script() {
    local argc_completions_root="$PWD"
    local sep="/"
    local argc_completions_path
    if [[ "$1" == @(bash|fish|zsh|tcsh) ]]; then
        if [[ "$OS" == "Windows_NT" ]]; then
            argc_completions_path="$(cygpath -w "$argc_completions_root/completions" | sed 's/\\/\\\\/g')"
        else
            argc_completions_path="\$ARGC_COMPLETIONS_ROOT/completions"
        fi
    else
        if [[ "$OS" == "Windows_NT" ]]; then
            argc_completions_root="$(cygpath -w "$argc_completions_root" | sed 's/\\/\\\\/g')"
            sep="\\\\"
        fi
    fi
    case $1 in
    bash)
        cat <<EOF
export ARGC_COMPLETIONS_ROOT="$argc_completions_root"
export ARGC_COMPLETIONS_PATH="$argc_completions_path"
export PATH="\$ARGC_COMPLETIONS_ROOT/bin:\$PATH"
argc_scripts=( \$(ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p') )
source <(argc --argc-completions bash "\${argc_scripts[@]}")
EOF
        ;;
    elvish)
        cat <<EOF
set E:ARGC_COMPLETIONS_ROOT = '$argc_completions_root'
set E:ARGC_COMPLETIONS_PATH = \$E:ARGC_COMPLETIONS_ROOT'${sep}completions'
set paths = [(echo \$E:ARGC_COMPLETIONS_ROOT'${sep}bin') \$@paths]
var argc_scripts = [(ls -p -1 \$E:ARGC_COMPLETIONS_ROOT'${sep}completions' | sed -n 's/\.sh$//p')]
eval (argc --argc-completions elvish (all \$argc_scripts) | slurp)
EOF
        ;;
    fish)
        cat <<EOF
set -gx ARGC_COMPLETIONS_ROOT "$argc_completions_root"
set -gx ARGC_COMPLETIONS_PATH "$argc_completions_path"
fish_add_path "\$ARGC_COMPLETIONS_ROOT/bin"
set argc_scripts (ls -1 "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p')
argc --argc-completions fish \$argc_scripts | source
EOF
        ;;
    nushell)
        mkdir -p "${argc_completions_root}${sep}tmp"
        touch "${argc_completions_root}${sep}tmp${sep}argc-completions.nu"
        local path_var=PATH
        if [[ "$OS" == "Windows_NT" ]]; then
            path_var=Path
        fi
        cat <<EOF
\$env.ARGC_COMPLETIONS_ROOT = '$argc_completions_root'
\$env.ARGC_COMPLETIONS_PATH = (\$env.ARGC_COMPLETIONS_ROOT + '${sep}completions')
\$env.$path_var = (\$env.$path_var | prepend (\$env.ARGC_COMPLETIONS_ROOT + '${sep}bin'))
argc --argc-completions nushell | save -f '${argc_completions_root}${sep}tmp${sep}argc-completions.nu'
source '${argc_completions_root}${sep}tmp${sep}argc-completions.nu'
EOF
        ;;
    powershell)
        cat <<EOF
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
\$env:ARGC_COMPLETIONS_ROOT = '$argc_completions_root'    
\$env:ARGC_COMPLETIONS_PATH = (\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions')    
\$env:PATH = \$env:ARGC_COMPLETIONS_ROOT + '${sep}bin' + [IO.Path]::PathSeparator + \$env:PATH
\$argc_scripts = ((Get-ChildItem -File (\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions')) | ForEach-Object { \$_.Name -replace '\.sh$' })
argc --argc-completions powershell \$argc_scripts | Out-String | Invoke-Expression
EOF
        ;;
    xonsh)
        if [[ "$OS" == "Windows_NT" ]]; then
            argc_completions_root="$(echo "$argc_completions_root" | sed 's/\\/\\\\/g')"
            sep="$sep$sep"
        fi
        cat <<EOF
\$ARGC_COMPLETIONS_ROOT = '$argc_completions_root'
\$ARGC_COMPLETIONS_PATH = \$ARGC_COMPLETIONS_ROOT + '${sep}completions'
\$PATH.insert(0, \$ARGC_COMPLETIONS_ROOT + '${sep}bin')
import os
\$argc_scripts = list(map(lambda v: v.removesuffix('.sh'), filter(lambda v: v.endswith('.sh'), os.listdir(\$ARGC_COMPLETIONS_ROOT + '${sep}completions'))))
exec(\$(argc --argc-completions xonsh @(\$argc_scripts)))
EOF
        ;;
    zsh)
        cat <<EOF
export ARGC_COMPLETIONS_ROOT="$argc_completions_root"
export ARGC_COMPLETIONS_PATH="$argc_completions_path"
export PATH="\$ARGC_COMPLETIONS_ROOT/bin:\$PATH"
argc_scripts=( \$(ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p') )
source <(argc --argc-completions zsh \$argc_scripts)
EOF
        ;;
    tcsh)
        cat <<EOF
setenv ARGC_COMPLETIONS_ROOT "$argc_completions_root"
setenv ARGC_COMPLETIONS_PATH "$argc_completions_path"
setenv PATH "\$ARGC_COMPLETIONS_ROOT/bin:\$PATH"
set autolist
set argc_scripts=\`ls -p -1 \$ARGC_COMPLETIONS_ROOT/completions | sed -n 's/\.sh$//p'\`
eval \`argc --argc-completions tcsh \$argc_scripts\`
EOF
        ;;
    esac
}

main "$@"