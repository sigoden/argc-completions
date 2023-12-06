#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag -h --help                       help for pulumi
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose

# {{ pulumi new
# @cmd Create a new Pulumi project
# @option -c --config* <path>                     Config to save
# @flag --config-path                             Config keys contain a path to a property in a map or list to set
# @option -d --description <string>               The project description; if not specified, a prompt will request it
# @option --dir <dir>                             The location to place the generated project; if not specified, the current directory is used
# @flag -f --force                                Forces content to be generated even if it would change existing files
# @flag -g --generate-only                        Generate the project only; do not create a stack, save config, or install dependencies
# @flag -h --help                                 help for new
# @flag -l --list-templates                       List locally installed templates and exit
# @option -n --name <string>                      The project name; if not specified, a prompt will request it
# @flag -o --offline                              Use locally cached templates without making any network requests
# @option --secrets-provider[default|passphrase|awskms|azurekeyvault|gcpkms|hashivault] <string>  The type of the provider that should be used to encrypt and decrypt secrets (default "default")
# @option -s --stack[`_choice_stack`] <string>    The stack name; either an existing stack or stack to create; if not specified, a prompt will request it
# @flag -y --yes                                  Skip prompts and proceed with default values
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg template-url[`_choice_template`] <template|url>
new() {
    :;
}
# }} pulumi new

# {{ pulumi config
# @cmd Manage configuration
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag -h --help                                 help for config
# @flag -j --json                                 Emit output as JSON
# @flag --show-secrets                            Show secret values when listing config instead of displaying blinded values
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
config() {
    :;
}

# {{{ pulumi config cp
# @cmd Copy config to another stack
# @option -d --dest <string>                      The name of the new stack to copy the config to
# @flag -h --help                                 help for cp
# @flag --path                                    The key contains a path to a property in a map or list to set
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg key[`_choice_config_key`]
config::cp() {
    :;
}
# }}} pulumi config cp

# {{{ pulumi config env
# @cmd Manage ESC environments for a stack
# @flag -h --help                                 help for env
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
config::env() {
    :;
}

# {{{{ pulumi config env add
# @cmd Add environments to a stack
# @flag -h --help                                 help for add
# @flag --show-secrets                            Show secret values in plaintext instead of ciphertext
# @flag -y --yes                                  True to save changes without prompting
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
config::env::add() {
    :;
}
# }}}} pulumi config env add

# {{{{ pulumi config env init
# @cmd Creates an environment for a stack
# @option --env <string>                          The name of the environment to create.
# @flag -h --help                                 help for init
# @flag --keep-config                             Do not remove configuration values from the stack after creating the environment
# @flag --show-secrets                            Show secret values in plaintext instead of ciphertext
# @flag -y --yes                                  True to save the created environment without prompting
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
config::env::init() {
    :;
}
# }}}} pulumi config env init

# {{{{ pulumi config env rm
# @cmd Remove environments from a stack
# @flag -h --help                                 help for rm
# @flag --show-secrets                            Show secret values in plaintext instead of ciphertext
# @flag -y --yes                                  True to save changes without prompting
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
config::env::rm() {
    :;
}
# }}}} pulumi config env rm
# }}} pulumi config env

# {{{ pulumi config get
# @cmd Get a single configuration value
# @flag -h --help                                 help for get
# @flag -j --json                                 Emit output as JSON
# @flag --path                                    The key contains a path to a property in a map or list to get
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} pulumi config get

# {{{ pulumi config refresh
# @cmd Update the local configuration based on the most recent deployment of the stack
# @flag -f --force                                Overwrite configuration file, if it exists, without creating a backup
# @flag -h --help                                 help for refresh
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
config::refresh() {
    :;
}
# }}} pulumi config refresh

# {{{ pulumi config rm
# @cmd Remove configuration value
# @flag -h --help                                 help for rm
# @flag --path                                    The key contains a path to a property in a map or list to remove
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg key![`_choice_config_key`]
config::rm() {
    :;
}
# }}} pulumi config rm

# {{{ pulumi config rm-all
# @cmd Remove multiple configuration values
# @flag -h --help                                 help for rm-all
# @flag --path                                    Parse the keys as paths in a map or list rather than raw strings
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg keys*[`_choice_config_key`]
config::rm-all() {
    :;
}
# }}} pulumi config rm-all

# {{{ pulumi config set
# @cmd Set configuration value
# @flag -h --help                                 help for set
# @flag --path                                    The key contains a path to a property in a map or list to set
# @flag --plaintext                               Save the value as plaintext (unencrypted)
# @flag --secret                                  Encrypt the value instead of storing it in plaintext
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg key![`_choice_config_key`]
# @arg value
config::set() {
    :;
}
# }}} pulumi config set

# {{{ pulumi config set-all
# @cmd Set multiple configuration values
# @flag -h --help                                 help for set-all
# @flag --path                                    Parse the keys as paths in a map or list rather than raw strings
# @option --plaintext* <string>                   Marks a value as plaintext (unencrypted)
# @option --secret* <string>                      Marks a value as secret to be encrypted
# @option --color <string>                        Colorize output.
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg key-values*[`_choice_config_key_value`]
config::set-all() {
    :;
}
# }}} pulumi config set-all
# }} pulumi config

# {{ pulumi stack
# @cmd Manage stacks and view stack state
# @flag -h --help                                 help for stack
# @flag -i --show-ids                             Display each resource's provider-assigned unique ID
# @flag --show-name                               Display only the stack name
# @flag --show-secrets                            Display stack outputs which are marked as secret in plaintext
# @flag -u --show-urns                            Display each resource's Pulumi-assigned globally unique URN
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack() {
    :;
}

# {{{ pulumi stack change-secrets-provider
# @cmd Change the secrets provider for a stack
# @flag -h --help                                 help for change-secrets-provider
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg new-secrets-provider!
stack::change-secrets-provider() {
    :;
}
# }}} pulumi stack change-secrets-provider

