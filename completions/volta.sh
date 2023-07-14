#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --verbose       Enables verbose diagnostics
# @flag --quiet         Prevents unnecessary output
# @flag -v --version    Prints the current version of Volta
# @flag -h --help       Prints help information


# {{ volta fetch
# @cmd Fetches a tool to the local machine
# @flag --verbose                        Enables verbose diagnostics
# @flag --quiet                          Prevents unnecessary output
# @flag -h --help                        Prints help information
# @arg tool-version+ <tool[@version]>    Tools to fetch, like `node`, `yarn@latest` or `your-package@^14.4.3`.
fetch() {
    :;
}
# }} volta fetch

# {{ volta install
# @cmd Installs a tool in your toolchain
# @flag --verbose                        Enables verbose diagnostics
# @flag --quiet                          Prevents unnecessary output
# @flag -h --help                        Prints help information
# @arg tool-version+ <tool[@version]>    Tools to install, like `node`, `yarn@latest` or `your-package@^14.4.3`.
install() {
    :;
}
# }} volta install

# {{ volta uninstall
# @cmd Uninstalls a tool from your toolchain
# @flag --verbose               Enables verbose diagnostics
# @flag --quiet                 Prevents unnecessary output
# @flag -h --help               Prints help information
# @arg tool![`_choice_tool`]    The tool to uninstall, e.g. `node`, `npm`, `yarn`, or <package>
uninstall() {
    :;
}
# }} volta uninstall

# {{ volta pin
# @cmd Pins your project's runtime or package manager
# @flag --verbose                        Enables verbose diagnostics
# @flag --quiet                          Prevents unnecessary output
# @flag -h --help                        Prints help information
# @arg tool-version+ <tool[@version]>    Tools to pin, like `node@lts` or `yarn@^1.14`.
pin() {
    :;
}
# }} volta pin

# {{ volta list
# @cmd Displays the current toolchain
# @flag -c --current                        Show the currently-active tool(s).
# @flag -d --default                        Show your default tool(s).
# @flag --verbose                           Enables verbose diagnostics
# @flag --quiet                             Prevents unnecessary output
# @flag -h --help                           Prints help information
# @option --format[human|plain] <format>    Specify the output format.
# @arg tool!                                The tool to lookup - `all`, `node`, `npm`, `yarn`, `pnpm`, or the name of a package or binary.
list() {
    :;
}
# }} volta list

# {{ volta completions
# @cmd Generates Volta completions
# @flag -f --force                                Write over an existing file, if any.
# @flag --verbose                                 Enables verbose diagnostics
# @flag --quiet                                   Prevents unnecessary output
# @flag -h --help                                 Prints help information
# @option -o --output <out_file>                  File to write generated completions to
# @arg shell![zsh|bash|fish|powershell|elvish]    Shell to generate completions for
completions() {
    :;
}
# }} volta completions

# {{ volta which
# @cmd Locates the actual binary that will be called by Volta
# @flag --verbose    Enables verbose diagnostics
# @flag --quiet      Prevents unnecessary output
# @flag -h --help    Prints help information
# @arg binary!       The binary to find, e.g. `node` or `npm`
which() {
    :;
}
# }} volta which

# {{ volta setup
# @cmd Enables Volta for the current user / shell
# @flag --verbose    Enables verbose diagnostics
# @flag --quiet      Prevents unnecessary output
# @flag -h --help    Prints help information
setup() {
    :;
}
# }} volta setup

# {{ volta run
# @cmd Run a command with custom Node, npm, pnpm, and/or Yarn versions
# @flag --bundled-npm            Forces npm to be the version bundled with Node
# @flag --no-pnpm                Disables pnpm
# @flag --no-yarn                Disables Yarn
# @flag --verbose                Enables verbose diagnostics
# @flag --quiet                  Prevents unnecessary output
# @flag -h --help                Prints help information
# @option --node <version>       Set the custom Node version
# @option --npm <version>        Set the custom npm version
# @option --pnpm <version>       Set the custon pnpm version
# @option --yarn <version>       Set the custom Yarn version
# @option --env* <NAME=value>    Set an environment variable (can be used multiple times)
# @arg args+                     Arguments to pass to the command
run() {
    :;
}
# }} volta run

_choice_tool() {
    volta list --format plain | gawk '{print $2}'
}

command eval "$(argc --argc-eval "$0" "$@")"