#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Show this help message and exit.
# @flag -V --version    Show the conda version number and exit.

# {{ conda clean
# @cmd Remove unused packages and caches.
# @flag -h --help               Show this help message and exit.
# @flag -a --all                Remove index cache, lock files, unused cache packages, tarballs, and logfiles.
# @flag -i --index-cache        Remove index cache.
# @flag -p --packages           Remove unused packages from writable package caches.
# @flag -t --tarballs           Remove cached package tarballs.
# @flag -f --force-pkgs-dirs    Remove *all* writable package caches.
# @option -c --tempfiles*       Remove temporary files that could not be deleted earlier due to being in-use.
# @flag -l --logfiles           Remove log files.
# @flag -d --dry-run            Only display what would have been done.
# @flag --json                  Report all output as json.
# @flag -q --quiet              Do not display progress bar.
# @flag -v --verbose            Can be used multiple times.
# @flag -y --yes                Sets any confirmation values to 'yes' automatically.
clean() {
    :;
}
# }} conda clean

# {{ conda compare
# @cmd Compare packages between conda environments.
# @flag -h --help               Show this help message and exit.
# @flag --json                  Report all output as json.
# @flag -v --verbose            Use once for info, twice for debug, three times for trace.
# @flag -q --quiet              Do not display progress bar.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>    Full path to environment location (i.e.
# @arg file                     Path to the environment file that is to be compared against.
compare() {
    :;
}
# }} conda compare

# {{ conda config
# @cmd Modify configuration values in .condarc.
# @flag -h --help                               Show this help message and exit.
# @flag --json                                  Report all output as json.
# @flag -v --verbose                            Use once for info, twice for debug, three times for trace.
# @flag -q --quiet                              Do not display progress bar.
# @flag --system                                Write to the system .condarc file at '/home/sigo/.miniconda3/.condarc'.
# @flag --env                                   Write to the active conda environment .condarc file (<no active environment>).
# @option --file                                Write to the given file.
# @option --show*[`_choice_config_key`]         Display configuration values as calculated and compiled.
# @flag --show-sources                          Display all identified configuration sources.
# @flag --validate                              Validate all configuration sources.
# @option --describe*[`_choice_config_key`]     Describe given configuration parameters.
# @flag --write-default                         Write the default configuration to a file.
# @option --get*[`_choice_config_key`] <KEY>    Get a configuration value.
# @option --append[`_choice_config_kv`] <KEY> <VALUE>  Add one configuration value to the end of a list key.
# @option --prepend[`_choice_config_kv`] <KEY> <VALUE>  Add one configuration value to the beginning of a list key.
# @option --add[`_choice_config_kv`] <KEY> <VALUE>  Add one configuration value to the beginning of a list key.
# @option --set[`_choice_config_kv`] <KEY> <VALUE>  Set a boolean or string key.
# @option --remove[`_choice_config_kv`] <KEY> <VALUE>  Remove a configuration value from a list key.
# @option --remove-key[`_choice_config_key`] <KEY>  Remove a configuration key (and all its values).
# @flag --stdin                                 Apply configuration information given in yaml format piped through stdin.
config() {
    :;
}
# }} conda config

# {{ conda create
# @cmd Create a new conda environment from a list of specified packages.
# @flag -h --help                         Show this help message and exit.
# @option --clone <ENV>                   Create a new environment as a copy of an existing local environment.
# @option --file                          Read package versions from the given file.
# @flag --dev                             Use `sys.executable -m conda` in wrapper scripts instead of CONDA_EXE.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>              Full path to environment location (i.e.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag --strict-channel-priority         Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.
# @flag --no-channel-priority             Package version takes precedence over channel priority.
# @flag --no-deps                         Do not install, update, remove, or change dependencies.
# @flag --only-deps                       Only install dependencies.
# @flag --no-pin                          Ignore pinned file.
# @flag --no-default-packages             Ignore create_default_packages in the .condarc file.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
# @option --experimental-solver <classic|libmamba>  DEPRECATED.
# @flag --copy                            Install all packages using copies instead of hard- or soft-linking.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag -d --dry-run                      Only display what would have been done.
# @flag --json                            Report all output as json.
# @flag -q --quiet                        Do not display progress bar.
# @flag -v --verbose                      Can be used multiple times.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @flag --download-only                   Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.
# @flag --show-channel-urls               Show channel urls.
# @arg package_spec                       List of packages to install or update in the conda environment.
create() {
    :;
}
# }} conda create

# {{ conda info
# @cmd Display information about current conda install.
# @flag -h --help            Show this help message and exit.
# @flag -a --all             Show all information.
# @flag --base               Display base environment path.
# @flag -e --envs            List all known conda environments.
# @flag -s --system          List environment variables.
# @flag --unsafe-channels    Display list of channels with tokens exposed.
# @flag --json               Report all output as json.
# @flag -v --verbose         Use once for info, twice for debug, three times for trace.
# @flag -q --quiet           Do not display progress bar.
info() {
    :;
}
# }} conda info