# {{{ pulumi stack export
# @cmd Export a stack's deployment to standard out
# @option --file <file>                           A filename to write stack output to
# @flag -h --help                                 help for export
# @option --show-secrets <false>                  Emit secrets in plaintext in exported stack.
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --version <string>                      Previous stack version to export.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::export() {
    :;
}
# }}} pulumi stack export

# {{{ pulumi stack graph
# @cmd Export a stack's dependency graph to a file
# @option --dependency-edge-color <string>        Sets the color of dependency edges in the graph (default "#246C60")
# @flag -h --help                                 help for graph
# @flag --ignore-dependency-edges                 Ignores edges introduced by dependency resource relationships
# @flag --ignore-parent-edges                     Ignores edges introduced by parent/child resource relationships
# @option --parent-edge-color <string>            Sets the color of parent edges in the graph (default "#AA6639")
# @flag --short-node-name                         Sets the resource name as the node label for each node of the graph
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg filename
stack::graph() {
    :;
}
# }}} pulumi stack graph

# {{{ pulumi stack history
# @cmd Display history for a stack
# @flag --full-dates                              Show full dates, instead of relative dates
# @flag -h --help                                 help for history
# @flag -j --json                                 Emit output as JSON
# @option --page <int>                            Used with 'page-size' to paginate results (default 1)
# @option --page-size <int>                       Used with 'page' to control number of results returned (default 10)
# @flag --show-secrets                            Show secret values when listing config instead of displaying blinded values
# @option -s --stack[`_choice_stack`] <string>    Choose a stack other than the currently selected one
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::history() {
    :;
}
# }}} pulumi stack history

# {{{ pulumi stack import
# @cmd Import a deployment from standard in into an existing stack
# @option --file <file>                           A filename to read stack input from
# @flag -f --force                                Force the import to occur, even if apparent errors are discovered beforehand (not recommended)
# @flag -h --help                                 help for import
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::import() {
    :;
}
# }}} pulumi stack import

# {{{ pulumi stack init
# @cmd Create an empty stack with the given name, ready for updates
# @option --copy-config-from[`_choice_all_stack`] <string>  The name of the stack to copy existing config from
# @flag -h --help                                 help for init
# @flag --no-select                               Do not select the stack
# @option --secrets-provider[default|passphrase|awskms|azurekeyvault|gcpkms|hashivault] <string>  The type of the provider that should be used to encrypt and decrypt secrets
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to create
# @option --teams* <string>                       A list of team names that should have permission to read and update this stack, once created
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-stack-name <[<org-name>/]<stack-name>>
stack::init() {
    :;
}
# }}} pulumi stack init

# {{{ pulumi stack ls
# @cmd List stacks
# @flag -a --all                                  List all stacks instead of just stacks for the current project
# @flag -h --help                                 help for ls
# @flag -j --json                                 Emit output as JSON
# @option -o --organization <string>              Filter returned stacks to those in a specific organization
# @option -p --project <string>                   Filter returned stacks to those with a specific project name
# @option -t --tag <string>                       Filter returned stacks to those in a specific tag (tag-name or tag-name=tag-value)
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::ls() {
    :;
}
# }}} pulumi stack ls

# {{{ pulumi stack output
# @cmd Show a stack's output properties
# @flag -h --help                                 help for output
# @flag -j --json                                 Emit output as JSON
# @flag --shell                                   Emit output as a shell script
# @flag --show-secrets                            Display outputs which are marked as secret in plaintext
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg property-name
stack::output() {
    :;
}
# }}} pulumi stack output

# {{{ pulumi stack rename
# @cmd Rename an existing stack
# @flag -h --help                                 help for rename
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg new-stack-name!
stack::rename() {
    :;
}
# }}} pulumi stack rename

# {{{ pulumi stack rm
# @cmd Remove a stack and its configuration
# @flag -f --force                                Forces deletion of the stack, leaving behind any resources managed by the stack
# @flag -h --help                                 help for rm
# @flag --preserve-config                         Do not delete the corresponding Pulumi.<stack-name>.yaml configuration file for the stack
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag -y --yes                                  Skip confirmation prompts, and proceed with removal anyway
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg stack-name
stack::rm() {
    :;
}
# }}} pulumi stack rm

# {{{ pulumi stack select
# @cmd Switch the current workspace to the given stack
# @flag -c --create                               If selected stack does not exist, create it
# @flag -h --help                                 help for select
# @option --secrets-provider[default|passphrase|awskms|azurekeyvault|gcpkms|hashivault] <string>  Use with --create flag, The type of the provider that should be used to encrypt and decrypt secrets (default "default")
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to select
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg stack
stack::select_() {
    :;
}
# }}} pulumi stack select

# {{{ pulumi stack tag
# @cmd Manage stack tags
# @flag -h --help                                 help for tag
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::tag() {
    :;
}

# {{{{ pulumi stack tag get
# @cmd Get a single stack tag value
# @flag -h --help                                 help for get
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg name!
stack::tag::get() {
    :;
}
# }}}} pulumi stack tag get

# {{{{ pulumi stack tag ls
# @cmd List all stack tags
# @flag -h --help                                 help for ls
# @flag -j --json                                 Emit output as JSON
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::tag::ls() {
    :;
}
# }}}} pulumi stack tag ls

# {{{{ pulumi stack tag rm
# @cmd Remove a stack tag
# @flag -h --help                                 help for rm
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg name!
stack::tag::rm() {
    :;
}
# }}}} pulumi stack tag rm

# {{{{ pulumi stack tag set
# @cmd Set a stack tag
# @flag -h --help                                 help for set
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg name!
# @arg value!
stack::tag::set() {
    :;
}
# }}}} pulumi stack tag set
# }}} pulumi stack tag

