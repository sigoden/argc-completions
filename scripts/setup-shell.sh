#!/usr/bin/env bash

# Setup argc-completions in the shell.

set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

main() {
    if [[ "$1" != @(bash|zsh|powershell|fish|nushell|elvish|xonsh) ]]; then
        echo "Usage: script-shell.sh <bash|zsh|powershell|fish|nushell|elvish|xonsh> [--install]"
        exit 1
    fi
    if [[ "$2" == "--install" ]]; then
        install=1
    fi
    file="$(_config_file $1)"
    script="$(_setup_script $1)"

    if [[ -n "$install" ]]; then
        if [[ ! -e "$file" ]]; then
            mkdir -p "$(dirname "$file")" && touch "$file"
        fi
        if ! grep -q 'ARGC_COMPLETIONS_ROOT' "$file"; then
            echo -e "\n# argc-completions\n$script" >> "$file"
        fi
    else
        file="$(echo "$file" | sed 's|'$HOME'|~|')"
        if [[ "$1" == "powershell" ]]; then
            file_alias=' ($PROFILE)'
        elif [[ "$1" == "nushell" ]]; then
            file_alias=' ($nu.config-path)'
        fi
        echo "Add the following code to '$file'$file_alias"
        echo -e "\n\`\`\`\n# argc-completions\n$script\n\`\`\`"
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
        if [[ -n "$USERPROFILE" ]]; then
            echo "$USERPROFILE\\Documents\\PowerShell\\Microsoft.PowerShell_profile.ps1"
        else
            echo "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"
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
    esac
}

_setup_script() {
    local argc_completions_root="$PWD"
    local sep="/"
    local argc_completions_path
    if [[ "$1" == @(bash|fish|zsh) ]]; then
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
source <(ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p' | xargs argc --argc-completions bash)
EOF
        ;;
    elvish)
        cat <<EOF
set E:ARGC_COMPLETIONS_ROOT = '$argc_completions_root'
set E:ARGC_COMPLETIONS_PATH = \$E:ARGC_COMPLETIONS_ROOT'${sep}completions'
set paths = [(echo \$E:ARGC_COMPLETIONS_ROOT'${sep}bin') \$@paths]
eval (ls -p -1 \$E:ARGC_COMPLETIONS_ROOT'${sep}completions' | sed -n 's/\.sh$//p' | xargs argc --argc-completions elvish | slurp)
EOF
        ;;
    fish)
        cat <<EOF
set -gx ARGC_COMPLETIONS_ROOT "$argc_completions_root"
set -gx ARGC_COMPLETIONS_PATH "$argc_completions_path"
fish_add_path "\$ARGC_COMPLETIONS_ROOT/bin"
ls -1 "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p' | xargs argc --argc-completions fish | source
EOF
        ;;
    nushell)
        mkdir -p "${argc_completions_root}${sep}tmp"
        touch "${argc_completions_root}${sep}tmp${sep}argc-completions.nu"
        local path_name=PATH
        if [[ "$OS" == "Windows_NT" ]]; then
            path_name=Path
        fi
        cat <<EOF
\$env.ARGC_COMPLETIONS_ROOT = '$argc_completions_root'
\$env.ARGC_COMPLETIONS_PATH = (\$env.ARGC_COMPLETIONS_ROOT + '${sep}completions')
\$env.$path_name = (\$env.$path_name | prepend (\$env.ARGC_COMPLETIONS_ROOT + '${sep}bin'))
argc --argc-completions nushell | save -f '${argc_completions_root}${sep}tmp${sep}argc-completions.nu'
source '${argc_completions_root}${sep}tmp${sep}argc-completions.nu'
EOF
        ;;
    powershell)
        cat <<EOF
# Set-PSReadLineOption -Colors @{ "Selection" = "\`e[7m" }
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
\$env:ARGC_COMPLETIONS_ROOT = '$argc_completions_root'    
\$env:ARGC_COMPLETIONS_PATH = (\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions')    
\$env:PATH = \$env:ARGC_COMPLETIONS_ROOT + '${sep}bin' + [IO.Path]::PathSeparator + \$env:PATH
argc --argc-completions powershell (
    (Get-ChildItem -File (\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions')) |
    ForEach-Object { \$_.Name -replace '\.sh$' }) | Out-String | Invoke-Expression
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
exec(\$(argc --argc-completions xonsh @(
    list(map(lambda v: v.removesuffix('.sh'), filter(lambda v: v.endswith('.sh'),
        os.listdir(\$ARGC_COMPLETIONS_ROOT + '${sep}completions')))))))
EOF
        ;;
    zsh)
        cat <<EOF
export ARGC_COMPLETIONS_ROOT="$argc_completions_root"
export ARGC_COMPLETIONS_PATH="$argc_completions_path"
export PATH="\$ARGC_COMPLETIONS_ROOT/bin:\$PATH"
source <(ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p' | xargs argc --argc-completions zsh)
EOF
        ;;
    esac
}

main "$@"