#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @flag -V --version     Print version

# {{ rtx activate
# @cmd Initializes rtx in the current shell session
# @flag --status                             Show "rtx: <PLUGIN>@<VERSION>" message when changing directories
# @flag -q --quiet                           Suppress non-error messages
# @flag -v --verbose*                        Show extra output (use -vv for even more)
# @flag -y --yes                             Answer yes to all prompts
# @flag -h --help                            Print help (see a summary with '-h')
# @arg shell_type[bash|fish|nu|xonsh|zsh]    Shell type to generate the script for
activate() {
    :;
}
# }} rtx activate

# {{ rtx alias
# @cmd Manage aliases [aliases: a]
# @flag -q --quiet       Suppress non-error messages
# @option -p --plugin    filter aliases by plugin
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag --no-header      Don't show table header
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help
alias() {
    :;
}

# {{{ rtx alias get
# @cmd Show an alias for a plugin
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin![`_choice_plugin`]    The plugin to show the alias for
# @arg alias![`_choice_alias`]      The alias to show
alias::get() {
    :;
}
# }}} rtx alias get

# {{{ rtx alias ls
# @cmd List aliases Shows the aliases that can be specified.
# @flag --no-header                Don't show table header
# @flag -q --quiet                 Suppress non-error messages
# @flag -v --verbose*              Show extra output (use -vv for even more)
# @flag -y --yes                   Answer yes to all prompts
# @flag -h --help                  Print help (see a summary with '-h')
# @arg plugin[`_choice_plugin`]    Show aliases for <PLUGIN>
alias::ls() {
    :;
}
# }}} rtx alias ls

# {{{ rtx alias set
# @cmd Add/update an alias for a plugin [aliases: add, create]
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin![`_choice_plugin`]    The plugin to set the alias for
# @arg alias![`_choice_alias`]      The alias to set
# @arg value!                       The value to set the alias to
alias::set() {
    :;
}
# }}} rtx alias set

# {{{ rtx alias unset
# @cmd Clears an alias for a plugin [aliases: rm, remove, delete, del]
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin![`_choice_plugin`]    The plugin to remove the alias from
# @arg alias![`_choice_alias`]      The alias to remove
alias::unset() {
    :;
}
# }}} rtx alias unset
# }} rtx alias

# {{ rtx bin-paths
# @cmd List all the active runtime bin paths
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help
bin-paths() {
    :;
}
# }} rtx bin-paths

# {{ rtx cache
# @cmd Manage the rtx cache
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
cache() {
    :;
}

# {{{ rtx cache clear
# @cmd Deletes all cache files in rtx [aliases: c]
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help
# @arg plugin*[`_choice_plugin`]    Plugin(s) to clear cache for e.g.: node, python
cache::clear() {
    :;
}
# }}} rtx cache clear
# }} rtx cache

# {{ rtx completion
# @cmd Generate shell completions
# @flag -q --quiet             Suppress non-error messages
# @flag -v --verbose*          Show extra output (use -vv for even more)
# @flag -y --yes               Answer yes to all prompts
# @flag -h --help              Print help (see a summary with '-h')
# @arg shell[bash|fish|zsh]    Shell type to generate completions for
completion() {
    :;
}
# }} rtx completion

# {{ rtx config
# @cmd [experimental] Manage config files [aliases: cfg]
# @flag --no-header      Do not print table header
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help
config() {
    :;
}

# {{{ rtx config ls
# @cmd [experimental] List config files currently in use
# @flag --no-header      Do not print table header
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
config::ls() {
    :;
}
# }}} rtx config ls

# {{{ rtx config generate
# @cmd [experimental] Generate an .rtx.toml file [aliases: g]
# @option -o --output    Output to file instead of stdout
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
config::generate() {
    :;
}
# }}} rtx config generate
# }} rtx config

# {{ rtx current
# @cmd Shows current active and installed runtime versions
# @flag -q --quiet                 Suppress non-error messages
# @flag -v --verbose*              Show extra output (use -vv for even more)
# @flag -y --yes                   Answer yes to all prompts
# @flag -h --help                  Print help (see a summary with '-h')
# @arg plugin[`_choice_plugin`]    Plugin to show versions of e.g.: ruby, node
current() {
    :;
}
# }} rtx current

# {{ rtx deactivate
# @cmd Disable rtx for current shell session
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
deactivate() {
    :;
}
# }} rtx deactivate

