#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ starship bug-report
# @cmd Create a pre-populated GitHub issue with information about your configuration
# @flag -h --help    Print help
bug-report() {
    :;
}
# }} starship bug-report

# {{ starship completions
# @cmd Generate starship shell completions for your shell to stdout
# @flag -h --help    Print help
# @arg shell![bash|elvish|fish|powershell|zsh]
completions() {
    :;
}
# }} starship completions

# {{ starship config
# @cmd Edit the starship configuration
# @flag -h --help                    Print help
# @arg name[`_choice_config_key`]    Configuration key to edit
# @arg value                         Value to place into that key
config() {
    :;
}
# }} starship config

# {{ starship explain
# @cmd Explains the currently showing modules
# @option -s --status <STATUS_CODE>               The status code of the previously run command as an unsigned or signed 32bit integer
# @option --pipestatus                            Bash, Fish and Zsh support returning codes for each process in a pipeline
# @option -w --terminal-width <TERMINAL_WIDTH>    The width of the current interactive terminal [default: 80]
# @option -p --path                               The path that the prompt should render for
# @option -P --logical-path <LOGICAL_PATH>        The logical path that the prompt should render for.
# @option -d --cmd-duration <CMD_DURATION>        The execution duration of the last command, in milliseconds
# @option -k --keymap                             The keymap of fish/zsh/cmd [default: viins]
# @option -j --jobs                               The number of currently running jobs [default: 0]
# @flag -h --help                                 Print help
explain() {
    :;
}
# }} starship explain

# {{ starship init
# @cmd Prints the shell function used to execute starship
# @flag --print-full-init
# @flag -h --help    Print help
# @arg shell![bash|elvish|fish|powershell|zsh]
init() {
    :;
}
# }} starship init

# {{ starship module
# @cmd Prints a specific prompt module
# @flag -l --list                                 List out all supported modules
# @option -s --status <STATUS_CODE>               The status code of the previously run command as an unsigned or signed 32bit integer
# @option --pipestatus                            Bash, Fish and Zsh support returning codes for each process in a pipeline
# @option -w --terminal-width <TERMINAL_WIDTH>    The width of the current interactive terminal [default: 80]
# @option -p --path                               The path that the prompt should render for
# @option -P --logical-path <LOGICAL_PATH>        The logical path that the prompt should render for.
# @option -d --cmd-duration <CMD_DURATION>        The execution duration of the last command, in milliseconds
# @option -k --keymap                             The keymap of fish/zsh/cmd [default: viins]
# @option -j --jobs                               The number of currently running jobs [default: 0]
# @flag -h --help                                 Print help
# @arg name[`_choice_module`]                     The name of the module to be printed
module() {
    :;
}
# }} starship module

# {{ starship preset
# @cmd Prints a preset config
# @option -o --output    Output the preset to a file instead of stdout
# @flag -l --list        List out all preset names
# @flag -h --help        Print help
# @arg name[bracketed-segments|plain-text-symbols|pure-preset|no-nerd-font|tokyo-night|nerd-font-symbols|pastel-powerline|no-runtime-versions|no-empty-icons]  The name of preset to be printed
preset() {
    :;
}
# }} starship preset

# {{ starship print-config
# @cmd Prints the computed starship configuration
# @flag -d --default                  Print the default instead of the computed config
# @flag -h --help                     Print help
# @arg name*[`_choice_config_key`]    Configuration keys to print
print-config() {
    :;
}
# }} starship print-config

# {{ starship prompt
# @cmd Prints the full starship prompt
# @flag --right                                   Print the right prompt (instead of the standard left prompt)
# @option --profile                               Print the prompt with the specified profile name (instead of the standard left prompt)
# @flag --continuation                            Print the continuation prompt (instead of the standard left prompt)
# @option -s --status <STATUS_CODE>               The status code of the previously run command as an unsigned or signed 32bit integer
# @option --pipestatus                            Bash, Fish and Zsh support returning codes for each process in a pipeline
# @option -w --terminal-width <TERMINAL_WIDTH>    The width of the current interactive terminal [default: 80]
# @option -p --path                               The path that the prompt should render for
# @option -P --logical-path <LOGICAL_PATH>        The logical path that the prompt should render for.
# @option -d --cmd-duration <CMD_DURATION>        The execution duration of the last command, in milliseconds
# @option -k --keymap                             The keymap of fish/zsh/cmd [default: viins]
# @option -j --jobs                               The number of currently running jobs [default: 0]
# @flag -h --help                                 Print help
prompt() {
    :;
}
# }} starship prompt

# {{ starship session
# @cmd Generate random session key
# @flag -h --help    Print help
session() {
    :;
}
# }} starship session

# {{ starship timings
# @cmd Prints timings of all active modules
# @option -s --status <STATUS_CODE>               The status code of the previously run command as an unsigned or signed 32bit integer
# @option --pipestatus                            Bash, Fish and Zsh support returning codes for each process in a pipeline
# @option -w --terminal-width <TERMINAL_WIDTH>    The width of the current interactive terminal [default: 80]
# @option -p --path                               The path that the prompt should render for
# @option -P --logical-path <LOGICAL_PATH>        The logical path that the prompt should render for.
# @option -d --cmd-duration <CMD_DURATION>        The execution duration of the last command, in milliseconds
# @option -k --keymap                             The keymap of fish/zsh/cmd [default: viins]
# @option -j --jobs                               The number of currently running jobs [default: 0]
# @flag -h --help                                 Print help
timings() {
    :;
}
# }} starship timings

# {{ starship toggle
# @cmd Toggle a given starship module
# @flag -h --help    Print help
# @arg name!         The name of the module to be toggled
# @arg value         The key of the config to be toggled [default: disabled]
toggle() {
    :;
}
# }} starship toggle

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_config_key() {
    starship print-config  | \
    sed '/\[custom\]/,+1 { N; s/\[custom\]\n\s*//;}' | \
    yq -p toml '.. | path | select((. | length) <= 2)  | join "."' | \
    _argc_util_comp_parts .
}

_choice_module() {
    starship module --list | tail -n +3
}

command eval "$(argc --argc-eval "$0" "$@")"