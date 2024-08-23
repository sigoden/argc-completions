#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cache-dir <dir>                    Directory to store cache (default: $XDG_CACHE_HOME/gptscript) ($GPTSCRIPT_CACHE_DIR)
# @option --chat-state <string>                The chat state to continue, or null to start a new chat and return the state ($GPTSCRIPT_CHAT_STATE)
# @option -C --chdir <dir>                     Change current working directory ($GPTSCRIPT_CHDIR)
# @flag --color                                Use color in output (default true) ($GPTSCRIPT_COLOR)
# @option --config <file>                      Path to GPTScript config file ($GPTSCRIPT_CONFIG)
# @flag --confirm                              Prompt before running potentially dangerous commands ($GPTSCRIPT_CONFIRM)
# @option --credential-context <string>        Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @option --credential-override* <string>      Credentials to override (ex: --credential-override github.com/example/cred-tool:API_TOKEN=1234) ($GPTSCRIPT_CREDENTIAL_OVERRIDE)
# @flag --debug                                Enable debug logging ($GPTSCRIPT_DEBUG)
# @flag --debug-messages                       Enable logging of chat completion calls ($GPTSCRIPT_DEBUG_MESSAGES)
# @option --default-model <string>             Default LLM model to use ($GPTSCRIPT_DEFAULT_MODEL) (default "gpt-4o")
# @option --default-model-provider <string>    Default LLM model provider to use, this will override OpenAI settings ($GPTSCRIPT_DEFAULT_MODEL_PROVIDER)
# @flag --disable-cache                        Disable caching of LLM API responses ($GPTSCRIPT_DISABLE_CACHE)
# @flag --disable-tui                          Don't use chat TUI but instead verbose output ($GPTSCRIPT_DISABLE_TUI)
# @option --dump-state <file>                  Dump the internal execution state to a file ($GPTSCRIPT_DUMP_STATE)
# @option --events-stream-to <file>            Stream events to this location, could be a file descriptor/handle (e.g. fd://2), filename, or named pipe (e.g. \\.\pipe\my-pipe) ($GPTSCRIPT_EVENTS_STREAM_TO)
# @flag --force-chat                           Force an interactive chat session if even the top level tool is not a chat tool ($GPTSCRIPT_FORCE_CHAT)
# @flag --force-sequential                     Force parallel calls to run sequentially ($GPTSCRIPT_FORCE_SEQUENTIAL)
# @flag -h --help                              help for gptscript
# @option -f --input <file>                    Read input from a file ("-" for stdin) ($GPTSCRIPT_INPUT_FILE)
# @flag --list-models                          List the models available and exit ($GPTSCRIPT_LIST_MODELS)
# @flag --list-tools                           List built-in tools and exit ($GPTSCRIPT_LIST_TOOLS)
# @flag --no-trunc                             Do not truncate long log messages ($GPTSCRIPT_NO_TRUNC)
# @option --openai-api-key <string>            OpenAI API KEY ($OPENAI_API_KEY)
# @option --openai-base-url <string>           OpenAI base URL ($OPENAI_BASE_URL)
# @option --openai-org-id <string>             OpenAI organization ID ($OPENAI_ORG_ID)
# @option -o --output <file>                   Save output to a file, or - for stdout ($GPTSCRIPT_OUTPUT)
# @flag -q --quiet                             No output logging (set --quiet=false to force on even when there is no TTY) ($GPTSCRIPT_QUIET)
# @option --save-chat-state-file <file>        A file to save the chat state to so that a conversation can be resumed with --chat-state ($GPTSCRIPT_SAVE_CHAT_STATE_FILE)
# @option --sub-tool <file>                    Use tool of this name, not the first tool in file ($GPTSCRIPT_SUB_TOOL)
# @flag --ui                                   Launch the UI ($GPTSCRIPT_UI)
# @flag -v --version                           version for gptscript
# @option --workspace <dir>                    Directory to use for the workspace, if specified it will not be deleted on exit ($GPTSCRIPT_WORKSPACE)
# @arg program_file
# @arg input*

# {{ gptscript credential
# @cmd List stored credentials
# @flag --all-contexts                     List credentials for all contexts ($GPTSCRIPT_CREDENTIAL_ALL_CONTEXTS)
# @flag -h --help                          help for credential
# @flag --show-env-vars                    Show names of environment variables in each credential ($GPTSCRIPT_CREDENTIAL_SHOW_ENV_VARS)
# @option --credential-context <string>    Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
credential() {
    :;
}

