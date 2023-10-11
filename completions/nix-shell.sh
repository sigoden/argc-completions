#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --command <cmd>              In the environment of the derivation, run the shell command cmd.
# @option --run <cmd>                  Like --command, but executes the command in a non-interactive shell.
# @option --exclude <regexp>           Do not build any dependencies whose store path matches the regular expression regexp.
# @flag --pure                         If this flag is specified, the environment is almost entirely cleared before the interactive shell is started, so you get an environment that more closely corresponds to the “real” Nix build.
# @option -p --packages* <packages>    Set up an environment in which the specified packages are present.
# @option -i <interpreter>             The chained script interpreter to be invoked by nix-shell.
# @option --keep <name>                When a --pure shell is started, keep the listed environment variables.
# @flag --help                         Prints out a summary of the command syntax and exits.
# @flag --version                      Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                   Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                        Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>        This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output           By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>       Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                        Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time              Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                      Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going                Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed               Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                     Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode                When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>         This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>      This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>         Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                      Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                    Add an entry to the Nix expression search path.
# @option --option <name> <value>      Set the Nix configuration option name to value.
# @flag --repair                       Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg path[`_module_nix_path`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_nix_path() {
    _module_nix_shortcut
    _argc_util_comp_path exts:.nix
    printf "%s\n" https:// http://
}

_module_nix_shortcut() {
    echo $NIX_PATH | sed 's/:/\n/g' | sed 's/^\(\S\+\)=\(.*\)/<\1>\t\2/'
}

command eval "$(argc --argc-eval "$0" "$@")"