# {{{ pulumi stack unselect
# @cmd Resets stack selection from the current workspace
# @flag -h --help                                 help for unselect
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
stack::unselect() {
    :;
}
# }}} pulumi stack unselect
# }} pulumi stack

# {{ pulumi console
# @cmd Opens the current stack in the Pulumi Console
# @flag -h --help                                 help for console
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to view
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
console() {
    :;
}
# }} pulumi console

# {{ pulumi import
# @cmd Import resources into an existing stack
# @option --config-file <file>                     Use the configuration values in the specified file rather than detecting the file name
# @flag -d --debug                                 Print detailed debugging output during resource operations
# @flag --diff                                     Display operation as a rich diff showing the overall change
# @option -f --file <file>                         The path to a JSON-encoded file containing a list of resources to import
# @option --from <string>                          Invoke a converter to import the resources
# @flag --generate-code                            Generate resource declaration code for the imported resources (default true)
# @flag -h --help                                  help for import
# @option -m --message <string>                    Optional message to associate with the update operation
# @option -o --out <file>                          The path to the file that will contain the generated resource declarations
# @option -p --parallel <int>                      Allow P resource operations to run in parallel at once (1 for no parallelism).
# @option --parent[`_choice_name_urn`] <string>    The name and URN of the parent resource in the format name=urn, where name is the variable name of the parent resource
# @option --properties* <string>                   The property names to use for the import in the format name1,name2
# @flag --protect                                  Allow resources to be imported with protection from deletion enabled (default true)
# @option --provider[`_choice_name_urn`] <string>  The name and URN of the provider to use for the import in the format name=urn, where name is the variable name for the provider resource
# @flag --skip-preview                             Do not calculate a preview before performing the import
# @option -s --stack[`_choice_stack`] <string>     The name of the stack to operate on.
# @flag --suppress-outputs                         Suppress display of stack outputs (in case they contain sensitive values)
# @option --suppress-permalink <string[="false"]>  Suppress display of the state permalink
# @flag -y --yes                                   Automatically approve and perform the import after previewing it
# @option --color <string>                         Colorize output.
# @option -C --cwd <dir>                           Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking               Disable integrity checking of checkpoint files
# @flag -e --emoji                                 Enable emojis in the output
# @flag --logflow                                  Flow log settings to child processes (like plugins)
# @flag --logtostderr                              Log to stderr instead of to files
# @option --memprofilerate <int>                   Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                          Disable interactive mode for all commands
# @option --profiling <file>                       Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                        Emit tracing to the specified endpoint.
# @option -v --verbose <int>                       Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg type
# @arg name
# @arg id
import() {
    :;
}
# }} pulumi import

# {{ pulumi refresh
# @cmd Refresh the resources in a stack
# @flag --clear-pending-creates                   Clear all pending creates, dropping them from the state
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag -d --debug                                Print detailed debugging output during resource operations
# @flag --diff                                    Display operation as a rich diff showing the overall change
# @flag --expect-no-changes                       Return an error if any changes occur during this update
# @flag -h --help                                 help for refresh
# @option --import-pending-creates* <string>      A list of form [[URN ID]...] describing the provider IDs of pending creates
# @flag -j --json                                 Serialize the refresh diffs, operations, and overall output as JSON
# @option -m --message <string>                   Optional message to associate with the update operation
# @option -p --parallel <int>                     Allow P resource operations to run in parallel at once (1 for no parallelism).
# @flag --show-replacement-steps                  Show detailed resource replacement creates and deletes instead of a single step
# @flag --show-sames                              Show resources that needn't be updated because they haven't changed, alongside those that do
# @flag --skip-pending-creates                    Skip importing pending creates in interactive mode
# @flag -f --skip-preview                         Do not calculate a preview before performing the refresh
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag --suppress-outputs                        Suppress display of stack outputs (in case they contain sensitive values)
# @option --suppress-permalink <string[="false"]>  Suppress display of the state permalink
# @option -t --target* <string>                   Specify a single resource URN to refresh.
# @flag -y --yes                                  Automatically approve and perform the refresh after previewing it
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
refresh() {
    :;
}
# }} pulumi refresh

# {{ pulumi state
# @cmd Edit the current stack's state
# @flag -h --help                       help for state
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
state() {
    :;
}

# {{{ pulumi state delete
# @cmd Deletes a resource from a stack's state
# @flag --force                                   Force deletion of protected resources
# @flag -h --help                                 help for delete
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag --target-dependents                       Delete the URN and all its dependents
# @flag -y --yes                                  Skip confirmation prompts
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg resource-urn[`_choice_urn_cached`] <resource URN>
state::delete() {
    :;
}
# }}} pulumi state delete

# {{{ pulumi state rename
# @cmd Renames a resource from a stack's state
# @flag -h --help                       help for rename
# @option -s --stack[`_choice_all_stack`] <string>  The name of the stack to operate on.
# @flag -y --yes                        Skip confirmation prompts
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg resource-urn[`_choice_urn_cached`] <resource URN>
# @arg new-name <new name>
state::rename() {
    :;
}
# }}} pulumi state rename

# {{{ pulumi state unprotect
# @cmd Unprotect resources in a stack's state
# @flag --all                                     Unprotect all resources in the checkpoint
# @flag -h --help                                 help for unprotect
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag -y --yes                                  Skip confirmation prompts
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg resource-urn[`_choice_urn_cached`] <resource URN>
state::unprotect() {
    :;
}
# }}} pulumi state unprotect

# {{{ pulumi state upgrade
# @cmd Migrates the current backend to the latest supported version
# @flag -h --help                       help for upgrade
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
state::upgrade() {
    :;
}
# }}} pulumi state upgrade
# }} pulumi state

# {{ pulumi install
# @cmd Install packages and plugins for the current program
# @flag -h --help                       help for install
# @flag --reinstall                     Reinstall a plugin even if it already exists
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
install() {
    :;
}
# }} pulumi install

