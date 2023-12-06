#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --changelog                             Print changelog
# @flag --check                                 Run `--fmt` in 'check' mode.
# @flag --choose                                Select one or more recipes to run using a binary.
# @flag --clear-shell-args                      Clear shell arguments
# @flag -n --dry-run                            Print what just would do without doing it
# @flag --dump                                  Print justfile
# @flag -e --edit                               Edit justfile with editor given by $VISUAL or $EDITOR, falling back to `vim`
# @flag --evaluate                              Evaluate and print all variables.
# @flag --fmt                                   Format and overwrite justfile
# @flag --highlight                             Highlight echoed recipe lines in bold
# @flag --init                                  Initialize new justfile in project root
# @flag -l --list                               List available recipes and their arguments
# @flag --no-dotenv                             Don't load `.env` file
# @flag --no-highlight                          Don't highlight echoed recipe lines in bold
# @flag -q --quiet                              Suppress all output
# @flag --shell-command                         Invoke <COMMAND> with the shell used to run recipe lines and backticks
# @flag --summary                               List names of available recipes
# @flag -u --unsorted                           Return list and summary entries in source order
# @flag --unstable                              Enable unstable features
# @flag --variables                             List names of variables
# @flag -v --verbose                            Use verbose output
# @flag -h --help                               Print help information
# @flag -V --version                            Print version information
# @option --chooser                             Override binary invoked by `--choose`
# @option --color[auto|always|never]            Print colorful output [default: auto]
# @option -c --command[`_module_os_command`]    Run an arbitrary command with the working directory, `.env`, overrides, and exports set
# @option --command-color[black|blue|cyan|green|purple|red|yellow]  Echo recipe lines in <COMMAND-COLOR>
# @option --completions[zsh|bash|fish|powershell|elvish] <SHELL>  Print shell completion script for <SHELL>
# @option --dotenv-filename                     Search for environment file named <DOTENV-FILENAME> instead of `.env`
# @option --dotenv-path                         Load environment file at <DOTENV-PATH> instead of searching for one
# @option --dump-format[just|json] <FORMAT>     Dump justfile as <FORMAT> [default: just]
# @option -f --justfile                         Use <JUSTFILE> as justfile
# @option --list-heading <TEXT>                 Print <TEXT> before list
# @option --list-prefix <TEXT>                  Print <TEXT> before each list item
# @option --set <VARIABLE> <VALUE>              Override <VARIABLE> with <VALUE>
# @option --shell                               Invoke <SHELL> to run recipes
# @option --shell-arg*                          Invoke shell with <SHELL-ARG> as an argument
# @option -s --show <RECIPE>                    Show information about <RECIPE>
# @option -d --working-directory                Use <WORKING-DIRECTORY> as working directory.
# @arg arguments+[`_choice_recipe`]             Overrides and recipe(s) to run, defaulting to the first recipe in the justfile

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_recipe() {
    just --summary 2> /dev/null | tr " " "\n" || gawk '{$1=$1};1'
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