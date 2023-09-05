#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                                  show program's version number and exit
# @flag -h --help                                  show this help message and exit
# @flag -d --debug                                 activate debug mode
# @flag -c --clean                                 don't touch/require any config files.
# @option --logfile <file>                         log file to use, '-' for stderr
# @option --cachedir <dir>                         change the cache directory.
# @option -r --confdir <dir>                       change the configuration directory.
# @option --datadir <dir>                          change the data directory.
# @option --copy-config[all|rc|rifle|commands|commands_full|scope] <which>  copy the default configs to the local config directory.
# @option --choosefile <OUTFILE>                   Makes ranger act like a file chooser.
# @option --choosefiles <OUTFILE>                  Makes ranger act like a file chooser for multiple files at once.
# @option --choosedir <OUTFILE>                    Makes ranger act like a directory chooser.
# @option --selectfile <filepath>                  Open ranger with supplied file selected.
# @flag --show-only-dirs                           Show only directories, no files or links
# @flag --list-unused-keys                         List common keys which are not bound to any action.
# @option --list-tagged-files <tag>                List all files which are tagged with the given tag, default: *
# @flag --profile                                  Print statistics of CPU usage on exit.
# @option --cmd[`_module_os_command`] <COMMAND>    Execute COMMAND after the configuration has been read.
# @arg path

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