# {{ rtx direnv
# @cmd Output direnv function to use rtx inside direnv
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
direnv() {
    :;
}

# {{{ rtx direnv activate
# @cmd Output direnv function to use rtx inside direnv
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
direnv::activate() {
    :;
}
# }}} rtx direnv activate
# }} rtx direnv

# {{ rtx doctor
# @cmd Check rtx installation for possible problems.
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
doctor() {
    :;
}
# }} rtx doctor

# {{ rtx env
# @cmd Exports env vars to activate rtx a single time [aliases: e]
# @option -s --shell[bash|fish|nu|xonsh|zsh]    Shell type to generate environment variables for
# @flag -J --json                               Output in JSON format
# @flag -q --quiet                              Suppress non-error messages
# @flag -v --verbose*                           Show extra output (use -vv for even more)
# @flag -y --yes                                Answer yes to all prompts
# @flag -h --help                               Print help (see a summary with '-h')
# @arg tool-version*[`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to use
env() {
    :;
}
# }} rtx env

# {{ rtx env-vars
# @cmd Manage environment variables
# @option --file                The TOML file to update
# @option --remove <ENV_VAR>    Remove the environment variable from config file
# @flag -q --quiet              Suppress non-error messages
# @flag -v --verbose*           Show extra output (use -vv for even more)
# @flag -y --yes                Answer yes to all prompts
# @flag -h --help               Print help (see a summary with '-h')
# @arg env_vars*                Environment variable(s) to set e.g.: NODE_ENV=production
env-vars() {
    :;
}
# }} rtx env-vars

# {{ rtx exec
# @cmd Execute a command with tool(s) set [aliases: x]
# @option -c --command <C>    Command string to execute
# @option -C --cd             Change to this directory before executing the command
# @option -j --jobs           Number of jobs to run in parallel [default: 4]
# @flag -q --quiet            Suppress non-error messages
# @flag --raw                 Directly pipe stdin/stdout/stderr from plugin to user Sets --jobs=1
# @flag -v --verbose*         Show extra output (use -vv for even more)
# @flag -y --yes              Answer yes to all prompts
# @flag -h --help             Print help (see a summary with '-h')
# @arg tool-version*[`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to start e.g.: node@20 python@3.10
# @arg command*               Command string to execute (same as --command)
exec() {
    :;
}
# }} rtx exec

# {{ rtx implode
# @cmd Removes rtx CLI and all related data
# @flag --config         Also remove config directory
# @flag -n --dry-run     List directories that would be removed without actually removing them
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
implode() {
    :;
}
# }} rtx implode

# {{ rtx install
# @cmd Install a tool version [aliases: i]
# @flag -f --force       Force reinstall even if already installed
# @option -j --jobs      Number of jobs to run in parallel [default: 4]
# @flag --raw            Directly pipe stdin/stdout/stderr from plugin to user Sets --jobs=1
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show installation output
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg tool-version*[`_choice_all_tools`] <TOOL@VERSION>  Tool(s) to install e.g.: node@20
install() {
    :;
}
# }} rtx install

# {{ rtx latest
# @cmd Gets the latest available version for a plugin
# @flag -i --installed    Show latest installed instead of available version
# @flag -q --quiet        Suppress non-error messages
# @flag -v --verbose*     Show extra output (use -vv for even more)
# @flag -y --yes          Answer yes to all prompts
# @flag -h --help         Print help (see a summary with '-h')
# @arg tool-version![`_choice_tool_version`] <TOOL@VERSION>  Tool to get the latest version of
latest() {
    :;
}
# }} rtx latest

# {{ rtx link
# @cmd Symlinks a tool version into rtx [aliases: ln]
# @flag -f --force       Overwrite an existing tool version if it exists
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg tool-version![`_choice_tool_version`] <TOOL@VERSION>  Tool name and version to create a symlink for
# @arg path!             The local path to the tool version e.g.: ~/.nvm/versions/node/v20.0.0
link() {
    :;
}
# }} rtx link