# {{{ gptscript credential delete
# @cmd Delete a stored credential
# @flag -h --help                          help for delete
# @option --credential-context <string>    Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @arg credential-name! <credential name>
credential::delete() {
    :;
}
# }}} gptscript credential delete

# {{{ gptscript credential show
# @cmd Show the secret value of a stored credential
# @flag -h --help                          help for show
# @option --credential-context <string>    Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @arg credential-name! <credential name>
credential::show() {
    :;
}
# }}} gptscript credential show
# }} gptscript credential

# {{ gptscript eval
# @cmd
# @flag --chat                                 Enable chat ($GPTSCRIPT_EVAL_CHAT)
# @flag -h --help                              help for eval
# @flag --internal-prompt                      ($GPTSCRIPT_EVAL_INTERNAL_PROMPT)
# @flag --json                                 Output JSON ($GPTSCRIPT_EVAL_JSON)
# @option --max-tokens <int>                   Maximum number of tokens to output ($GPTSCRIPT_EVAL_MAX_TOKENS)
# @option --model <string>                     The model to use ($GPTSCRIPT_EVAL_MODEL)
# @option --temperature <string>               Set the temperature, "creativity" ($GPTSCRIPT_EVAL_TEMPERATURE)
# @option --tools* <string>                    Tools available to call ($GPTSCRIPT_EVAL_TOOLS)
# @option --cache-dir <dir>                    Directory to store cache (default: $XDG_CACHE_HOME/gptscript) ($GPTSCRIPT_CACHE_DIR)
# @option -C --chdir <dir>                     Change current working directory ($GPTSCRIPT_CHDIR)
# @flag --color                                Use color in output (default true) ($GPTSCRIPT_COLOR)
# @option --config <file>                      Path to GPTScript config file ($GPTSCRIPT_CONFIG)
# @flag --confirm                              Prompt before running potentially dangerous commands ($GPTSCRIPT_CONFIRM)
# @option --credential-context <string>        Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @option --credential-override* <string>      Credentials to override (ex: --credential-override github.com/example/cred-tool:API_TOKEN=1234) ($GPTSCRIPT_CREDENTIAL_OVERRIDE)
# @flag --debug                                Enable debug logging ($GPTSCRIPT_DEBUG)
# @flag --debug-messages                       Enable logging of chat completion calls ($GPTSCRIPT_DEBUG_MESSAGES)
# @option --default-model <string>             Default LLM model to use ($GPTSCRIPT_DEFAULT_MODEL) (default "gpt-4o")
# @option --default-model-provider <string>    Default LLM model provider to use, this will override OpenAI settings ($GPTSCRIPT_DEFAULT_MODEL_PROVIDER)
# @flag --disable-cache                        Disable caching of LLM API responses ($GPTSCRIPT_DISABLE_CACHE)
# @option --dump-state <file>                  Dump the internal execution state to a file ($GPTSCRIPT_DUMP_STATE)
# @option --events-stream-to <file>            Stream events to this location, could be a file descriptor/handle (e.g. fd://2), filename, or named pipe (e.g. \\.\pipe\my-pipe) ($GPTSCRIPT_EVENTS_STREAM_TO)
# @option -f --input <file>                    Read input from a file ("-" for stdin) ($GPTSCRIPT_INPUT_FILE)
# @flag --no-trunc                             Do not truncate long log messages ($GPTSCRIPT_NO_TRUNC)
# @option --openai-api-key <string>            OpenAI API KEY ($OPENAI_API_KEY)
# @option --openai-base-url <string>           OpenAI base URL ($OPENAI_BASE_URL)
# @option --openai-org-id <string>             OpenAI organization ID ($OPENAI_ORG_ID)
# @option -o --output <file>                   Save output to a file, or - for stdout ($GPTSCRIPT_OUTPUT)
# @flag -q --quiet                             No output logging (set --quiet=false to force on even when there is no TTY) ($GPTSCRIPT_QUIET)
# @option --workspace <dir>                    Directory to use for the workspace, if specified it will not be deleted on exit ($GPTSCRIPT_WORKSPACE)
eval_() {
    :;
}
# }} gptscript eval

