#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --model[`_choice_model`]        Select a LLM model
# @option --prompt                           Use the system prompt
# @option -r --role[`_choice_role`]          Select a role
# @option -s --session[`_choice_session`]    Start or join a session
# @flag --save-session                       Forces the session to be saved
# @option -a --agent[`_choice_agent`]        Start a agent
# @option -R --rag[`_choice_rag`]            Start a RAG
# @option --serve <ADDRESS>                  Serve the LLM API and WebAPP
# @flag -e --execute                         Execute commands in natural language
# @flag -c --code                            Output code only
# @option -f --file                          Include files with the message
# @flag -S --no-stream                       Turn off stream mode
# @flag --dry-run                            Display the message without sending it
# @flag --info                               Display information
# @flag --list-models                        List all available chat models
# @flag --list-roles                         List all roles
# @flag --list-sessions                      List all sessions
# @flag --list-agents                        List all agents
# @flag --list-rags                          List all RAGs
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

_choice_agent() {
    aichat --list-agents
}

_choice_rag() {
    aichat --list-rags
}

command eval "$(argc --argc-eval "$0" "$@")"