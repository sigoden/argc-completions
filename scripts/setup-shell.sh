#!/usr/bin/env bash

# Setup argc-completions in the shell.
shopt -s extglob
set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

main() {
    if [[ "$1" != @(bash|zsh|powershell|fish|nushell) ]]; then
        echo "Usage: setup-shell.sh <bash|zsh|powershell|fish|nushell> [--install]"
        exit 1
    fi
    file="$(_config_file $1)"
    script="$(_setup_script $1)"

    display_file="$(echo "$file" | sed 's|'$HOME'|~|')"
    if [[ "$1" == "powershell" ]]; then
        if [[ -z "$file" ]]; then
            display_file="'\$PROFILE'"
        fi
    elif [[ "$1" == "nushell" ]]; then
        display_file="$display_file (\$nu.config-path)"
    fi
    echo "Please add the following code to $display_file"
    echo -e "\n\`\`\`\n# argc-completions\n$script\n\`\`\`"

    if [[ -z "$file" ]]; then
        return
    fi

    if grep -q ARGC_COMPLETIONS_ROOT "$file" 2>/dev/null; then
        return
    fi

    if [ -t 0 ]; then
        echo
        read -p "Add the above code to $display_file? (y/N): " answer
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
            if ! command -v powershell > /dev/null; then
                pwsh -c 'echo $PROFILE'
            fi
        elif command -v powershell > /dev/null; then
            powershell -Command 'echo $PROFILE'
        fi
        ;;
    zsh) echo "$HOME/.zshrc" ;;
    esac
}

_setup_script() {
    local argc_completions_root="$ROOT_DIR" argc_completions_path
    local  os="$(_detect_os)" sep="/" sep2=':'
    if [[ "$1" =~ ^(bash|fish|zsh)$ ]]; then
        if [[ "$os" == "windows" ]]; then
            argc_completions_path="$(cygpath -w "$argc_completions_root/completions" | sed 's/\\/\\\\/g')"
            argc_completions_path="$argc_completions_path\\\\$os;$argc_completions_path"
        else
            argc_completions_path="\$ARGC_COMPLETIONS_ROOT/completions/$os:\$ARGC_COMPLETIONS_ROOT/completions"
        fi
    else
        if [[ "$os" == "windows" ]]; then
            argc_completions_root="$(cygpath -w "$argc_completions_root" | sed 's/\\/\\\\/g')"
            sep="\\\\"
            sep2=";"
        fi
    fi
    case $1 in
    bash)
        cat <<EOF
export ARGC_COMPLETIONS_ROOT="$argc_completions_root"
export ARGC_COMPLETIONS_PATH="$argc_completions_path"
export PATH="\$ARGC_COMPLETIONS_ROOT/bin:\$PATH"
# To add completions for only the specified command, modify next line e.g. argc_scripts=( cargo git )
argc_scripts=( \$(ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions/$os" "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p') )
source <(argc --argc-completions bash "\${argc_scripts[@]}")
EOF
        ;;
    fish)
        cat <<EOF
set -gx ARGC_COMPLETIONS_ROOT "$argc_completions_root"
set -gx ARGC_COMPLETIONS_PATH "$argc_completions_path"
fish_add_path "\$ARGC_COMPLETIONS_ROOT/bin"
# To add completions for only the specified command, modify next line e.g. set argc_scripts cargo git
set argc_scripts (ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions/$os" "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p')
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
\$env.ARGC_COMPLETIONS_PATH = (\$env.ARGC_COMPLETIONS_ROOT + '${sep}completions${sep}${os}${sep2}' + \$env.ARGC_COMPLETIONS_ROOT + '${sep}completions')
\$env.$path_var = (\$env.$path_var | prepend (\$env.ARGC_COMPLETIONS_ROOT + '${sep}bin'))
argc --argc-completions nushell | save -f '${argc_completions_root}${sep}tmp${sep}argc-completions.nu'
source '${argc_completions_root}${sep}tmp${sep}argc-completions.nu'
EOF
        ;;
    powershell)
        cat <<EOF
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
\$env:ARGC_COMPLETIONS_ROOT = '$argc_completions_root'    
\$env:ARGC_COMPLETIONS_PATH = (\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions${sep}${os}${sep2}' + \$env:ARGC_COMPLETIONS_ROOT + '${sep}completions')    
\$env:PATH = \$env:ARGC_COMPLETIONS_ROOT + '${sep}bin' + [IO.Path]::PathSeparator + \$env:PATH
# To add completions for only the specified command, modify next line e.g. \$argc_scripts = @("cargo", "git")
\$argc_scripts = ((Get-ChildItem -File -Path (\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions${sep}${os}'),(\$env:ARGC_COMPLETIONS_ROOT + '${sep}completions')) | ForEach-Object { \$_.BaseName })
argc --argc-completions powershell \$argc_scripts | Out-String | Invoke-Expression
EOF
        ;;
    zsh)
        cat <<EOF
export ARGC_COMPLETIONS_ROOT="$argc_completions_root"
export ARGC_COMPLETIONS_PATH="$argc_completions_path"
export PATH="\$ARGC_COMPLETIONS_ROOT/bin:\$PATH"
# To add completions for only the specified command, modify next line e.g. argc_scripts=( cargo git )
argc_scripts=( \$(ls -p -1 "\$ARGC_COMPLETIONS_ROOT/completions/$os" "\$ARGC_COMPLETIONS_ROOT/completions" | sed -n 's/\.sh$//p') )
source <(argc --argc-completions zsh \$argc_scripts)
EOF
        ;;
    esac
}

_detect_os() {
    if [[ "$OS" == "Windows_NT" ]]; then
        echo "windows"
    elif [[ "$(uname)" == "Darwin" ]]; then
        echo "macos"
    else
        echo "linux"
    fi
}

main "$@"
