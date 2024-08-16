#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --check                                  Run `--fmt` in 'check' mode.
# @option --chooser                              Override binary invoked by `--choose` [env: JUST_CHOOSER=]
# @flag --clear-shell-args                       Clear shell arguments
# @option --color[auto|always|never]             Print colorful output [env: JUST_COLOR=] [default: auto]
# @option --command-color[black|blue|cyan|green|purple|red|yellow]  Echo recipe lines in <COMMAND-COLOR> [env: JUST_COMMAND_COLOR=]
# @option --dotenv-filename                      Search for environment file named <DOTENV-FILENAME> instead of `.env`
# @option -E --dotenv-path                       Load <DOTENV-PATH> as environment file instead of searching for one
# @flag -n --dry-run                             Print what just would do without doing it [env: JUST_DRY_RUN=]
# @option --dump-format[json|just] <FORMAT>      Dump justfile as <FORMAT> [env: JUST_DUMP_FORMAT=] [default: just]
# @flag -g --global-justfile                     Use global justfile
# @flag --highlight                              Highlight echoed recipe lines in bold [env: JUST_HIGHLIGHT=]
# @option -f --justfile                          Use <JUSTFILE> as justfile [env: JUST_JUSTFILE=]
# @option --list-heading <TEXT>                  Print <TEXT> before list [env: JUST_LIST_HEADING=] [default: "Available recipes:\n"]
# @option --list-prefix <TEXT>                   Print <TEXT> before each list item [env: JUST_LIST_PREFIX=] [default: "  "]
# @flag --list-submodules                        List recipes in submodules [env: JUST_LIST_SUBMODULES=]
# @flag --no-aliases                             Don't show aliases in list [env: JUST_NO_ALIASES=]
# @flag --no-deps                                Don't run recipe dependencies [env: JUST_NO_DEPS=]
# @flag --no-dotenv                              Don't load `.env` file [env: JUST_NO_DOTENV=]
# @flag --no-highlight                           Don't highlight echoed recipe lines in bold [env: JUST_NO_HIGHLIGHT=]
# @flag -q --quiet                               Suppress all output [env: JUST_QUIET=]
# @option --set <VARIABLE> <VALUE>               Override <VARIABLE> with <VALUE>
# @option --shell                                Invoke <SHELL> to run recipes
# @option --shell-arg                            Invoke shell with <SHELL-ARG> as an argument
# @flag --shell-command                          Invoke <COMMAND> with the shell used to run recipe lines and backticks
# @flag --timestamp                              Print recipe command timestamps [env: JUST_TIMESTAMP=]
# @option --timestamp-format                     Timestamp format string [env: JUST_TIMESTAMP_FORMAT=] [default: %H:%M:%S]
# @flag -u --unsorted                            Return list and summary entries in source order [env: JUST_UNSORTED=]
# @flag --unstable                               Enable unstable features [env: JUST_UNSTABLE=]
# @flag -v --verbose*                            Use verbose output [env: JUST_VERBOSE=]
# @option -d --working-directory                 Use <WORKING-DIRECTORY> as working directory.
# @flag --yes                                    Automatically confirm all recipes.
# @flag --changelog                              Print changelog
# @flag --choose                                 Select one or more recipes to run using a binary chooser.
# @option -c --command*[`_module_os_command`]    Run an arbitrary command with the working directory, `.env`, overrides, and exports set
# @option --completions[bash|elvish|fish|nushell|powershell|zsh] <SHELL>  Print shell completion script for <SHELL>
# @flag --dump                                   Print justfile
# @flag -e --edit                                Edit justfile with editor given by $VISUAL or $EDITOR, falling back to `vim`
# @flag --evaluate                               Evaluate and print all variables.
# @flag --fmt                                    Format and overwrite justfile
# @flag --groups                                 List recipe groups
# @flag --init                                   Initialize new justfile in project root
# @option -l --list* <PATH>                      List available recipes
# @flag --man                                    Print man page
# @option -s --show* <PATH>                      Show recipe at <PATH>
# @flag --summary                                List names of available recipes
# @flag --variables                              List names of variables
# @flag -h --help                                Print help
# @flag -V --version                             Print version
# @arg arguments*[`_choice_recipe`]              Overrides and recipe(s) to run, defaulting to the first recipe in the justfile

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