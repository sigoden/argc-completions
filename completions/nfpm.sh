#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       help for nfpm
# @flag -v --version    version for nfpm

# {{ nfpm completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help    help for completion
completion() {
    :;
}

# {{{ nfpm completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help            help for bash
# @flag --no-descriptions    disable completion descriptions
completion::bash() {
    :;
}
# }}} nfpm completion bash

# {{{ nfpm completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help            help for fish
# @flag --no-descriptions    disable completion descriptions
completion::fish() {
    :;
}
# }}} nfpm completion fish

# {{{ nfpm completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help            help for powershell
# @flag --no-descriptions    disable completion descriptions
completion::powershell() {
    :;
}
# }}} nfpm completion powershell

# {{{ nfpm completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help            help for zsh
# @flag --no-descriptions    disable completion descriptions
completion::zsh() {
    :;
}
# }}} nfpm completion zsh
# }} nfpm completion

# {{ nfpm init
# @cmd Creates a sample nfpm.yaml configuration file
# @option -f --config <file>    path to the to-be-created config file (default "nfpm.yaml")
# @flag -h --help               help for init
init() {
    :;
}
# }} nfpm init

# {{ nfpm jsonschema
# @cmd Outputs nFPM's JSON schema
# @flag -h --help               help for jsonschema
# @option -o --output <path>    where to save the json schema (default "-")
jsonschema() {
    :;
}
# }} nfpm jsonschema

# {{ nfpm package
# @cmd Creates a package based on the given config file and flags
# @option -f --config <file>    config file to be used (default "nfpm.yaml")
# @flag -h --help               help for package
# @option -p --packager[apk|deb|rpm|archlinux] <string>  which packager implementation to use
# @option -t --target <file>    where to save the generated package (filename, folder or empty for current folder)
package() {
    :;
}
# }} nfpm package

command eval "$(argc --argc-eval "$0" "$@")"