# {{ rtx ls
# @cmd List installed and/or currently selected tool versions [aliases: list]
# @flag -c --current                Only show tool versions currently specified in a .tool-versions/.rtx.toml
# @flag -g --global                 Only show tool versions currently specified in a the global .tool-versions/.rtx.toml
# @flag -i --installed              Only show tool versions that are installed Hides missing ones defined in .tool-versions/.rtx.toml but not yet installed
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -J --json                   Output in json format
# @flag -y --yes                    Answer yes to all prompts
# @flag -m --missing                Display missing tool versions
# @option --prefix                  Display versions matching this prefix
# @flag --no-header                 Don't display headers
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin*[`_choice_plugin`]    Only show tool versions from [PLUGIN]
ls() {
    :;
}
# }} rtx ls

# {{ rtx ls-remote
# @cmd List runtime versions available for install
# @flag --all                      Show all installed plugins and versions
# @flag -q --quiet                 Suppress non-error messages
# @flag -v --verbose*              Show extra output (use -vv for even more)
# @flag -y --yes                   Answer yes to all prompts
# @flag -h --help                  Print help (see a summary with '-h')
# @arg tool-version[`_choice_tool_version`] <TOOL@VERSION>  Plugin to get versions for
# @arg prefix[`_choice_plugin`]    The version prefix to use when querying the latest version same as the first argument after the "@"
ls-remote() {
    :;
}
# }} rtx ls-remote

