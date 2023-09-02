#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --complete                      Print tab-completion candidates for given parse remainder.
# @option --hide <STRING>               Set default value of run()'s 'hide' kwarg.
# @flag --list-agent-keys               Display ssh-agent key list, and exit.
# @flag --no-dedupe                     Disable task deduplication.
# @option --print-completion-script[bash|zsh|fish] <STRING>  Print the tab-completion script for your preferred shell (bash|zsh|fish).
# @flag --prompt-for-login-password     Request an upfront SSH-auth password prompt.
# @flag --prompt-for-passphrase         Request an upfront SSH key passphrase prompt.
# @flag --prompt-for-sudo-password      Prompt user at start of session for the sudo.password config value.
# @flag --write-pyc                     Enable creation of .pyc files.
# @option -c --collection <STRING>      Specify collection name to load.
# @flag -d --debug                      Enable debug output.
# @option -D --list-depth <INT>         When listing tasks, only show the first INT levels.
# @flag -e --echo                       Echo executed commands before running.
# @option -f --config <STRING>          Runtime configuration file to use.
# @option -F --list-format[default|nested|json] <STRING>  Change the display format used when listing tasks.
# @option -h --help <STRING>            Show core or per-task help and exit.
# @option -H --hosts*, <STRING>         Comma-separated host name(s) to execute tasks against.
# @flag -i --identity                   Path to runtime SSH identity (key) file.
# @option -l --list <STRING>            List available tasks, optionally limited to a namespace.
# @flag -p --pty                        Use a pty when executing shell commands.
# @option -r --search-root <DIR>        Change root directory used for finding task modules.
# @flag -R --dry                        Echo commands instead of running.
# @option -S --ssh-config <FILE>        Path to runtime SSH config file.
# @option -t --connect-timeout <INT>    Specifies default connection timeout, in seconds.
# @option -T --command-timeout <INT>    Specify a global command execution timeout, in seconds.
# @flag -V --version                    Show version and exit.
# @flag -w --warn-only                  Warn, instead of failing, when shell commands fail.
# @arg tasks*[`_choice_task`]

_choice_task() {
    fab -l | sed -n 's/^  \(\S\+\)\s*\(.*\)$/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"