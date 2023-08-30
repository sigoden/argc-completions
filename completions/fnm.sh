#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag -V --version                               Print version

# {{ fnm list-remote
# @cmd List all remote Node.js versions [aliases: ls-remote]
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
list-remote() {
    :;
}
# }} fnm list-remote

# {{ fnm list
# @cmd List all locally installed Node.js versions [aliases: ls]
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
list() {
    :;
}
# }} fnm list

# {{ fnm install
# @cmd Install a new Node.js version
# @flag --lts                                      Install latest LTS
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @flag --latest                                   Install latest version
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg version[`_choice_available_version_cached`]  A version string.
install() {
    :;
}
# }} fnm install

# {{ fnm use
# @cmd Change Node.js version
# @flag --install-if-missing                       Install the version if it isn't installed yet
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @flag --silent-if-unchanged                      Don't output a message identifying the version being used if it will not change due to execution of this command
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg version[`_choice_version`]
use() {
    :;
}
# }} fnm use

# {{ fnm env
# @cmd Print and set up required environment variables for fnm
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --shell[bash|zsh|fish|power-shell]       The shell syntax to use.
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @flag --json                                     Print JSON instead of shell commands
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @flag --use-on-cd                                Print the script to change Node versions every directory change
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
env() {
    :;
}
# }} fnm env

# {{ fnm completions
# @cmd Print shell completions to stdout
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --shell[bash|zsh|fish|power-shell]       The shell syntax to use.
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
completions() {
    :;
}
# }} fnm completions

# {{ fnm alias
# @cmd Alias a version to a common name
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg to_version![`_choice_version`]
# @arg name!
alias() {
    :;
}
# }} fnm alias

# {{ fnm unalias
# @cmd Remove an alias definition
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg requested_alias!
unalias() {
    :;
}
# }} fnm unalias

# {{ fnm default
# @cmd Set a version as the default version
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg version![`_choice_version`]
default() {
    :;
}
# }} fnm default

# {{ fnm current
# @cmd Print the current Node.js version
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
current() {
    :;
}
# }} fnm current

# {{ fnm exec
# @cmd Run a command within fnm context
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --using <VERSION>                        Either an explicit version, or a filename with the version written in it
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg arguments*                                  The command to run
exec() {
    :;
}
# }} fnm exec

# {{ fnm uninstall
# @cmd Uninstall a Node.js version
# @option --node-dist-mirror <NODE_DIST_MIRROR>    https://nodejs.org/dist/ mirror
# @option --fnm-dir <BASE_DIR>                     The root directory of fnm installations
# @option --log-level[quiet|error|info] <LOG_LEVEL>  The log level of fnm commands
# @option --arch                                   Override the architecture of the installed Node binary.
# @option --version-file-strategy <VERSION_FILE_STRATEGY>  A strategy for how to resolve the Node version.
# @flag --corepack-enabled                         Enable corepack support for each new installation.
# @flag --resolve-engines                          Resolve `engines.node` field in `package.json` whenever a `.node-version` or `.nvmrc` file is not present.
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg version[`_choice_version`]
uninstall() {
    :;
}
# }} fnm uninstall

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_available_version_cached() {
    _argc_util_cache 86400 _choice_available_version
}

_choice_version() {
    fnm list | sed -n 's/^\* \(\S\+\).*/\1/p'
}

_choice_available_version() {
    fnm list-remote | sed -n 's/^\(\S\+\).*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"