# {{ pulumi up
# @cmd Create or update the resources in a stack
# @option -c --config* <string>                   Config to use during the update
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag --config-path                             Config keys contain a path to a property in a map or list to set
# @flag -d --debug                                Print detailed debugging output during resource operations
# @flag --diff                                    Display operation as a rich diff showing the overall change
# @flag --expect-no-changes                       Return an error if any changes occur during this update
# @flag -h --help                                 help for up
# @flag -j --json                                 Serialize the update diffs, operations, and overall output as JSON
# @option -m --message <string>                   Optional message to associate with the update operation
# @option -p --parallel <int>                     Allow P resource operations to run in parallel at once (1 for no parallelism).
# @option --policy-pack* <string>                 Run one or more policy packs as part of this update
# @option --policy-pack-config* <file>            Path to JSON file containing the config for the policy pack of the corresponding "--policy-pack" flag
# @option -r --refresh <string[="true"]>          Refresh the state of the stack's resources before this update
# @option --replace*[`_choice_urn_cached`] <string>  Specify a single resource URN to replace.
# @option --secrets-provider[default|passphrase|awskms|azurekeyvault|gcpkms|hashivault] <string>  The type of the provider that should be used to encrypt and decrypt secrets.
# @flag --show-config                             Show configuration keys and variables
# @flag --show-full-output                        Display full length of stack outputs (default true)
# @flag --show-policy-remediations                Show per-resource policy remediation details instead of a summary
# @flag --show-reads                              Show resources that are being read in, alongside those being managed directly in the stack
# @flag --show-replacement-steps                  Show detailed resource replacement creates and deletes instead of a single step
# @flag --show-sames                              Show resources that don't need be updated because they haven't changed, alongside those that do
# @flag -f --skip-preview                         Do not calculate a preview before performing the update
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag --suppress-outputs                        Suppress display of stack outputs (in case they contain sensitive values)
# @option --suppress-permalink <string[="false"]>  Suppress display of the state permalink
# @option -t --target*[`_choice_urn_cached`] <string>  Specify a single resource URN to update.
# @flag --target-dependents                       Allows updating of dependent targets discovered but not specified in --target list
# @option --target-replace*[`_choice_urn_cached`] <string>  Specify a single resource URN to replace.
# @flag -y --yes                                  Automatically approve and perform the update after previewing it
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg template-url[`_choice_template`] <template|url>
up() {
    :;
}
# }} pulumi up

# {{ pulumi destroy
# @cmd Destroy all existing resources in the stack
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag -d --debug                                Print detailed debugging output during resource operations
# @flag --diff                                    Display operation as a rich diff showing the overall change
# @flag --exclude-protected                       Do not destroy protected resources.
# @flag -h --help                                 help for destroy
# @flag -j --json                                 Serialize the destroy diffs, operations, and overall output as JSON
# @option -m --message <string>                   Optional message to associate with the destroy operation
# @option -p --parallel <int>                     Allow P resource operations to run in parallel at once (1 for no parallelism).
# @option -r --refresh <string[="true"]>          Refresh the state of the stack's resources before this update
# @flag --remove                                  Remove the stack and its config file after all resources in the stack have been deleted
# @flag --show-config                             Show configuration keys and variables
# @flag --show-replacement-steps                  Show detailed resource replacement creates and deletes instead of a single step
# @flag --show-sames                              Show resources that don't need to be updated because they haven't changed, alongside those that do
# @flag -f --skip-preview                         Do not calculate a preview before performing the destroy
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag --suppress-outputs                        Suppress display of stack outputs (in case they contain sensitive values)
# @option --suppress-permalink <string[="false"]>  Suppress display of the state permalink
# @option -t --target*[`_choice_urn_cached`] <string>  Specify a single resource URN to destroy.
# @flag --target-dependents                       Allows destroying of dependent targets discovered but not specified in --target list
# @flag -y --yes                                  Automatically approve and perform the destroy after previewing it
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
destroy() {
    :;
}
# }} pulumi destroy

# {{ pulumi preview
# @cmd Show a preview of updates to a stack's resources
# @option -c --config* <string>                   Config to use during the preview
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag --config-path                             Config keys contain a path to a property in a map or list to set
# @flag -d --debug                                Print detailed debugging output during resource operations
# @flag --diff                                    Display operation as a rich diff showing the overall change
# @flag --expect-no-changes                       Return an error if any changes are proposed by this preview
# @flag -h --help                                 help for preview
# @flag -j --json                                 Serialize the preview diffs, operations, and overall output as JSON
# @option -m --message <string>                   Optional message to associate with the preview operation
# @option -p --parallel <int>                     Allow P resource operations to run in parallel at once (1 for no parallelism).
# @option --policy-pack* <string>                 Run one or more policy packs as part of this update
# @option --policy-pack-config* <file>            Path to JSON file containing the config for the policy pack of the corresponding "--policy-pack" flag
# @option -r --refresh <string[="true"]>          Refresh the state of the stack's resources before this update
# @option --replace*[`_choice_urn_cached`] <string>  Specify resources to replace.
# @flag --show-config                             Show configuration keys and variables
# @flag --show-policy-remediations                Show per-resource policy remediation details instead of a summary
# @flag --show-reads                              Show resources that are being read in, alongside those being managed directly in the stack
# @flag --show-replacement-steps                  Show detailed resource replacement creates and deletes instead of a single step
# @flag --show-sames                              Show resources that needn't be updated because they haven't changed, alongside those that do
# @option --show-secrets <false>                  Emit secrets in plaintext in the plan file.
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag --suppress-outputs                        Suppress display of stack outputs (in case they contain sensitive values)
# @option --suppress-permalink <string[="false"]>  Suppress display of the state permalink
# @option -t --target*[`_choice_urn_cached`] <string>  Specify a single resource URN to update.
# @flag --target-dependents                       Allows updating of dependent targets discovered but not specified in --target list
# @option --target-replace*[`_choice_urn_cached`] <string>  Specify a single resource URN to replace.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
preview() {
    :;
}
# }} pulumi preview

