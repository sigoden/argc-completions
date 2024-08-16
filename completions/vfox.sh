#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug      show debug information (default: false)
# @flag -h --help    show help
# @flag -v           print version (default: false)
# @flag -V           print version (default: false)
# @flag --version    print version (default: false)
# @arg sdk[`_choice_sdk`]

# {{ vfox upgrade
# @cmd upgrade vfox to the latest version
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
upgrade() {
    :;
}
# }} vfox upgrade

# {{ vfox config
# @cmd Setup, view config
# @flag -l --list    list all config (default: false)
# @flag --unset      remove a config (default: false)
# @flag --un         remove a config (default: false)
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
config() {
    :;
}
# }} vfox config

# {{ vfox cd
# @cmd Launch a shell in the VFOX_HOME or SDK directory
# @flag -p --plugin    Launch a shell in the plugin directory (default: false)
# @flag -h --help      show help
# @arg sdk[`_choice_sdk`]
cd() {
    :;
}
# }} vfox cd

# {{ vfox info
# @cmd Show plugin info
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
info() {
    :;
}
# }} vfox info

# {{ vfox available
# @cmd Show all available plugins
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
available() {
    :;
}
# }} vfox available

# {{ vfox update
# @cmd Update specified plugin, use --all/-a to update all installed plugins
# @flag -a --all     all plugins flag (default: false)
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
update() {
    :;
}
# }} vfox update

# {{ vfox remove
# @cmd Remove a plugin
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
remove() {
    :;
}
# }} vfox remove

# {{ vfox add
# @cmd Add a plugin or plugins
# @option -s --source <value>    plugin source
# @option --alias <value>        plugin alias
# @flag -h --help                show help
# @arg plugin[`_choice_plugin_cached`]
add() {
    :;
}
# }} vfox add

# {{ vfox install
# @cmd Install a version of the target SDK
# @alias i
# @flag -a --all     Install all SDK versions recorded in .tool-versions (default: false)
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
install() {
    :;
}
# }} vfox install

# {{ vfox current
# @cmd Show current version of the target SDK
# @alias c
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
current() {
    :;
}
# }} vfox current

# {{ vfox use
# @cmd Use a version of the target SDK
# @alias u
# @flag -g --global     Used with the global environment (default: false)
# @flag -p --project    Used with the current directory (default: false)
# @flag -s --session    Used with the current shell session (default: false)
# @flag -h --help       show help
# @arg sdk[`_choice_sdk`]
use() {
    :;
}
# }} vfox use

# {{ vfox list
# @cmd List all versions of the target SDK
# @alias ls
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
list() {
    :;
}
# }} vfox list

# {{ vfox uninstall
# @cmd Uninstall a version of the target SDK
# @alias un
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
uninstall() {
    :;
}
# }} vfox uninstall

# {{ vfox search
# @cmd Search a version of the target SDK
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
search() {
    :;
}
# }} vfox search

# {{ vfox env
# @cmd
# @option -s --shell <value>    shell name
# @flag -c --cleanup            cleanup old temp files (default: false)
# @flag -j --json               output json format (default: false)
# @flag -h --help               show help
# @arg sdk[`_choice_sdk`]
env() {
    :;
}
# }} vfox env

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_sdk() {
    if [[ "$ARGC_CWORD" != *'@'* ]]; then
        _choice_installed_plugin | _argc_util_transform nospace
    else
        plugin="${ARGC_CWORD%%@*}" 
        vfox list "$plugin" | _argc_util_strip_ansi | sed -n 's/^-> v/'"$plugin"'@/p' | sed 's/ <— /\t/'
    fi
}

_choice_installed_plugin() {
    vfox list | _argc_util_strip_ansi | sed -n 's/^\(├──\|└──\|└─┬\|├─┬\)//p'
}

_choice_plugin_cached() {
    _argc_util_cache 86400 _choice_plugin
}

_choice_plugin() {
    curl -fsSL https://version-fox.github.io/version-fox-plugins | \
    yq '.[] | .category as $x | .files[] | ($x + "/" + .name)'
}

command eval "$(argc --argc-eval "$0" "$@")"