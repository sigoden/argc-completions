#!/usr/bin/env bash

# Generate guide for loading argc-completions

setup() {
    root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"
    scripts_dir="$root_dir/scripts"
    script_file="$root_dir/shell/argc-completions"
    shell=$(echo "$1" | tr '[:upper:]' '[:lower:]')
    shell_list="bash|elvish|fish|nushell|powershell|xonsh|zsh"
    if [[ -z "$shell" ]]; then
        echo "Usage: ./setup-shell.sh [$shell_list]"
        exit 
    fi
    if [[ " bash zsh fish " =~ " $shell " ]]; then
        root_dir="$(echo "$root_dir" | sed 's|'"$HOME"'|$HOME|')"
    else
        if _is_win; then
            root_dir="$(_to_win_path "$root_dir")"
            script_file="$(_to_win_path "$script_file")"
        fi
    fi
    case $shell in
    bash)
        config_file="~/.bashrc"
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```sh
# argc-completions
export ARGC_COMPLETIONS_ROOT="__ROOT_DIR__"
export PATH="$ARGC_COMPLETIONS_ROOT/bin:$PATH"
source "$ARGC_COMPLETIONS_ROOT/shell/argc-completions.bash"
```
EOF
)
        ;;
    elvish)
        if _is_win; then
            config_file="$(_appdata_join elvish/rc.elv)"
        else
            config_file="~/.config/elvish/rc.elv"
        fi
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```elv
# argc-completions
use path
set E:ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
set E:ARGC_COMPLETIONS_DIR = (path:join $E:ARGC_COMPLETIONS_ROOT 'completions')
set paths = [(path:join $E:ARGC_COMPLETIONS_ROOT 'bin') $@paths]
eval (slurp < (path:join $E:ARGC_COMPLETIONS_ROOT 'shell' 'argc-completions.elv'))
```
EOF
)
        ;;
    fish)
        config_file="~/.config/fish/config.fish"
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```fish
# argc-completions
set -gx ARGC_COMPLETIONS_ROOT "__ROOT_DIR__"
fish_add_path "$ARGC_COMPLETIONS_ROOT/bin"
source "$ARGC_COMPLETIONS_ROOT/shell/argc-completions.fish"
```
EOF
)
        ;;
    nushell)
        content=$(cat <<-'EOF'
Manually add the following code to $nu.config-path

```nu
# argc-completions
$env.ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
$env.ARGC_COMPLETIONS_DIR = ($env.ARGC_COMPLETIONS_ROOT | path join 'completions')
$env.PATH = ($env.PATH | prepend ($env.ARGC_COMPLETIONS_ROOT | path join 'bin'))
source "__SCRIPT_FILE__.nu"
let external_completer = {|spans| 
    _argc_completions_completer $spans
}
$env.config.completions.external = {
    enable: true
    max_results: 100
    completer: $external_completer
}
```
EOF
)
        ;;
    powershell)
        content=$(cat <<-'EOF'
Manually add the following code to $PROFILE

```ps1
# argc-completions
$env:ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
$env:PATH = [System.IO.Path]::Join($env:ARGC_COMPLETIONS_ROOT, 'bin') + [IO.Path]::PathSeparator + $env:PATH
. ([System.IO.Path]::Join($env:ARGC_COMPLETIONS_ROOT, 'shell', 'argc-completions.ps1'))
```
EOF
)
        ;;
    xonsh)
        if _is_win; then
            config_file="$(_allusersprofile_join xonsh/xonshrc)"
        else
            config_file="~/.config/xonsh/rc.xsh"
        fi
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```xsh
# argc-completions
import os
$ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
$PATH.insert(0, os.path.join($ARGC_COMPLETIONS_ROOT, "bin"))
source @(os.path.join($ARGC_COMPLETIONS_ROOT, "shell", "argc-completions.xsh"))
```
EOF
)
        ;;
    zsh)
        config_file="~/.zshrc"
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```zsh
# argc-completions
export ARGC_COMPLETIONS_ROOT="__ROOT_DIR__"
export PATH="$ARGC_COMPLETIONS_ROOT/bin:$PATH"
source "$ARGC_COMPLETIONS_ROOT/shell/argc-completions.zsh"
```
EOF
)
        ;;
    *)
        echo "error: unknown '$shell', must be one of [$shell_list]"
        exit 1
        ;;
    esac
    echo "$content" | sed \
        -e 's|__ROOT_DIR__|'"$root_dir"'|g' \
        -e 's|__CONFIG_FILE__|'"$config_file"'|g' \
        -e 's|__SCRIPT_FILE__|'"$script_file"'|g'  \

}

_to_win_path() {
    cygpath -w "$1" | sed 's/\\/\\\\/g'
}

_appdata_join() {
    cygpath -w "${APPDATA}/$1" | sed 's/\\/\\\\/g'
}

_allusersprofile_join() {
    cygpath -w "${ALLUSERSPROFILE}/$1" | sed 's/\\/\\\\/g'
}

_is_win() {
    if [[ "$OS" == "Windows_NT" ]]; then
        return 0
    else
        return 1
    fi
}

setup $1