# {{ pulumi cancel
# @cmd Cancel a stack's currently running update, if any
# @flag -h --help                                 help for cancel
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @flag -y --yes                                  Skip confirmation prompts, and proceed with cancellation anyway
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg stack-name[`_choice_inprogress_stack`]
cancel() {
    :;
}
# }} pulumi cancel

# {{ pulumi env
# @cmd Manage environments
# @option --env <string>                The name of the environment to operate on.
# @flag -h --help                       help for env
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
env() {
    :;
}

# {{{ pulumi env edit
# @cmd Edit an environment definition
# @option --editor <string>             the command to use to edit the environment definition
# @flag -h --help                       help for edit
# @flag --show-secrets                  Show static secrets in plaintext rather than ciphertext
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
env::edit() {
    :;
}
# }}} pulumi env edit

# {{{ pulumi env get
# @cmd Get a value within an environment.
# @flag -h --help                       help for get
# @flag --show-secrets                  Show static secrets in plaintext rather than ciphertext
# @option --value <string>              set to print just the value in the given format.
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
# @arg path!
env::get() {
    :;
}
# }}} pulumi env get

# {{{ pulumi env init
# @cmd Create an empty environment with the given name.
# @flag -f --file                       the file to use to initialize the environment, if any.
# @flag -h --help                       help for init
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
env::init() {
    :;
}
# }}} pulumi env init

# {{{ pulumi env ls
# @cmd List environments.
# @flag -h --help                       help for ls
# @option -o --organization <string>    Filter returned stacks to those in a specific organization
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
env::ls() {
    :;
}
# }}} pulumi env ls

# {{{ pulumi env open
# @cmd Open the environment with the given name.
# @option -f --format <string>          the output format to use.
# @flag -h --help                       help for open
# @option -l --lifetime <duration>      the lifetime of the opened environment in the form HhMm (e.g. 2h, 1h30m, 15m) (default 2h0m0s)
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
# @arg property-path <property path>
env::open() {
    :;
}
# }}} pulumi env open

# {{{ pulumi env rm
# @cmd Remove an environment or a value from an environment.
# @flag -h --help                       help for rm
# @flag -y --yes                        Skip confirmation prompts, and proceed with removal anyway
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
# @arg path
env::rm() {
    :;
}
# }}} pulumi env rm

# {{{ pulumi env run
# @cmd Open the environment with the given name and run a command.
# @flag -h --help                       help for run
# @flag -i --interactive                true to treat the command as interactive and disable output filters
# @option -l --lifetime <duration>      the lifetime of the opened environment (default 2h0m0s)
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
# @arg command
env::run() {
    :;
}
# }}} pulumi env run

# {{{ pulumi env set
# @cmd Set a value within an environment.
# @flag -h --help                       help for set
# @flag --plaintext                     true to leave the value in plaintext
# @flag --secret                        true to mark the value as secret
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @option --env <string>                The name of the environment to operate on.
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-environment-name <[<org-name>/]<environment-name>>
# @arg path!
# @arg value!
env::set() {
    :;
}
# }}} pulumi env set
# }} pulumi env

# {{ pulumi login
# @cmd Log in to the Pulumi Cloud
# @option -c --cloud-url <string>       A cloud URL to log in to
# @option --default-org <string>        A default org to associate with the login.
# @flag -h --help                       help for login
# @flag --insecure                      Allow insecure server connections when using SSL
# @flag -l --local                      Use Pulumi in local-only mode
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg url
login() {
    :;
}
# }} pulumi login

# {{ pulumi logout
# @cmd Log out of the Pulumi Cloud
# @flag --all                           Logout of all backends
# @option -c --cloud-url <string>       A cloud URL to log out of (defaults to current cloud)
# @flag -h --help                       help for logout
# @flag -l --local                      Log out of using local mode
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg url!
logout() {
    :;
}
# }} pulumi logout

# {{ pulumi whoami
# @cmd Display the current logged-in user
# @flag -h --help                       help for whoami
# @flag -j --json                       Emit output as JSON
# @flag -v --verbose                    Print detailed whoami information
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
whoami() {
    :;
}
# }} pulumi whoami

# {{ pulumi org
# @cmd Manage Organization configuration
# @flag -h --help                       help for org
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
org() {
    :;
}

# {{{ pulumi org get-default
# @cmd Get the default org for the current backend
# @flag -h --help                       help for get-default
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
org::get-default() {
    :;
}
# }}} pulumi org get-default

# {{{ pulumi org search
# @cmd Search for resources in Pulumi Cloud
# @option --delimiter <Delimiter>       Delimiter to use when rendering CSV output.
# @flag -h --help                       help for search
# @option --org <string>                Name of the organization to search.
# @option -o --output <outputFormat>    Output format.
# @option -q --query* <string>          A Pulumi Query to send to Pulumi Cloud for resource search.May be formatted as a single query, or multiple: -q "type:aws:s3/bucket:Bucket modified:>=2023-09-01" -q "type:aws:s3/bucket:Bucket" -q "modified:>=2023-09-01" See https://www.pulumi.com/docs/pulumi-cloud/insights/search/#query-syntax for syntax reference.
# @flag --web                           Open the search results in a web browser.
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
org::search() {
    :;
}

# {{{{ pulumi org search ai
# @cmd Search for resources in Pulumi Cloud using Pulumi AI
# @option --delimiter <Delimiter>       Delimiter to use when rendering CSV output.
# @flag -h --help                       help for ai
# @option --org <string>                Organization name to search within
# @option -o --output <outputFormat>    Output format.
# @option -q --query <string>           Plaintext natural language query
# @flag --web                           Open the search results in a web browser.
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
org::search::ai() {
    :;
}
# }}}} pulumi org search ai
# }}} pulumi org search

