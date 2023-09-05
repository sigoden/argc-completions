#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                               Show help and exit.
# @flag -V --version                            Show version information and exit.
# @option -c[`_module_os_command`] <COMMAND>    Run a single command and exit.
# @flag -i --interactive                        Force running in interactive mode.
# @flag -l --login                              Run as a login shell.
# @option --rc*,[`_choice_file`]                The xonshrc files to load, these may be either xonsh files or directories containing xonsh files
# @flag --no-rc                                 Do not load any xonsh RC files.
# @flag --no-script-cache                       Do not cache scripts as they are run.
# @flag --cache-everything                      Use a cache, even for interactive commands.
# @option -D <ITEM>                             Define an environment variable, in the form of -DNAME=VAL.
# @option --shell-type[`_choice_shell_type`] <SHELL_TYPE>  What kind of shell should be used.
# @flag --timings                               Prints timing information before the prompt is shown.
# @arg file
# @arg args*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_file() {
    _argc_util_comp_path
}

_choice_shell_type() {
    printf "%s\n" b best d dumb ptk ptk1 ptk2 prompt-toolkit prompt_toolkit prompt-toolkit1 prompt-toolkit2 prompt-toolkit3 prompt_toolkit3 ptk3 rand random rl readline
}

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