# {{ conda init
# @cmd Initialize conda for shell interaction.
# @flag -h --help       Show this help message and exit.
# @flag --all           Initialize all currently available shells.
# @flag -d --dry-run    Only display what would have been done.
# @flag --user          Initialize conda for the current user (default).
# @flag --no-user       Don't initialize conda for the current user.
# @flag --system        Initialize conda for all users on the system.
# @flag --reverse       Undo effects of last conda init.
# @flag --json          Report all output as json.
# @flag -v --verbose    Use once for info, twice for debug, three times for trace.
# @flag -q --quiet      Do not display progress bar.
# @arg shells*[bash|fish|powershell|tcsh|xonsh|zsh]
init() {
    :;
}
# }} conda init

# {{ conda install
# @cmd Installs a list of packages into a specified conda environment.
# @flag -h --help                         Show this help message and exit.
# @option --revision                      Revert to the specified REVISION.
# @option --file                          Read package versions from the given file.
# @flag --dev                             Use `sys.executable -m conda` in wrapper scripts instead of CONDA_EXE.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>              Full path to environment location (i.e.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag --strict-channel-priority         Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.
# @flag --no-channel-priority             Package version takes precedence over channel priority.
# @flag --no-deps                         Do not install, update, remove, or change dependencies.
# @flag --only-deps                       Only install dependencies.
# @flag --no-pin                          Ignore pinned file.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
# @option --experimental-solver <classic|libmamba>  DEPRECATED.
# @flag --force-reinstall                 Ensure that any user-requested package for the current operation is uninstalled and reinstalled, even if that package already exists in the environment.
# @flag --freeze-installed                Do not update or change already-installed dependencies.
# @flag --no-update-deps                  Do not update or change already-installed dependencies.
# @flag --update-deps                     Update dependencies that have available updates.
# @flag -S --satisfied-skip-solve         Exit early and do not run the solver if the requested specs are satisfied.
# @flag --update-all                      Update all installed packages in the environment.
# @flag --all                             Update all installed packages in the environment.
# @flag --update-specs                    Update based on provided specifications.
# @flag --copy                            Install all packages using copies instead of hard- or soft-linking.
# @flag -m --mkdir                        Create the environment directory, if necessary.
# @flag --clobber                         Allow clobbering (i.e.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag -d --dry-run                      Only display what would have been done.
# @flag --json                            Report all output as json.
# @flag -q --quiet                        Do not display progress bar.
# @flag -v --verbose                      Can be used multiple times.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @flag --download-only                   Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.
# @flag --show-channel-urls               Show channel urls.
# @arg package_spec                       List of packages to install or update in the conda environment.
install() {
    :;
}
# }} conda install

# {{ conda list
# @cmd List installed packages in a conda environment.
# @flag -h --help               Show this help message and exit.
# @flag --show-channel-urls     Show channel urls.
# @flag --reverse               List installed packages in reverse order.
# @flag -c --canonical          Output canonical names of packages only.
# @flag -f --full-name          Only search for full names, i.e., ^<regex>$.
# @flag --explicit              List explicitly all installed conda packages with URL (output may be used by conda create --file).
# @flag --md5                   Add MD5 hashsum when using --explicit.
# @flag -e --export             Output explicit, machine-readable requirement strings instead of human-readable lists of packages.
# @flag -r --revisions          List the revision history.
# @flag --no-pip                Do not include pip-only installed packages.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>    Full path to environment location (i.e.
# @flag --json                  Report all output as json.
# @flag -v --verbose            Use once for info, twice for debug, three times for trace.
# @flag -q --quiet              Do not display progress bar.
# @arg regex                    List only packages matching this regular expression.
list() {
    :;
}
# }} conda list

# {{ conda package
# @cmd Low-level conda package utility.
# @flag -h --help                        Show this help message and exit.
# @option -w --which <PATH+>             Given some file's PATH, print which conda package the file came from.
# @flag -r --reset                       Remove all untracked files and exit.
# @flag -u --untracked                   Display all untracked files and exit.
# @option --pkg-name <PKG_NAME>          Designate package name of the package being created.
# @option --pkg-version <PKG_VERSION>    Designate package version of the package being created.
# @option --pkg-build <PKG_BUILD>        Designate package build number of the package being created.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>             Full path to environment location (i.e.
package() {
    :;
}
# }} conda package

# {{ conda remove
# @cmd Remove a list of packages from a specified conda environment.
# @flag -h --help                         Show this help message and exit.
# @flag --dev                             Use `sys.executable -m conda` in wrapper scripts instead of CONDA_EXE.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>              Full path to environment location (i.e.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag --all                             Remove all packages, i.e., the entire environment.
# @flag --features                        Remove features (instead of packages).
# @flag --force-remove                    Forces removal of a package without removing packages that depend on it.
# @flag --force                           Forces removal of a package without removing packages that depend on it.
# @flag --no-pin                          Ignore pinned package(s) that apply to the current operation.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
# @option --experimental-solver <classic|libmamba>  DEPRECATED.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag -d --dry-run                      Only display what would have been done.
# @flag --json                            Report all output as json.
# @flag -q --quiet                        Do not display progress bar.
# @flag -v --verbose                      Can be used multiple times.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @arg package_name[`_choice_package`]
remove() {
    :;
}
# }} conda remove