# {{{ pulumi org set-default
# @cmd Set the default organization for the current backend
# @flag -h --help                       help for set-default
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg name
org::set-default() {
    :;
}
# }}} pulumi org set-default
# }} pulumi org

# {{ pulumi policy
# @cmd Manage resource policies
# @flag -h --help                       help for policy
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
policy() {
    :;
}

# {{{ pulumi policy disable
# @cmd Disable a Policy Pack for a Pulumi organization
# @flag -h --help                       help for disable
# @option --policy-group <string>       The Policy Group for which the Policy Pack will be disabled; if not specified, the default Policy Group is used
# @option --version <string>            The version of the Policy Pack that will be disabled; if not specified, any enabled version of the Policy Pack will be disabled
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-policy-pack-name <<org-name>/<policy-pack-name>>
policy::disable() {
    :;
}
# }}} pulumi policy disable

# {{{ pulumi policy enable
# @cmd Enable a Policy Pack for a Pulumi organization
# @option --config <file>               The file path for the Policy Pack configuration file
# @flag -h --help                       help for enable
# @option --policy-group <string>       The Policy Group for which the Policy Pack will be enabled; if not specified, the default Policy Group is used
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-policy-pack-name <<org-name>/<policy-pack-name>>
# @arg latest-version! <latest|version>
policy::enable() {
    :;
}
# }}} pulumi policy enable

# {{{ pulumi policy group
# @cmd Manage policy groups
# @flag -h --help                       help for group
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
policy::group() {
    :;
}

# {{{{ pulumi policy group ls
# @cmd List all Policy Groups for a Pulumi organization
# @flag -h --help                       help for ls
# @flag -j --json                       Emit output as JSON
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name
policy::group::ls() {
    :;
}
# }}}} pulumi policy group ls
# }}} pulumi policy group

# {{{ pulumi policy ls
# @cmd List all Policy Packs for a Pulumi organization
# @flag -h --help                       help for ls
# @flag -j --json                       Emit output as JSON
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name
policy::ls() {
    :;
}
# }}} pulumi policy ls

# {{{ pulumi policy new
# @cmd Create a new Pulumi Policy Pack
# @option --dir <dir>                   The location to place the generated Policy Pack; if not specified, the current directory is used
# @flag -f --force                      Forces content to be generated even if it would change existing files
# @flag -g --generate-only              Generate the Policy Pack only; do not install dependencies
# @flag -h --help                       help for new
# @flag -o --offline                    Use locally cached templates without making any network requests
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg template-url <template|url>
policy::new() {
    :;
}
# }}} pulumi policy new

# {{{ pulumi policy publish
# @cmd Publish a Policy Pack to the Pulumi Cloud
# @flag -h --help                       help for publish
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name
policy::publish() {
    :;
}
# }}} pulumi policy publish

# {{{ pulumi policy rm
# @cmd Removes a Policy Pack from a Pulumi organization
# @flag -h --help                       help for rm
# @flag -y --yes                        Skip confirmation prompts, and proceed with removal anyway
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-policy-pack-name <<org-name>/<policy-pack-name>>
# @arg all-version! <all|version>
policy::rm() {
    :;
}
# }}} pulumi policy rm

# {{{ pulumi policy validate-config
# @cmd Validate a Policy Pack configuration
# @option --config <file>               The file path for the Policy Pack configuration file
# @flag -h --help                       help for validate-config
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg org-name-policy-pack-name <<org-name>/<policy-pack-name>>
# @arg version!
policy::validate-config() {
    :;
}
# }}} pulumi policy validate-config
# }} pulumi policy

# {{ pulumi plugin
# @cmd Manage language and resource provider plugins
# @flag -h --help                       help for plugin
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
plugin() {
    :;
}

# {{{ pulumi plugin install
# @cmd Install one or more plugins
# @option --checksum <string>           The expected SHA256 checksum for the plugin archive
# @flag --exact                         Force installation of an exact version match (usually >= is accepted)
# @option -f --file <file>              Install a plugin from a binary, folder or tarball, instead of downloading it
# @flag -h --help                       help for install
# @flag --reinstall                     Reinstall a plugin even if it already exists
# @option --server <string>             A URL to download plugins from
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg kind[`_choice_plugin_kind`]
# @arg name[`_choice_plugin_name`]
# @arg version[`_choice_plugin_version`]
plugin::install() {
    :;
}
# }}} pulumi plugin install

# {{{ pulumi plugin ls
# @cmd List plugins
# @flag -h --help                       help for ls
# @flag -j --json                       Emit output as JSON
# @flag -p --project                    List only the plugins used by the current project
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
plugin::ls() {
    :;
}
# }}} pulumi plugin ls

# {{{ pulumi plugin rm
# @cmd Remove one or more plugins from the download cache
# @flag -a --all                        Remove all plugins
# @flag -h --help                       help for rm
# @flag -y --yes                        Skip confirmation prompts, and proceed with removal anyway
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg kind[`_choice_plugin_kind`]
# @arg name[`_choice_plugin_name`]
# @arg version[`_choice_plugin_version`]
plugin::rm() {
    :;
}
# }}} pulumi plugin rm
# }} pulumi plugin

# {{ pulumi schema
# @cmd Analyze package schemas
# @flag -h --help                       help for schema
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
schema() {
    :;
}

# {{{ pulumi schema check
# @cmd Check a Pulumi package schema for errors
# @flag -h --help                       help for check
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
schema::check() {
    :;
}
# }}} pulumi schema check
# }} pulumi schema

# {{ pulumi package
# @cmd Work with Pulumi packages
# @flag -h --help                       help for package
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
package() {
    :;
}

# {{{ pulumi package gen-sdk
# @cmd Generate SDK(s) from a package or schema
# @flag -h --help                       help for gen-sdk
# @option --language[nodejs|python|go|dotnet|java|all] <string>  The SDK language to generate: (default "all")
# @option -o --out <dir>                The directory to write the SDK to (default "./sdk")
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg schema_source!
package::gen-sdk() {
    :;
}
# }}} pulumi package gen-sdk