# {{ gptscript fmt
# @cmd
# @flag -h --help                              help for fmt
# @flag -w --write                             Write output to file instead of stdout ($GPTSCRIPT_FMT_WRITE)
# @option --cache-dir <dir>                    Directory to store cache (default: $XDG_CACHE_HOME/gptscript) ($GPTSCRIPT_CACHE_DIR)
# @option -C --chdir <dir>                     Change current working directory ($GPTSCRIPT_CHDIR)
# @flag --color                                Use color in output (default true) ($GPTSCRIPT_COLOR)
# @option --config <file>                      Path to GPTScript config file ($GPTSCRIPT_CONFIG)
# @flag --confirm                              Prompt before running potentially dangerous commands ($GPTSCRIPT_CONFIRM)
# @option --credential-context <string>        Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @option --credential-override* <string>      Credentials to override (ex: --credential-override github.com/example/cred-tool:API_TOKEN=1234) ($GPTSCRIPT_CREDENTIAL_OVERRIDE)
# @flag --debug                                Enable debug logging ($GPTSCRIPT_DEBUG)
# @flag --debug-messages                       Enable logging of chat completion calls ($GPTSCRIPT_DEBUG_MESSAGES)
# @option --default-model <string>             Default LLM model to use ($GPTSCRIPT_DEFAULT_MODEL) (default "gpt-4o")
# @option --default-model-provider <string>    Default LLM model provider to use, this will override OpenAI settings ($GPTSCRIPT_DEFAULT_MODEL_PROVIDER)
# @flag --disable-cache                        Disable caching of LLM API responses ($GPTSCRIPT_DISABLE_CACHE)
# @option --dump-state <file>                  Dump the internal execution state to a file ($GPTSCRIPT_DUMP_STATE)
# @option --events-stream-to <file>            Stream events to this location, could be a file descriptor/handle (e.g. fd://2), filename, or named pipe (e.g. \\.\pipe\my-pipe) ($GPTSCRIPT_EVENTS_STREAM_TO)
# @option -f --input <file>                    Read input from a file ("-" for stdin) ($GPTSCRIPT_INPUT_FILE)
# @flag --no-trunc                             Do not truncate long log messages ($GPTSCRIPT_NO_TRUNC)
# @option --openai-api-key <string>            OpenAI API KEY ($OPENAI_API_KEY)
# @option --openai-base-url <string>           OpenAI base URL ($OPENAI_BASE_URL)
# @option --openai-org-id <string>             OpenAI organization ID ($OPENAI_ORG_ID)
# @option -o --output <file>                   Save output to a file, or - for stdout ($GPTSCRIPT_OUTPUT)
# @flag -q --quiet                             No output logging (set --quiet=false to force on even when there is no TTY) ($GPTSCRIPT_QUIET)
# @option --workspace <dir>                    Directory to use for the workspace, if specified it will not be deleted on exit ($GPTSCRIPT_WORKSPACE)
fmt() {
    :;
}
# }} gptscript fmt

# {{ gptscript getenv
# @cmd Looks up an environment variable for use in GPTScript tools
# @flag -h --help                              help for getenv
# @option --cache-dir <dir>                    Directory to store cache (default: $XDG_CACHE_HOME/gptscript) ($GPTSCRIPT_CACHE_DIR)
# @option -C --chdir <dir>                     Change current working directory ($GPTSCRIPT_CHDIR)
# @flag --color                                Use color in output (default true) ($GPTSCRIPT_COLOR)
# @option --config <file>                      Path to GPTScript config file ($GPTSCRIPT_CONFIG)
# @flag --confirm                              Prompt before running potentially dangerous commands ($GPTSCRIPT_CONFIRM)
# @option --credential-context <string>        Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @option --credential-override* <string>      Credentials to override (ex: --credential-override github.com/example/cred-tool:API_TOKEN=1234) ($GPTSCRIPT_CREDENTIAL_OVERRIDE)
# @flag --debug                                Enable debug logging ($GPTSCRIPT_DEBUG)
# @flag --debug-messages                       Enable logging of chat completion calls ($GPTSCRIPT_DEBUG_MESSAGES)
# @option --default-model <string>             Default LLM model to use ($GPTSCRIPT_DEFAULT_MODEL) (default "gpt-4o")
# @option --default-model-provider <string>    Default LLM model provider to use, this will override OpenAI settings ($GPTSCRIPT_DEFAULT_MODEL_PROVIDER)
# @flag --disable-cache                        Disable caching of LLM API responses ($GPTSCRIPT_DISABLE_CACHE)
# @option --dump-state <file>                  Dump the internal execution state to a file ($GPTSCRIPT_DUMP_STATE)
# @option --events-stream-to <file>            Stream events to this location, could be a file descriptor/handle (e.g. fd://2), filename, or named pipe (e.g. \\.\pipe\my-pipe) ($GPTSCRIPT_EVENTS_STREAM_TO)
# @option -f --input <file>                    Read input from a file ("-" for stdin) ($GPTSCRIPT_INPUT_FILE)
# @flag --no-trunc                             Do not truncate long log messages ($GPTSCRIPT_NO_TRUNC)
# @option --openai-api-key <string>            OpenAI API KEY ($OPENAI_API_KEY)
# @option --openai-base-url <string>           OpenAI base URL ($OPENAI_BASE_URL)
# @option --openai-org-id <string>             OpenAI organization ID ($OPENAI_ORG_ID)
# @option -o --output <file>                   Save output to a file, or - for stdout ($GPTSCRIPT_OUTPUT)
# @flag -q --quiet                             No output logging (set --quiet=false to force on even when there is no TTY) ($GPTSCRIPT_QUIET)
# @option --workspace <dir>                    Directory to use for the workspace, if specified it will not be deleted on exit ($GPTSCRIPT_WORKSPACE)
# @arg key
# @arg default
getenv() {
    :;
}
# }} gptscript getenv

