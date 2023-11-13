#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --clear                   Clear the screen before each run
# @flag -h --help                    Display this message
# @flag --ignore-nothing             Ignore nothing, not even target/ and .git/
# @flag --debug                      Show debug output
# @flag --why                        Show paths that changed
# @flag -q --quiet                   Suppress output from cargo-watch itself
# @flag --no-dot-ignores             Don’t use .ignore files
# @flag --no-process-group           Do not use a process group when running the command
# @flag --no-restart                 Don’t restart command while it’s still running
# @flag --no-vcs-ignores             Don’t use .gitignore files
# @flag -N --notify                  Send a desktop notification when watchexec notices a change (experimental, behaviour may change)
# @flag --poll                       Force use of polling for file changes
# @flag --postpone                   Postpone first run until a file changes
# @flag --skip-local-deps            Don't try to find local dependencies of the current crate and watch their working directories.
# @flag -V --version                 Display version information
# @flag --watch-when-idle            Ignore events emitted while the commands run.
# @option -x --exec*[`_choice_watch_exec`] <cmd>  Cargo command(s) to execute on changes [default: check]
# @option -s --shell*[`_module_os_command`] <cmd>  Shell command(s) to execute on changes
# @option -d --delay <delay>         File updates debounce delay in seconds [default: 0.5]
# @option --env-file* <env-files>    Set environment variables from a .env file
# @option -E --env* <env-vars>       Set environment variables for the command
# @option --features*,[`_choice_feature`] <features>  List of features passed to cargo invocations
# @option -i --ignore* <pattern>     Ignore a glob/gitignore-style pattern
# @option -B <rust-backtrace>        Inject RUST_BACKTRACE=VALUE (generally you want to set it to 1) into the environment
# @option -L <rust-log>              Inject RUST_LOG=VALUE into the environment
# @option --use-shell <use-shell>    Use a different shell.
# @option -w --watch* <watch>        Watch specific file(s) or folder(s).
# @option -C --workdir <workdir>     Change working directory before running command [default: crate root]
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_feature() {
    _helper_package_json | yq '.features | keys | .[]'
}

_choice_watch_exec() {
    cargo --list | sed -n 's/^    \(\S\S\+\).*/\1/p'
}

_helper_metadata_json() {
    cargo metadata --format-version 1 --no-deps
}

_helper_package_json() {
    metadata_json="$(_helper_metadata_json)"
    if [[ -n "$argc_package" ]]; then
        echo "$metadata_json" | yq '.packages[] | select(.name == "'"$argc_package"'")'
    else
        workspace_root="$(echo "$metadata_json" | yq '.workspace_root')"
        manifest_path="$(_argc_util_path_resolve -p "$workspace_root" Cargo.toml)"
        echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
    fi
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

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"