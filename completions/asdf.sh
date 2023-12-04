#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ asdf plugin
# @cmd Plugin management
plugin() {
    :;
}

# {{{ asdf plugin add
# @cmd Add a plugin from the plugin repo OR, add a Git repo as a plugin by specifying the name and repo url
# @arg name![`_choice_plugin_cached`]
# @arg git-url
plugin::add() {
    :;
}
# }}} asdf plugin add

# {{{ asdf plugin list
# @cmd List installed plugins.
# @flag --urls    Show git urls
# @flag --refs    Show git refs
plugin::list() {
    :;
}
# }}} asdf plugin list

# {{{ asdf plugin list-all
# @cmd List installed plugins.
# @flag --urls    Show git urls
# @flag --refs    Show git refs
plugin::list-all() {
    :;
}
# }}} asdf plugin list-all

# {{{ asdf plugin remove
# @cmd Remove plugin and package versions
# @arg name![`_choice_installed_plugin`]
plugin::remove() {
    :;
}
# }}} asdf plugin remove

# {{{ asdf plugin update
# @cmd Update a plugin to latest commit on default branch or a particular git-ref
# @flag --all    Update all plugins
# @arg name![`_choice_installed_plugin`]
# @arg git-ref
plugin::update() {
    :;
}
# }}} asdf plugin update
# }} asdf plugin

# {{ asdf current
# @cmd Display current version set or being
# @arg name[`_choice_installed_plugin`]
current() {
    :;
}
# }} asdf current

# {{ asdf global
# @cmd Set the package global version
# @arg name![`_choice_installed_plugin`]
# @arg version![`_choice_installed_version`]
global() {
    :;
}
# }} asdf global

# {{ asdf install
# @cmd Install a package
# @arg name![`_choice_installed_plugin`]
# @arg version[`_choice_version`]
install() {
    :;
}
# }} asdf install

# {{ asdf latest
# @cmd Show latest stable version of a package
# @flag --all    Show all packages
# @arg name[`_choice_installed_plugin`]
# @arg version[`_choice_version`]
latest() {
    :;
}
# }} asdf latest

# {{ asdf list
# @cmd List installed versions of a package
# @arg name!
list() {
    :;
}
# }} asdf list

# {{ asdf list-all
# @cmd List all versions of a package
# @arg name!
list-all() {
    :;
}
# }} asdf list-all

# {{ asdf local
# @cmd Set the package local version to the latest provided version
# @arg name![`_choice_installed_plugin`]
# @arg version[`_choice_installed_version`]
local() {
    :;
}
# }} asdf local

# {{ asdf shell
# @cmd Set the package version to `ASDF_${LANG}_VERSION` in the current shell
# @arg name![`_choice_installed_plugin`]
# @arg version[`_choice_installed_version`]
shell() {
    :;
}
# }} asdf shell

# {{ asdf uninstall
# @cmd Remove a specific version of a package
# @arg name![`_choice_installed_plugin`]
# @arg version![`_choice_installed_version`]
uninstall() {
    :;
}
# }} asdf uninstall

# {{ asdf where
# @cmd Display install path for an installed or current version
# @arg name![`_choice_installed_plugin`]
# @arg version[`_choice_installed_version`]
where() {
    :;
}
# }} asdf where

# {{ asdf which
# @cmd Display the path to an executable
# @arg command![`_choice_shim`]
which() {
    :;
}
# }} asdf which

# {{ asdf exec
# @cmd Executes the command shim for current version
# @arg command![`_choice_shim`]
# @arg args~[`_module_os_command_args`]
exec() {
    :;
}
# }} asdf exec

# {{ asdf info
# @cmd Print OS, Shell and ASDF debug information.
info() {
    :;
}
# }} asdf info

# {{ asdf reshim
# @cmd Recreate shims for version of a package
# @arg name![`_choice_installed_plugin`]
# @arg version![`_choice_installed_version`]
reshim() {
    :;
}
# }} asdf reshim

# {{ asdf shim-versions
# @cmd List the plugins and versions that provide a command
# @arg command![`_choice_shim`]
shim-versions() {
    :;
}
# }} asdf shim-versions

# {{ asdf update
# @cmd Update asdf to the latest stable release
# @flag --head    Update on master branch
update() {
    :;
}
# }} asdf update

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_plugin_cached() {
    _argc_util_cache 86400 _choice_plugin
}

_choice_installed_plugin() {
    asdf plugin list
}

_choice_installed_version() {
    asdf list "$argc_name" | sed 's/^\s*\*\?//'
}

_choice_version() {
    asdf list-all "$argc_name"
    echo latest
}

_choice_shim() {
    data_dir=${ASDF_DATA_DIR:-"$HOME/.asdf"}
    ls -1 $data_dir/shims/
}

_choice_plugin() {
    asdf plugin list-all | sed 's/\s\+/\t/'
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"