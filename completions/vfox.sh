#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug      show debug information (default: false)
# @flag -h --help    show help
# @flag -v           print version (default: false)
# @flag -V           print version (default: false)
# @flag --version    print version (default: false)
# @arg sdk[`_choice_sdk`]

# {{ vfox info
# @cmd show sdk info
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
info() {
    :;
}
# }} vfox info

# {{ vfox install
# @cmd install a version of sdk
# @alias i
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
install() {
    :;
}
# }} vfox install

# {{ vfox current
# @cmd show current version of the targeted sdk
# @alias c
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
current() {
    :;
}
# }} vfox current

# {{ vfox use
# @cmd use a version of sdk
# @alias u
# @flag -g --global     used with the global environment (default: false)
# @flag -p --project    used with the current directory (default: false)
# @flag -s --session    used with the current shell session (default: false)
# @flag -h --help       show help
# @arg sdk[`_choice_sdk`]
use() {
    :;
}
# }} vfox use

# {{ vfox list
# @cmd list all versions of the target sdk
# @alias ls
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
list() {
    :;
}
# }} vfox list

# {{ vfox uninstall
# @cmd uninstall a version of sdk
# @alias un
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
uninstall() {
    :;
}
# }} vfox uninstall

# {{ vfox available
# @cmd show available plugins
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
available() {
    :;
}
# }} vfox available

# {{ vfox search
# @cmd search a version of sdk
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
search() {
    :;
}
# }} vfox search

# {{ vfox update
# @cmd update specified plug-ins
# @flag -h --help    show help
# @arg plugin[`_choice_installed_plugin`]
update() {
    :;
}
# }} vfox update

# {{ vfox remove
# @cmd remove a plugin of sdk
# @flag -h --help    show help
# @arg sdk[`_choice_sdk`]
remove() {
    :;
}
# }} vfox remove

# {{ vfox add
# @cmd add a plugin of sdk
# @option -s --source <value>    plugin source
# @option --alias <value>        plugin alias
# @flag -h --help                show help
# @arg plugin[`_choice_plugin_cached`]
add() {
    :;
}
# }} vfox add

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_plugin_cached() {
    _argc_util_cache 86400 _choice_plugin

}

_choice_plugin() {
    curl -fsSL https://version-fox.github.io/version-fox-plugins | \
    yq '.[] | .category as $x | .files[] | ($x + "/" + .name)'
}

_choice_installed_plugin() {
    vfox list | _argc_util_strip_ansi | sed -n 's/^\(├──\|└──\|└─┬\|├─┬\)//p'
}

_choice_sdk() {
    if [[ "$ARGC_CWORD" != *'@'* ]]; then
        _choice_installed_plugin | _argc_util_transform nospace
    else
        plugin="${ARGC_CWORD%%@*}" 
        vfox list "$plugin" | _argc_util_strip_ansi | sed -n 's/^-> v/'"$plugin"'@/p' | sed 's/ <— /\t/'
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"