#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --model[`_choice_model`]        Choose a LLM model
# @option -r --role[`_choice_role`]          Choose a role
# @option -s --session[`_choice_session`]    Create or reuse a session
# @flag -e --execute                         Execute commands using natural language
# @flag -c --code                            Generate only code
# @option -f --file*                         Attach files to the message to be sent
# @flag -H --no-highlight                    Disable syntax highlighting
# @flag -S --no-stream                       No stream output
# @option -w --wrap                          Specify the text-wrapping mode (no, auto, <max-width>)
# @flag --light-theme                        Use light theme
# @flag --dry-run                            Run in dry run mode
# @flag --info                               Print related information
# @flag --list-models                        List all available models
# @flag --list-roles                         List all available roles
# @flag --list-sessions                      List all available sessions
# @flag -h --help                            Print help
# @flag -V --version                         Print version
# @arg text*                                 Input text

_choice_model() {
    aichat --list-models
}

_choice_role() {
    aichat --list-roles
}

_choice_session() {
    aichat --list-sessions
}

command eval "$(argc --argc-eval "$0" "$@")"