# {{{ pulumi package get-mapping
# @cmd Get the mapping information for a given key from a package
# @flag -h --help                       help for get-mapping
# @option -o --out <file>               The file to write the mapping data to
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg key!
# @arg schema_source!
# @arg provider-key <provider key>
package::get-mapping() {
    :;
}
# }}} pulumi package get-mapping

# {{{ pulumi package get-schema
# @cmd Get the schema.json from a package
# @flag -h --help                       help for get-schema
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg schema_source!
package::get-schema() {
    :;
}
# }}} pulumi package get-schema
# }} pulumi package

# {{ pulumi version
# @cmd Print Pulumi's version number
# @flag -h --help                       help for version
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
version() {
    :;
}
# }} pulumi version

# {{ pulumi about
# @cmd Print information about the Pulumi environment.
# @flag -h --help                                 help for about
# @flag -j --json                                 Emit output as JSON
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to get info on.
# @flag -t --transitive                           Include transitive dependencies
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
about() {
    :;
}
# }} pulumi about

# {{ pulumi gen-completion
# @cmd Generate completion scripts for the Pulumi CLI
# @flag -h --help                       help for gen-completion
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg shell!
gen-completion() {
    :;
}
# }} pulumi gen-completion

# {{ pulumi convert
# @cmd Convert Pulumi programs from a supported source program into other supported languages
# @option --from <string>               Which converter plugin to use to read the source program (default "yaml")
# @flag --generate-only                 Generate the converted program(s) only; do not install dependencies
# @flag -h --help                       help for convert
# @option --language <string>           Which language plugin to use to generate the pulumi project
# @option --mappings* <file>            Any mapping files to use in the conversion
# @option --out <dir>                   The output directory to write the converted project to (default ".")
# @flag --strict                        If strict is set the conversion will fail on errors such as missing variables
# @option --color <string>              Colorize output.
# @option -C --cwd <dir>                Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking    Disable integrity checking of checkpoint files
# @flag -e --emoji                      Enable emojis in the output
# @flag --logflow                       Flow log settings to child processes (like plugins)
# @flag --logtostderr                   Log to stderr instead of to files
# @option --memprofilerate <int>        Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive               Disable interactive mode for all commands
# @option --profiling <file>            Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>             Emit tracing to the specified endpoint.
# @option -v --verbose <int>            Enable verbose logging (e.g., v=3); anything >3 is very verbose
# @arg yaml
# @arg java
convert() {
    :;
}
# }} pulumi convert

# {{ pulumi watch
# @cmd Continuously update the resources in a stack
# @option -c --config* <string>                   Config to use during the update
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag --config-path                             Config keys contain a path to a property in a map or list to set
# @flag -d --debug                                Print detailed debugging output during resource operations
# @flag -h --help                                 help for watch
# @option -m --message <string>                   Optional message to associate with each update operation
# @option -p --parallel <int>                     Allow P resource operations to run in parallel at once (1 for no parallelism).
# @option --path* <path>                          Specify one or more relative or absolute paths that need to be watched.
# @option --policy-pack* <string>                 Run one or more policy packs as part of each update
# @option --policy-pack-config* <file>            Path to JSON file containing the config for the policy pack of the corresponding "--policy-pack" flag
# @flag -r --refresh                              Refresh the state of the stack's resources before each update
# @option --secrets-provider[default|passphrase|awskms|azurekeyvault|gcpkms|hashivault] <string>  The type of the provider that should be used to encrypt and decrypt secrets.
# @flag --show-config                             Show configuration keys and variables
# @flag --show-replacement-steps                  Show detailed resource replacement creates and deletes instead of a single step
# @flag --show-sames                              Show resources that don't need be updated because they haven't changed, alongside those that do
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
watch() {
    :;
}
# }} pulumi watch

# {{ pulumi logs
# @cmd Show aggregated resource logs for a stack
# @option --config-file <file>                    Use the configuration values in the specified file rather than detecting the file name
# @flag -f --follow                               Follow the log stream in real time (like tail -f)
# @flag -h --help                                 help for logs
# @flag -j --json                                 Emit output as JSON
# @option -r --resource[`_choice_urn_cached`] <string>  Only return logs for the requested resource ('name', 'type::name' or full URN).
# @option --since <string>                        Only return logs newer than a relative duration ('5s', '2m', '3h') or absolute timestamp.
# @option -s --stack[`_choice_stack`] <string>    The name of the stack to operate on.
# @option --color <string>                        Colorize output.
# @option -C --cwd <dir>                          Run pulumi as if it had been started in another directory
# @flag --disable-integrity-checking              Disable integrity checking of checkpoint files
# @flag -e --emoji                                Enable emojis in the output
# @flag --logflow                                 Flow log settings to child processes (like plugins)
# @flag --logtostderr                             Log to stderr instead of to files
# @option --memprofilerate <int>                  Enable more precise (and expensive) memory allocation profiles by setting runtime.MemProfileRate
# @flag --non-interactive                         Disable interactive mode for all commands
# @option --profiling <file>                      Emit CPU and memory profiles and an execution trace to '[filename].[pid].{cpu,mem,trace}', respectively
# @option --tracing <file:>                       Emit tracing to the specified endpoint.
# @option -v --verbose <int>                      Enable verbose logging (e.g., v=3); anything >3 is very verbose
logs() {
    :;
}
# }} pulumi logs

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_stack() {
    _pulumi stack ls --json | yq '.[].name' 
}

