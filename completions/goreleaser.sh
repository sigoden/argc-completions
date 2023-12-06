#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug         Enable verbose mode
# @flag -h --help       help for goreleaser
# @flag --verbose       Enable verbose mode
# @flag -v --version    version for goreleaser

# {{ goreleaser build
# @cmd Builds the current project
# @flag --clean                     Remove the dist folder before building
# @option -f --config <file>        Load configuration from file
# @flag -h --help                   help for build
# @option --id* <value>             Builds only the specified build ids
# @option -o --output <path>        Copy the binary to the path after the build.
# @option -p --parallelism <int>    Amount tasks to run concurrently (default: number of CPUs)
# @flag --single-target             Builds only for current GOOS and GOARCH, regardless of what's set in the configuration file
# @option --skip* <string>          Skip the given options (valid options are before, post-hooks, pre-hooks, validate)
# @flag --snapshot                  Generate an unversioned snapshot build, skipping all validations
# @option --timeout <duration>      Timeout to the entire build process (default 30m0s)
# @flag --debug                     Enable verbose mode
# @flag --verbose                   Enable verbose mode
build() {
    :;
}
# }} goreleaser build

# {{ goreleaser check
# @cmd Checks if configuration is valid
# @flag -h --help     help for check
# @flag -q --quiet    Quiet mode: no output
# @flag --debug       Enable verbose mode
# @flag --verbose     Enable verbose mode
# @arg configuration-files* <configuration files>
check() {
    :;
}
# }} goreleaser check

# {{ goreleaser completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help    help for completion
# @flag --debug      Enable verbose mode
# @flag --verbose    Enable verbose mode
completion() {
    :;
}

# {{{ goreleaser completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help            help for bash
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              Enable verbose mode
# @flag --verbose            Enable verbose mode
completion::bash() {
    :;
}
# }}} goreleaser completion bash

# {{{ goreleaser completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help            help for fish
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              Enable verbose mode
# @flag --verbose            Enable verbose mode
completion::fish() {
    :;
}
# }}} goreleaser completion fish

# {{{ goreleaser completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help            help for powershell
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              Enable verbose mode
# @flag --verbose            Enable verbose mode
completion::powershell() {
    :;
}
# }}} goreleaser completion powershell

# {{{ goreleaser completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help            help for zsh
# @flag --no-descriptions    disable completion descriptions
# @flag --debug              Enable verbose mode
# @flag --verbose            Enable verbose mode
completion::zsh() {
    :;
}
# }}} goreleaser completion zsh
# }} goreleaser completion

# {{ goreleaser healthcheck
# @cmd Checks if needed tools are installed
# @option -f --config <file>    Configuration file
# @flag -h --help               help for healthcheck
# @flag -q --quiet              Quiet mode: no output
# @flag --debug                 Enable verbose mode
# @flag --verbose               Enable verbose mode
healthcheck() {
    :;
}
# }} goreleaser healthcheck

# {{ goreleaser init
# @cmd Generates a .goreleaser.yaml file
# @option -f --config <file>    Load configuration from file (default ".goreleaser.yaml")
# @flag -h --help               help for init
# @flag --debug                 Enable verbose mode
# @flag --verbose               Enable verbose mode
init() {
    :;
}
# }} goreleaser init

# {{ goreleaser jsonschema
# @cmd outputs goreleaser's JSON schema
# @flag -h --help               help for jsonschema
# @option -o --output <file>    Where to save the JSONSchema file (default "-")
# @flag --debug                 Enable verbose mode
# @flag --verbose               Enable verbose mode
jsonschema() {
    :;
}
# }} goreleaser jsonschema

# {{ goreleaser release
# @cmd Releases the current project
# @flag --auto-snapshot                   Automatically sets --snapshot if the repository is dirty
# @flag --clean                           Removes the dist folder
# @option -f --config <file>              Load configuration from file
# @flag --fail-fast                       Whether to abort the release publishing on the first error
# @flag -h --help                         help for release
# @option -p --parallelism <int>          Amount tasks to run concurrently (default: number of CPUs)
# @option --release-footer <file>         Load custom release notes footer from a markdown file
# @option --release-footer-tmpl <file>    Load custom release notes footer from a templated markdown file (overrides --release-footer)
# @option --release-header <file>         Load custom release notes header from a markdown file
# @option --release-header-tmpl <file>    Load custom release notes header from a templated markdown file (overrides --release-header)
# @option --release-notes <file>          Load custom release notes from a markdown file (will skip GoReleaser changelog generation)
# @option --release-notes-tmpl <file>     Load custom release notes from a templated markdown file (overrides --release-notes)
# @option --skip* <string>                Skip the given options (valid options are announce, aur, before, docker, homebrew, ko, nix, publish, sbom, scoop, sign, snapcraft, validate, winget)
# @flag --snapshot                        Generate an unversioned snapshot release, skipping all validations and without publishing any artifacts (implies --skip=announce,publish,validate)
# @option --timeout <duration>            Timeout to the entire release process (default 30m0s)
# @flag --debug                           Enable verbose mode
# @flag --verbose                         Enable verbose mode
release() {
    :;
}
# }} goreleaser release

command eval "$(argc --argc-eval "$0" "$@")"