# {{ conda rename
# @cmd Renames an existing environment.
# @flag -h --help               Show this help message and exit.
# @flag --force                 Force rename of an environment.
# @flag -d --dry-run            Only display what would have been done by the current command, arguments, and other flags.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>    Full path to environment location (i.e.
# @arg destination              New name for the conda environment.
rename() {
    :;
}
# }} conda rename

# {{ conda run
# @cmd Run an executable in a conda environment.
# @flag -h --help                  Show this help message and exit.
# @flag -v --verbose               Use once for info, twice for debug, three times for trace.
# @flag --dev                      Sets `CONDA_EXE` to `python -m conda`, assuming the current working directory contains the root of conda development sources.
# @flag --debug-wrapper-scripts    When this is set, where implemented, the shell wrapper scriptswill use the echo command to print debugging information to stderr (standard error).
# @option --cwd                    Current working directory for command to run in.
# @flag --no-capture-output        Don't capture stdout/stderr (standard out/standard error).
# @flag --live-stream              Don't capture stdout/stderr (standard out/standard error).
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>       Full path to environment location (i.e.
# @arg executable_call             Executable name, with additional arguments to be passed to the executable on invocation.
run() {
    :;
}
# }} conda run

# {{ conda search
# @cmd Search for packages and display associated information.The input is a MatchSpec, a query language for conda packages.
# @flag -h --help                         Show this help message and exit.
# @flag --envs                            Search all of the current user's environments.
# @flag -i --info                         Provide detailed information about each package.
# @option --subdir <SUBDIR>               Search the given subdir.
# @option --platform <SUBDIR>             Search the given subdir.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag --json                            Report all output as json.
# @flag -v --verbose                      Use once for info, twice for debug, three times for trace.
# @flag -q --quiet                        Do not display progress bar.
search() {
    :;
}
# }} conda search

# {{ conda update
# @cmd Updates conda packages to the latest compatible version.
# @flag -h --help                         Show this help message and exit.
# @option --file                          Read package versions from the given file.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>              Full path to environment location (i.e.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag --strict-channel-priority         Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.
# @flag --no-channel-priority             Package version takes precedence over channel priority.
# @flag --no-deps                         Do not install, update, remove, or change dependencies.
# @flag --only-deps                       Only install dependencies.
# @flag --no-pin                          Ignore pinned file.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
# @option --experimental-solver <classic|libmamba>  DEPRECATED.
# @flag --force-reinstall                 Ensure that any user-requested package for the current operation is uninstalled and reinstalled, even if that package already exists in the environment.
# @flag --freeze-installed                Do not update or change already-installed dependencies.
# @flag --no-update-deps                  Do not update or change already-installed dependencies.
# @flag --update-deps                     Update dependencies that have available updates.
# @flag -S --satisfied-skip-solve         Exit early and do not run the solver if the requested specs are satisfied.
# @flag --update-all                      Update all installed packages in the environment.
# @flag --all                             Update all installed packages in the environment.
# @flag --update-specs                    Update based on provided specifications.
# @flag --copy                            Install all packages using copies instead of hard- or soft-linking.
# @flag --clobber                         Allow clobbering of overlapping file paths within packages, and suppress related warnings.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag -d --dry-run                      Only display what would have been done.
# @flag --json                            Report all output as json.
# @flag -q --quiet                        Do not display progress bar.
# @flag -v --verbose                      Can be used multiple times.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @flag --download-only                   Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.
# @flag --show-channel-urls               Show channel urls.
# @arg package_name[`_choice_package`]
update() {
    :;
}
# }} conda update

# {{ conda notices
# @cmd Retrieves latest channel notifications.
# @flag -h --help                         Show this help message and exit.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
notices() {
    :;
}
# }} conda notices

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_env_var() {
    conda info --envs | gawk '{if(match($0, /^([^# ]+)[ *]+(.*)$/, arr)) { print arr[1] "\t" arr[2] }}'
}

_choice_config_key() {
    conda config --show | yq -p yaml 'keys | .[]'
}

_choice_config_kv() {
    if _helper_check_config_flag 1; then
        _choice_config_key
    fi
}

_choice_package() {
    conda $(_argc_util_param_select_options --prefix --name) list --json | yq '.[] | .name + "	" + .version'
}

_helper_check_config_flag() {
    num="$1"
    if [[ "${#argc_add[@]}" == "$num" ]] \
    || [[ "${#argc_append[@]}" == "$num" ]] \
    || [[ "${#argc_prepend[@]}" == "$num" ]] \
    || [[ "${#argc_remove[@]}" == "$num" ]] \
    || [[ "${#argc_set[@]}" == "$num" ]] \
    ; then
        return 0
    else
        return 1
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"