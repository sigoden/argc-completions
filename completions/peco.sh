#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                         show this help message and exit
# @option --query <value>                 initial value for query
# @option --rcfile <file>                 path to the settings file
# @flag --version                         print the version and exit
# @option -b --buffer-size <n>            number of lines to keep in search buffer
# @flag --null                            expect NUL (\0) as separator for target/output
# @option --initial-index <n>             position of the initial index of the selection (0 base)
# @option --initial-matcher <value>       specify the default matcher (deprecated)
# @option --initial-filter <value>        specify the default filter
# @option --prompt <value>                specify the prompt string
# @option --layout[top-down|bottom-up]    layout to be used.
# @flag --select-1                        select first item and immediately exit if the input contains only 1 item
# @option --on-cancel[success|error]      specify action on user cancel.
# @option --selection-prefix <value>      use a prefix instead of changing line color to indicate currently selected lines.
# @option --exec[`_module_os_command`]    execute command instead of finishing/terminating peco.
# @flag --print-query                     print out the current query as first line of output
# @arg file

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"