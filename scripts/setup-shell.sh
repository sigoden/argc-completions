#!/usr/bin/env bash

# Generate guide for loading argc-completions

setup() {
    root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"
    bin_dir="$root_dir/bin"
    completions_dir="$root_dir/completions"
    scripts_dir="$root_dir/scripts"
    argc_completions="$root_dir/shell/argc-completions"
    shell=$(echo "$1" | tr '[:upper:]' '[:lower:]')
    shell_list="bash|elvish|fish|nushell|powershell|xonsh|zsh"
    if [[ -z "$shell" ]]; then
        echo "Usage: ./setup-shell.sh [$shell_list]"
        exit 
    fi
    if _is_win; then
        if [[ ! " bash zsh fish " =~ " $shell " ]]; then
            bin_dir="$(_to_win_path "$bin_dir")"
            completions_dir="$(_to_win_path "$completions_dir")"
            argc_completions="$(_to_win_path "$argc_completions")"
        fi
    fi
    case $shell in
    bash)
        config_file="~/.bashrc"
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```sh
export ARGC_COMPLETIONS_ROOT="__ROOT_DIR__"
export PATH="__BIN_DIR__:$PATH"
source "__ARGC_COMPLETIONS__.bash"
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
set E:ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
set paths = ['__BIN_DIR__' $@paths]
eval (slurp < '__ARGC_COMPLETIONS__.elv')
```
EOF
)
        ;;
    fish)
        config_file="~/.config/fish/config.fish"
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```fish
set -gx  ARGC_COMPLETIONS_ROOT '__ROOT_DIR__'
fish_add_path '__BIN_DIR__'
source '__ARGC_COMPLETIONS__.fish' 
```
EOF
)
        ;;
    nushell)
        content=$(cat <<-'EOF'
Manually add the following code to $nu.config-path

```nu
let-env ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
let-env PATH = ($env.PATH | prepend "__BIN_DIR__")
source "__ARGC_COMPLETIONS__.nu"
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
$env:ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
$env:PATH = '__BIN_DIR__;' + $env:PATH
. '__ARGC_COMPLETIONS__.ps1'
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
$ARGC_COMPLETIONS_ROOT = '__ROOT_DIR__'
$PATH.insert(0, '__BIN_DIR__')
source '__ARGC_COMPLETIONS__.xsh'
```
EOF
)
        ;;
    zsh)
        config_file="~/.zshrc"
        content=$(cat <<-'EOF'
Manually add the following code to '__CONFIG_FILE__'

```zsh
export ARGC_COMPLETIONS_ROOT="__ROOT_DIR__"
export PATH="__BIN_DIR__:$PATH"
source "__ARGC_COMPLETIONS__.zsh"
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
        -e 's|__ROOT_DIR__|'"$root_dir"'|g'  \
        -e 's|__CONFIG_FILE__|'"$config_file"'|g'  \
        -e 's|__ARGC_COMPLETIONS__|'"$argc_completions"'|g' \
        -e 's|__BIN_DIR__|'"$bin_dir"'|g' 
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