# {{ rtx outdated
# @cmd Shows outdated tool versions
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg tool-version*[`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to show outdated versions for e.g.: node@20 python@3.10 If not specified, all tools in global and local configs will be shown
outdated() {
    :;
}
# }} rtx outdated

# {{ rtx plugins
# @cmd Manage plugins [aliases: p]
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -c --core        The built-in plugins only Normally these are not shown
# @flag --user           List installed plugins
# @flag -u --urls        Show the git url for each plugin e.g.: https://github.com/asdf-vm/asdf-node.git
# @flag -h --help        Print help (see a summary with '-h')
plugins() {
    :;
}

# {{{ rtx plugins install
# @cmd Install a plugin [aliases: i, a, add]
# @flag -f --force       Reinstall even if plugin exists
# @flag -a --all         Install all missing plugins This will only install plugins that have matching shorthands.
# @flag -v --verbose*    Show installation output
# @flag -q --quiet       Suppress non-error messages
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg new_plugin        The name of the plugin to install e.g.: node, ruby Can specify multiple plugins: `rtx plugins install node ruby python`
# @arg git_url           The git url of the plugin
plugins::install() {
    :;
}
# }}} rtx plugins install

# {{{ rtx plugins link
# @cmd Symlinks a plugin into rtx [aliases: ln]
# @flag -f --force         Overwrite existing plugin
# @flag -q --quiet         Suppress non-error messages
# @flag -v --verbose*      Show extra output (use -vv for even more)
# @flag -y --yes           Answer yes to all prompts
# @flag -h --help          Print help (see a summary with '-h')
# @arg name![node|ruby]    The name of the plugin e.g.: node, ruby
# @arg path                The local path to the plugin e.g.: ./rtx-node
plugins::link() {
    :;
}
# }}} rtx plugins link

# {{{ rtx plugins ls
# @cmd List installed plugins [aliases: list]
# @flag -c --core        The built-in plugins only Normally these are not shown
# @flag --user           List installed plugins
# @flag -q --quiet       Suppress non-error messages
# @flag -u --urls        Show the git url for each plugin e.g.: https://github.com/asdf-vm/asdf-node.git
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
plugins::ls() {
    :;
}
# }}} rtx plugins ls

# {{{ rtx plugins ls-remote
# @cmd List all available remote plugins [aliases: list-remote, list-all]
# @flag -u --urls        Show the git url for each plugin e.g.: https://github.com/rtx-plugins/rtx-nodejs.git
# @flag --only-names     Only show the name of each plugin by default it will show a "*" next to installed plugins
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
plugins::ls-remote() {
    :;
}
# }}} rtx plugins ls-remote

# {{{ rtx plugins uninstall
# @cmd Removes a plugin [aliases: remove, rm]
# @flag -p --purge                  Also remove the plugin's installs, downloads, and cache
# @flag -a --all                    Remove all plugins
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin*[`_choice_plugin`]    Plugin(s) to remove
plugins::uninstall() {
    :;
}
# }}} rtx plugins uninstall

# {{{ rtx plugins update
# @cmd Updates a plugin to the latest version [aliases: upgrade]
# @option -j --jobs                 Number of jobs to run in parallel Default: 4
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin*[`_choice_plugin`]    Plugin(s) to update
plugins::update() {
    :;
}
# }}} rtx plugins update
# }} rtx plugins

# {{ rtx prune
# @cmd Delete unused versions of tools
# @flag -n --dry-run                Do not actually delete anything
# @flag -q --quiet                  Suppress non-error messages
# @flag -v --verbose*               Show extra output (use -vv for even more)
# @flag -y --yes                    Answer yes to all prompts
# @flag -h --help                   Print help (see a summary with '-h')
# @arg plugin*[`_choice_plugin`]    Prune only versions from these plugins
prune() {
    :;
}
# }} rtx prune

# {{ rtx reshim
# @cmd rebuilds the shim farm
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
reshim() {
    :;
}
# }} rtx reshim

# {{ rtx run
# @cmd [experimental] Run a task [aliases: r]
# @option -C --cd                     Change to this directory before executing the command
# @flag -n --dry-run                  Don't actually run the task(s), just print them in order of execution
# @flag -f --force                    Force the task to run even if outputs are up to date
# @flag -p --prefix                   Print stdout/stderr by line, prefixed with the task's label Defaults to true if --jobs > 1 Configure with `task_output` config or `RTX_TASK_OUTPUT` env var
# @flag -q --quiet                    Suppress non-error messages
# @flag -i --interleave               Print directly to stdout/stderr instead of by line Defaults to true if --jobs == 1 Configure with `task_output` config or `RTX_TASK_OUTPUT` env var
# @flag -v --verbose*                 Show extra output (use -vv for even more)
# @option -t --tool <TOOL@VERSION>    Tool(s) to also add e.g.: node@20 python@3.10
# @flag -y --yes                      Answer yes to all prompts
# @option -j --jobs                   Number of tasks to run in parallel [default: 4] Configure with `jobs` config or `RTX_JOBS` env var
# @flag -r --raw                      Read/write directly to stdin/stdout/stderr instead of by line Configure with `raw` config or `RTX_RAW` env var
# @flag -h --help                     Print help (see a summary with '-h')
# @arg task[`_choice_task`]           Task to run Can specify multiple tasks by separating with `:::` e.g.: rtx run task1 arg1 arg2 ::: task2 arg1 arg2
# @arg args*                          Arguments to pass to the task.
run() {
    :;
}
# }} rtx run

# {{ rtx self-update
# @cmd Updates rtx itself
# @flag -f --force       Update even if already up to date
# @flag --no-plugins     Disable auto-updating plugins
# @flag -y --yes         Skip confirmation prompt
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -h --help        Print help (see a summary with '-h')
# @arg version           Update to a specific version
self-update() {
    :;
}
# }} rtx self-update

# {{ rtx settings
# @cmd Manage settings
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help
settings() {
    :;
}

# {{{ rtx settings get
# @cmd Show a current setting
# @flag -q --quiet                    Suppress non-error messages
# @flag -v --verbose*                 Show extra output (use -vv for even more)
# @flag -y --yes                      Answer yes to all prompts
# @flag -h --help                     Print help (see a summary with '-h')
# @arg setting![`_choice_setting`]    The setting to show
settings::get() {
    :;
}
# }}} rtx settings get

# {{{ rtx settings ls
# @cmd Show current settings [aliases: list]
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
settings::ls() {
    :;
}
# }}} rtx settings ls

# {{{ rtx settings set
# @cmd Add/update a setting [aliases: add, create]
# @flag -q --quiet                    Suppress non-error messages
# @flag -v --verbose*                 Show extra output (use -vv for even more)
# @flag -y --yes                      Answer yes to all prompts
# @flag -h --help                     Print help (see a summary with '-h')
# @arg setting![`_choice_setting`]    The setting to set
# @arg value!                         The value to set
settings::set() {
    :;
}
# }}} rtx settings set

# {{{ rtx settings unset
# @cmd Clears a setting [aliases: rm, remove, delete, del]
# @flag -q --quiet                    Suppress non-error messages
# @flag -v --verbose*                 Show extra output (use -vv for even more)
# @flag -y --yes                      Answer yes to all prompts
# @flag -h --help                     Print help (see a summary with '-h')
# @arg setting![`_choice_setting`]    The setting to remove
settings::unset() {
    :;
}
# }}} rtx settings unset
# }} rtx settings

# {{ rtx shell
# @cmd Sets a tool version for the current shell session [aliases: sh]
# @option -j --jobs      Number of jobs to run in parallel [default: 4]
# @flag --raw            Directly pipe stdin/stdout/stderr from plugin to user Sets --jobs=1
# @flag -u --unset       Removes a previously set version
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg tool-version*[`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to use
shell() {
    :;
}
# }} rtx shell

# {{ rtx sync
# @cmd Add tool versions from external tools to rtx
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help
sync() {
    :;
}

# {{{ rtx sync node
# @cmd Symlinks all tool versions from an external tool into rtx
# @flag --brew           Get tool versions from Homebrew
# @flag --nvm            Get tool versions from nvm
# @flag --nodenv         Get tool versions from nodenv
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
sync::node() {
    :;
}
# }}} rtx sync node

# {{{ rtx sync python
# @cmd Symlinks all tool versions from an external tool into rtx
# @flag --pyenv          Get tool versions from pyenv
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
sync::python() {
    :;
}
# }}} rtx sync python
# }} rtx sync

# {{ rtx task
# @cmd [experimental] Manage tasks [aliases: t]
# @flag --no-header      Do not print table header
# @flag -q --quiet       Suppress non-error messages
# @flag --hidden         Show hidden tasks
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
task() {
    :;
}

# {{{ rtx task edit
# @cmd [experimental] Edit a task with $EDITOR
# @flag -p --path               Display the path to the task instead of editing it
# @flag -q --quiet              Suppress non-error messages
# @flag -v --verbose*           Show extra output (use -vv for even more)
# @flag -y --yes                Answer yes to all prompts
# @flag -h --help               Print help (see a summary with '-h')
# @arg task![`_choice_task`]    Task to edit
task::edit() {
    :;
}
# }}} rtx task edit

# {{{ rtx task ls
# @cmd [experimental] List available tasks to execute These may be included from the config file or from the project's .rtx/tasks directory rtx will merge all tasks from all parent directories into this list.
# @flag --no-header      Do not print table header
# @flag --hidden         Show hidden tasks
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
task::ls() {
    :;
}
# }}} rtx task ls

# {{{ rtx task run
# @cmd [experimental] Run a task [aliases: r]
# @option -C --cd                     Change to this directory before executing the command
# @flag -n --dry-run                  Don't actually run the task(s), just print them in order of execution
# @flag -f --force                    Force the task to run even if outputs are up to date
# @flag -p --prefix                   Print stdout/stderr by line, prefixed with the task's label Defaults to true if --jobs > 1 Configure with `task_output` config or `RTX_TASK_OUTPUT` env var
# @flag -q --quiet                    Suppress non-error messages
# @flag -i --interleave               Print directly to stdout/stderr instead of by line Defaults to true if --jobs == 1 Configure with `task_output` config or `RTX_TASK_OUTPUT` env var
# @flag -v --verbose*                 Show extra output (use -vv for even more)
# @option -t --tool <TOOL@VERSION>    Tool(s) to also add e.g.: node@20 python@3.10
# @flag -y --yes                      Answer yes to all prompts
# @option -j --jobs                   Number of tasks to run in parallel [default: 4] Configure with `jobs` config or `RTX_JOBS` env var
# @flag -r --raw                      Read/write directly to stdin/stdout/stderr instead of by line Configure with `raw` config or `RTX_RAW` env var
# @flag -h --help                     Print help (see a summary with '-h')
# @arg task[`_choice_task`]           Task to run Can specify multiple tasks by separating with `:::` e.g.: rtx run task1 arg1 arg2 ::: task2 arg1 arg2
# @arg args*                          Arguments to pass to the task.
task::run() {
    :;
}
# }}} rtx task run
# }} rtx task

# {{ rtx trust
# @cmd Marks a config file as trusted
# @flag -a --all         Trust all config files in the current directory and its parents
# @flag --untrust        No longer trust this config
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg config_file       The config file to trust
trust() {
    :;
}
# }} rtx trust

# {{ rtx uninstall
# @cmd Removes runtime versions [aliases: remove, rm]
# @flag -a --all         Delete all installed versions
# @flag -n --dry-run     Do not actually delete anything
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg tool-version*[`_choice_installed_tool_version`] <TOOL@VERSION>  Tool(s) to remove
uninstall() {
    :;
}
# }} rtx uninstall

# {{ rtx upgrade
# @cmd Upgrades outdated tool versions [aliases: up]
# @flag -n --dry-run        Just print what would be done, don't actually do it
# @option -j --jobs         Number of jobs to run in parallel [default: 4] [env: RTX_JOBS=]
# @flag -i --interactive    Display multiselect menu to choose which tools to upgrade
# @flag -q --quiet          Suppress non-error messages
# @flag --raw               Directly pipe stdin/stdout/stderr from plugin to user Sets --jobs=1
# @flag -v --verbose*       Show extra output (use -vv for even more)
# @flag -y --yes            Answer yes to all prompts
# @flag -h --help           Print help
# @arg tool-version*[`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to upgrade e.g.: node@20 python@3.10 If not specified, all current tools will be upgraded
upgrade() {
    :;
}
# }} rtx upgrade

# {{ rtx use
# @cmd Change the active version of a tool locally or globally.
# @flag -f --force           Force reinstall even if already installed
# @flag --fuzzy              Save fuzzy version to config file e.g.: `rtx use --fuzzy node@20` will save 20 as the version this is the default behavior unless RTX_ASDF_COMPAT=1
# @flag -g --global          Use the global config file (~/.config/rtx/config.toml) instead of the local one
# @option -e --env           Modify an environment-specific config file like .rtx.<env>.toml
# @flag -q --quiet           Suppress non-error messages
# @option -j --jobs          Number of jobs to run in parallel [default: 4]
# @flag -v --verbose*        Show extra output (use -vv for even more)
# @flag --raw                Directly pipe stdin/stdout/stderr from plugin to user Sets --jobs=1
# @flag -y --yes             Answer yes to all prompts
# @option --remove <TOOL>    Remove the tool(s) from config file
# @option -p --path          Specify a path to a config file or directory If a directory is specified, it will look for .rtx.toml (default) or .tool-versions
# @flag --pin                Save exact version to config file e.g.: `rtx use --pin node@20` will save 20.0.0 as the version
# @flag -h --help            Print help (see a summary with '-h')
# @arg tool-version*[`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to add to config file e.g.: node@20 If no version is specified, it will default to @latest
use() {
    :;
}
# }} rtx use

# {{ rtx version
# @cmd Show rtx version
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help
version() {
    :;
}
# }} rtx version

# {{ rtx watch
# @cmd [experimental] Run a task watching for changes [aliases: w]
# @option -t --task      Task to run
# @option -g --glob      Files to watch Defaults to sources from the task(s)
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg args*             Extra arguments
watch() {
    :;
}
# }} rtx watch

# {{ rtx where
# @cmd Display the installation path for a runtime
# @flag -q --quiet       Suppress non-error messages
# @flag -v --verbose*    Show extra output (use -vv for even more)
# @flag -y --yes         Answer yes to all prompts
# @flag -h --help        Print help (see a summary with '-h')
# @arg tool-version![`_choice_tool_version`] <TOOL@VERSION>  Tool(s) to look up e.g.: ruby@3 if "@<PREFIX>" is specified, it will show the latest installed version that matches the prefix otherwise, it will show the current, active installed version
where() {
    :;
}
# }} rtx where

# {{ rtx which
# @cmd Shows the path that a bin name points to
# @flag --plugin                      Show the plugin name instead of the path
# @flag --version                     Show the version instead of the path
# @option -t --tool <TOOL@VERSION>    Use a specific tool@version e.g.: `rtx which npm --tool=node@20`
# @flag -q --quiet                    Suppress non-error messages
# @flag -v --verbose*                 Show extra output (use -vv for even more)
# @flag -y --yes                      Answer yes to all prompts
# @flag -h --help                     Print help (see a summary with '-h')
# @arg bin_name!                      The bin name to look up
which() {
    :;
}
# }} rtx which

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_plugin() {
    rtx plugins ls --core --user
}

_choice_alias() {
    rtx alias ls | gawk '{print $2}'
}

_choice_tool_version() {
    _argc_util_mode_kv @
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_plugin
    else
        rtx ls-remote $argc__kv_prefix | tac
    fi
}

_choice_all_tools() {
    rtx plugins ls --all
}

_choice_task() {
    rtx task ls --no-header | gawk '{print $1}'
}

_choice_setting() {
    rtx settings ls | gawk '{print $1}'   
}

_choice_installed_tool_version() {
    rtx ls --installed | gawk '{print $1 "@" $2}'
}

command eval "$(argc --argc-eval "$0" "$@")"