# {{ gptscript parse
# @cmd
# @flag -h --help                              help for parse
# @flag -p --pretty-print                      Indent the json output ($GPTSCRIPT_PARSE_PRETTY_PRINT)
# @option --cache-dir <dir>                    Directory to store cache (default: $XDG_CACHE_HOME/gptscript) ($GPTSCRIPT_CACHE_DIR)
# @option -C --chdir <dir>                     Change current working directory ($GPTSCRIPT_CHDIR)
# @flag --color                                Use color in output (default true) ($GPTSCRIPT_COLOR)
# @option --config <file>                      Path to GPTScript config file ($GPTSCRIPT_CONFIG)
# @flag --confirm                              Prompt before running potentially dangerous commands ($GPTSCRIPT_CONFIRM)
# @option --credential-context <string>        Context name in which to store credentials ($GPTSCRIPT_CREDENTIAL_CONTEXT) (default "default")
# @option --credential-override* <string>      Credentials to override (ex: --credential-override github.com/example/cred-tool:API_TOKEN=1234) ($GPTSCRIPT_CREDENTIAL_OVERRIDE)
# @flag --debug                                Enable debug logging ($GPTSCRIPT_DEBUG)
# @flag --debug-messages                       Enable logging of chat completion calls ($GPTSCRIPT_DEBUG_MESSAGES)
# @option --default-model <string>             Default LLM model to use ($GPTSCRIPT_DEFAULT_MODEL) (default "gpt-4o")
# @option --default-model-provider <string>    Default LLM model provider to use, this will override OpenAI settings ($GPTSCRIPT_DEFAULT_MODEL_PROVIDER)
# @flag --disable-cache                        Disable caching of LLM API responses ($GPTSCRIPT_DISABLE_CACHE)
# @option --dump-state <file>                  Dump the internal execution state to a file ($GPTSCRIPT_DUMP_STATE)
# @option --events-stream-to <file>            Stream events to this location, could be a file descriptor/handle (e.g. fd://2), filename, or named pipe (e.g. \\.\pipe\my-pipe) ($GPTSCRIPT_EVENTS_STREAM_TO)
# @option -f --input <file>                    Read input from a file ("-" for stdin) ($GPTSCRIPT_INPUT_FILE)
# @flag --no-trunc                             Do not truncate long log messages ($GPTSCRIPT_NO_TRUNC)
# @option --openai-api-key <string>            OpenAI API KEY ($OPENAI_API_KEY)
# @option --openai-base-url <string>           OpenAI base URL ($OPENAI_BASE_URL)
# @option --openai-org-id <string>             OpenAI organization ID ($OPENAI_ORG_ID)
# @option -o --output <file>                   Save output to a file, or - for stdout ($GPTSCRIPT_OUTPUT)
# @flag -q --quiet                             No output logging (set --quiet=false to force on even when there is no TTY) ($GPTSCRIPT_QUIET)
# @option --workspace <dir>                    Directory to use for the workspace, if specified it will not be deleted on exit ($GPTSCRIPT_WORKSPACE)
parse() {
    :;
}
# }} gptscript parse

command eval "$(argc --argc-eval "$0" "$@")"