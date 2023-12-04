_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# plugin - Plugin management
## add <name> [<git-url>] - Add a plugin from the plugin repo OR, add a Git repo as a plugin by specifying the name and repo url
## list - List installed plugins.
    --urls  Show git urls
    --refs  Show git refs
## list-all - List installed plugins.
    --urls  Show git urls
    --refs  Show git refs
## remove <name> - Remove plugin and package versions
## update <name> [<git-ref>] - Update a plugin to latest commit on default branch or a particular git-ref
    --all       Update all plugins
# current [name] - Display current version set or being
# global <name> <version> - Set the package global version
# help <name> [<version>] - Output documentation for plugin and tool
# install <name> [<version>] - Install a package
# latest [name] [<version>] - Show latest stable version of a package
    --all       Show all packages
# list <name> - List installed versions of a package
# list-all <name> - List all versions of a package
# local <name> [<version>] - Set the package local version to the latest provided version
# shell <name> [<version>] - Set the package version to `ASDF_${LANG}_VERSION` in the current shell
# uninstall <name> <version> - Remove a specific version of a package
# where <name> [<version>] - Display install path for an installed or current version
# which <command> - Display the path to an executable
# exec <command> [args...] - Executes the command shim for current version
# info - Print OS, Shell and ASDF debug information.
# reshim <name> <version> - Recreate shims for version of a package
# shim-versions <command> - List the plugins and versions that provide a command
# update - Update asdf to the latest stable release
    --head      Update on master branch
EOF
}

_patch_table() {

    if [[ "$*" == "asdf plugin add" ]]; then
        _patch_table_edit_arguments \
            'name;[`_choice_plugin_cached`]' \

    elif [[ "$*" == "asdf plugin list" ]]; then
        _patch_table_edit_arguments \
            'arg;[all]' \

    elif [[ "$*" == "asdf plugin remove" ]] \
      || [[ "$*" == "asdf plugin update" ]] \
    ; then
        _patch_table_edit_arguments \
            'name;[`_choice_installed_plugin`]' \

    elif [[ "$*" == "asdf current" ]] \
      || [[ "$*" == "asdf global" ]] \
      || [[ "$*" == "asdf local" ]] \
      || [[ "$*" == "asdf shell" ]] \
      || [[ "$*" == "asdf uninstall" ]] \
      || [[ "$*" == "asdf where" ]] \
      || [[ "$*" == "asdf reshim" ]] \
      || [[ "$*" == "asdf help" ]] \
    ; then
        _patch_table_edit_arguments \
            'name;[`_choice_installed_plugin`]' \
            'version;[`_choice_installed_version`]' \

    elif [[ "$*" == "asdf install" ]] \
      || [[ "$*" == "asdf latest" ]] \
    ; then
        _patch_table_edit_arguments \
            'name;[`_choice_installed_plugin`]' \
            'version;[`_choice_version`]' \

    elif [[ "$*" == "asdf which" ]] \
      || [[ "$*" == "asdf shim-versions" ]] \
    ; then
        _patch_table_edit_arguments \
            'command;[`_choice_shim`]' \

    elif [[ "$*" == "asdf exec" ]]; then
        _patch_table_edit_arguments \
            'command;[`_choice_shim`]' \
            'args;~[`_module_os_command_args`]' \

    else
        cat
    fi
}

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
