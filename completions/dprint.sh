#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @arg file-patterns* <file patterns>

# {{ dprint init
# @cmd Initializes a configuration file in the current directory.
init() {
    :;
}
# }} dprint init

# {{ dprint fmt
# @cmd Formats the source files and writes the result to the file system.
# @option --excludes* <patterns>     List of file patterns or directories in quotes to exclude when formatting.
# @flag --allow-node-modules         Allows traversing node module directories (unstable - This flag will be renamed to be non-node specific in the future).
# @option --incremental[true|false] <incremental>  Only format files when they change.
# @option --stdin <extension/file-name/file-path>  Format stdin and output the result to stdout.
# @flag --diff                       Outputs a check-like diff of every formatted file.
# @flag --allow-no-files             Causes dprint to exit with exit code 0 when no files are found instead of exit code 14.
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
# @arg files*                        List of file patterns in quotes to format.
fmt() {
    :;
}
# }} dprint fmt

# {{ dprint check
# @cmd Checks for any files that haven't been formatted.
# @option --excludes* <patterns>     List of file patterns or directories in quotes to exclude when formatting.
# @flag --allow-node-modules         Allows traversing node module directories (unstable - This flag will be renamed to be non-node specific in the future).
# @option --incremental[true|false] <incremental>  Only format files when they change.
# @flag --allow-no-files             Causes dprint to exit with exit code 0 when no files are found instead of exit code 14.
# @flag --list-different             Only outputs file paths that aren't formatted and doesn't output diffs.
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
# @arg files*                        List of file patterns in quotes to format.
check() {
    :;
}
# }} dprint check

# {{ dprint config
# @cmd Functionality related to the configuration file.
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
config() {
    :;
}

# {{{ dprint config init
# @cmd Initializes a configuration file in the current directory.
config::init() {
    :;
}
# }}} dprint config init

# {{{ dprint config update
# @cmd Updates the plugins in the configuration file.
# @flag -y --yes                     Upgrade process plugins without prompting to confirm checksums.
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
config::update() {
    :;
}
# }}} dprint config update

# {{{ dprint config add
# @cmd Adds a plugin to the configuration file.
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
# @arg url-or-plugin-name
config::add() {
    :;
}
# }}} dprint config add
# }} dprint config

# {{ dprint output-file-paths
# @cmd Prints the resolved file paths for the plugins based on the args and configuration.
# @option --excludes* <patterns>     List of file patterns or directories in quotes to exclude when formatting.
# @flag --allow-node-modules         Allows traversing node module directories (unstable - This flag will be renamed to be non-node specific in the future).
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
# @arg files*                        List of file patterns in quotes to format.
output-file-paths() {
    :;
}
# }} dprint output-file-paths

# {{ dprint output-resolved-config
# @cmd Prints the resolved configuration for the plugins based on the args and configuration.
output-resolved-config() {
    :;
}
# }} dprint output-resolved-config

# {{ dprint output-format-times
# @cmd Prints the amount of time it takes to format each file.
# @option --excludes* <patterns>     List of file patterns or directories in quotes to exclude when formatting.
# @flag --allow-node-modules         Allows traversing node module directories (unstable - This flag will be renamed to be non-node specific in the future).
# @flag --allow-no-files             Causes dprint to exit with exit code 0 when no files are found instead of exit code 14.
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
# @arg files*                        List of file patterns in quotes to format.
output-format-times() {
    :;
}
# }} dprint output-format-times

# {{ dprint clear-cache
# @cmd Deletes the plugin cache directory.
clear-cache() {
    :;
}
# }} dprint clear-cache

# {{ dprint upgrade
# @cmd Upgrades the dprint executable.
upgrade() {
    :;
}
# }} dprint upgrade

# {{ dprint completions
# @cmd Generate shell completions script for dprint
# @option -c --config <config>       Path or url to JSON configuration file.
# @option --plugins* <urls/files>    List of urls or file paths of plugins to use.
# @option -L --log-level[debug|info|warn|error|silent] <log-level>  Set log level [default: info]
# @flag -h --help                    Print help
# @arg shell![bash|elvish|fish|powershell|zsh]
completions() {
    :;
}
# }} dprint completions

# {{ dprint license
# @cmd Outputs the software license.
license() {
    :;
}
# }} dprint license

command eval "$(argc --argc-eval "$0" "$@")"