_choice_template() {
    cat <<-'EOF'
alicloud-csharp	A minimal AliCloud C# Pulumi program
alicloud-fsharp	A minimal AliCloud F# Pulumi program
alicloud-go	A minimal AliCloud Go Pulumi program
alicloud-javascript	A minimal AliCloud JavaScript Pulumi program
alicloud-python	A minimal AliCloud Python Pulumi program
alicloud-typescript	A minimal AliCloud TypeScript Pulumi program
alicloud-visualbasic	A minimal AliCloud VB.NET Pulumi program
aws-csharp	A minimal AWS C# Pulumi program
aws-fsharp	A minimal AWS F# Pulumi program
aws-go	A minimal AWS Go Pulumi program
aws-javascript	A minimal AWS JavaScript Pulumi program
aws-python	A minimal AWS Python Pulumi program
aws-typescript	A minimal AWS TypeScript Pulumi program
aws-visualbasic	A minimal AWS VB.NET Pulumi program
azure-classic-csharp	A minimal C# Pulumi program with the classic Azure provider
azure-classic-fsharp	A minimal F# Pulumi program with the classic Azure provider
azure-classic-go	A minimal Go Pulumi program with the classic Azure provider
azure-classic-javascript	A minimal JavaScript Pulumi program with the classic Azure provider
azure-classic-python	A minimal Python Pulumi program with the classic Azure provider
azure-classic-typescript	A minimal TypeScript Pulumi program with the classic Azure provider
azure-classic-visualbasic	A minimal VB.NET Pulumi program with the classic Azure provider
azure-csharp	A minimal Azure Native C# Pulumi program
azure-fsharp	A minimal Azure Native F# Pulumi program
azure-go	A minimal Azure Native Go Pulumi program
azure-javascript	A minimal JavaScript Pulumi program with the native Azure provider
azure-python	A minimal Azure Native Python Pulumi program
azure-typescript	A minimal Azure Native TypeScript Pulumi program
csharp	A minimal C# Pulumi program
digitalocean-go	A minimal DigitalOcean Go Pulumi program
digitalocean-javascript	A minimal DigitalOcean JavaScript Pulumi program
digitalocean-python	A minimal DigitalOcean Python Pulumi program
digitalocean-typescript	A minimal DigitalOcean TypeScript Pulumi program
equinix-metal-go	A minimal Equinix Metal Go Pulumi program
equinix-metal-javascript	A minimal Equinix Metal JavaScript Pulumi program
equinix-metal-python	A minimal Equinix Metal Python Pulumi program
equinix-metal-typescript	A minimal Equinix Metal TypeScript Pulumi program
fsharp	A minimal F# Pulumi program
gcp-csharp	A minimal GCP C# Pulumi program
gcp-fsharp	A minimal GCP F# Pulumi program
gcp-go	A minimal Google Cloud Go Pulumi program
gcp-javascript	A minimal Google Cloud JavaScript Pulumi program
gcp-python	A minimal Google Cloud Python Pulumi program
gcp-typescript	A minimal Google Cloud TypeScript Pulumi program
gcp-visualbasic	A minimal GCP VB.NET Pulumi program
go	A minimal Go Pulumi program
google-native-csharp	A minimal Google Cloud C# Pulumi program
google-native-go	A minimal Google Cloud Go Pulumi program
google-native-python	A minimal Google Cloud Python Pulumi program
google-native-typescript	A minimal Google Cloud TypeScript Pulumi program
hello-aws-javascript	A simple AWS serverless JavaScript Pulumi program
javascript	A minimal JavaScript Pulumi program
kubernetes-csharp	A minimal Kubernetes C# Pulumi program
kubernetes-fsharp	A minimal Kubernetes F# Pulumi program
kubernetes-go	A minimal Kubernetes Go Pulumi program
kubernetes-javascript	A minimal Kubernetes JavaScript Pulumi program
kubernetes-python	A minimal Kubernetes Python Pulumi program
kubernetes-typescript	A minimal Kubernetes TypeScript Pulumi program
linode-go	A minimal Linode Go Pulumi program
linode-javascript	A minimal Linode JavaScript Pulumi program
linode-python	A minimal Linode Python Pulumi program
linode-typescript	A minimal Linode TypeScript Pulumi program
openstack-go	A minimal OpenStack Go Pulumi program
openstack-javascript	A minimal OpenStack JavaScript Pulumi program
openstack-python	A minimal OpenStack Python Pulumi program
openstack-typescript	A minimal OpenStack TypeScript Pulumi program
python	A minimal Python Pulumi program
typescript	A minimal TypeScript Pulumi program
visualbasic	A minimal VB.NET Pulumi program
EOF
}

_choice_config_key() {
    _pulumi config --json | yq 'to_entries | .[] | .key + "	" + .value.value'
}

_choice_config_key_value() {
    _choice_config_key | _argc_util_transform suffix== nospace
}

_choice_all_stack() {
    _pulumi stack ls --json --all | yq '.[].name'
}

_choice_name_urn() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        :;
    else
        _choice_urn_cached
    fi
}

_choice_urn_cached() {
    _argc_util_cache 180 _choice_urn "pulumi__choice_urn:${argc_cwd:-`pwd`}:${argc_stack}"
}

_choice_inprogress_stack() {
    _pulumi stack ls --json | yq 'filter(.updateInProgress == false) | .[].name' 
}

_choice_plugin_kind() {
    _pulumi plugin ls --json | yq '.[].kind'
}

_choice_plugin_name() {
    _pulumi plugin ls --json | yq 'filter(.kind == "'$argc_kind'") | .[].name'
}

_choice_plugin_version() {
    _pulumi plugin ls --json | yq 'filter(.kind == "'$argc_kind'" && .name == "'$argc_name'") | .[].version'
}

_choice_urn() {
    if [[ -z "$argc_stack" ]]; then
        _pulumi stack export | yq '.deployment.resources[].urn'
    else
        _pulumi stack export --stack $argc_stack | yq '.deployment.resources[].urn'
    fi
}

_pulumi() {
    PULUMI_SKIP_UPDATE_CHECK=1 \
    pulumi $(_argc_util_param_select_options --cwd) "$@"
}

command eval "$(argc --argc-eval "$0" "$@")"