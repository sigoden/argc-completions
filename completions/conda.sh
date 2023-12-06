#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Show this help message and exit.
# @flag -v --verbose    Can be used multiple times.
# @flag --no-plugins    Disable all plugins that are not built into conda.
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
# @flag --json                  Report all output as json.
# @flag -v --verbose            Can be used multiple times.
# @flag -q --quiet              Do not display progress bar.
# @flag -d --dry-run            Only display what would have been done.
# @flag -y --yes                Sets any confirmation values to 'yes' automatically.
clean() {
    :;
}
# }} conda clean

# {{ conda compare
# @cmd Compare packages between conda environments.
# @flag -h --help               Show this help message and exit.
# @flag --json                  Report all output as json.
# @flag -v --verbose            Can be used multiple times.
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
# @flag -v --verbose                            Can be used multiple times.
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

# {{ conda content-trust
# @cmd Signing and verification tools for Conda
# @flag -h --help       show this help message and exit
# @flag -V --version    Show the conda-content-trust version number and exit.
# @arg enum*[sign-artifacts|verify-metadata|modify-metadata|gpg-key-lookup|gpg-sign]
content-trust() {
    :;
}

# {{{ conda content-trust sign-artifacts
# @cmd Given a repodata.json file, produce signatures over the metadata for each artifact listed, and update the repodata.json file with their individual signatures.
# @flag -h --help           show this help message and exit
# @arg repodata_fname       the filename of a repodata.json file from which to retrieve metadata for individual artifacts.
# @arg private_key_fname    the filename of a file containing a hex string representation of an ed25519 private key to be used to sign each artifact's metadata
content-trust::sign-artifacts() {
    :;
}
# }}} conda content-trust sign-artifacts

# {{{ conda content-trust verify-metadata
# @cmd Uses the first (trusted) metadata file to verify the second (not yet trusted) metadata file.
# @flag -h --help                     show this help message and exit
# @arg trusted_metadata_filename      the filename of the already-trusted metadata file that sets the rules for verifying the untrusted metadata file
# @arg untrusted_metadata_filename    the filename of the (untrusted) metadata file to verify
content-trust::verify-metadata() {
    :;
}
# }}} conda content-trust verify-metadata

# {{{ conda content-trust modify-metadata
# @cmd Interactive metadata modification.
# @flag -h --help           show this help message and exit
# @arg metadata_filename    the filename of the existing metadata file to modify
content-trust::modify-metadata() {
    :;
}
# }}} conda content-trust modify-metadata

# {{{ conda content-trust gpg-key-lookup
# @cmd [Unavailable]: Requires optional dependencies: securesystemslib and gpg.
# @flag -h --help             show this help message and exit
# @arg gpg_key_fingerprint    the 40-hex-character key fingerprint (long keyid) for the OpenPGP/GPG key that you want to sign something with.
content-trust::gpg-key-lookup() {
    :;
}
# }}} conda content-trust gpg-key-lookup

# {{{ conda content-trust gpg-sign
# @cmd [Unavailable]: Requires optional dependencies: securesystemslib and gpg.
# @flag -h --help             show this help message and exit
# @arg gpg_key_fingerprint    the 40-hex-character key fingerprint (long keyid) for the OpenPGP/GPG key that you want to sign something with.
# @arg filename               the filename of the file that will be signed
content-trust::gpg-sign() {
    :;
}
# }}} conda content-trust gpg-sign
# }} conda content-trust

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
# @flag --no-lock                         Disable locking when reading, updating index (repodata.json) cache.
# @option --subdir <SUBDIR>               Use packages built for this platform.
# @option --platform <SUBDIR>             Use packages built for this platform.
# @flag --strict-channel-priority         Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.
# @flag --no-channel-priority             Package version takes precedence over channel priority.
# @flag --no-deps                         Do not install, update, remove, or change dependencies.
# @flag --only-deps                       Only install dependencies.
# @flag --no-pin                          Ignore pinned file.
# @flag --no-default-packages             Ignore create_default_packages in the .condarc file.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
# @flag --copy                            Install all packages using copies instead of hard- or soft-linking.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag --json                            Report all output as json.
# @flag -v --verbose                      Can be used multiple times.
# @flag -q --quiet                        Do not display progress bar.
# @flag -d --dry-run                      Only display what would have been done.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @flag --download-only                   Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.
# @flag --show-channel-urls               Show channel urls.
# @arg package_spec                       List of packages to install or update in the conda environment.
create() {
    :;
}
# }} conda create

# {{ conda doctor
# @cmd Display a health report for your environment.
# @flag -v --verbose            Can be used multiple times.
# @flag -h --help               Show this help message and exit.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>    Full path to environment location (i.e.
doctor() {
    :;
}
# }} conda doctor

# {{ conda env
# @cmd See `conda env --help`.
# @flag -h --help    Show this help message and exit.
env() {
    :;
}

# {{{ conda env create
# @cmd Create an environment based on an environment definition file.
# @flag -h --help                        Show this help message and exit.
# @option -f --file                      Environment definition file (default: environment.yml)
# @flag --force                          `--force` is deprecated and will be removed in 24.3.
# @flag --no-default-packages            Ignore create_default_packages in the .condarc file.
# @option --subdir <SUBDIR>              Use packages built for this platform.
# @option --platform <SUBDIR>            Use packages built for this platform.
# @option --solver <classic|libmamba>    Choose which solver backend to use.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>             Full path to environment location (i.e.
# @flag -C --use-index-cache             Use cache of channel index files, even if it has expired.
# @flag -k --insecure                    Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                        Offline mode.
# @flag --json                           Report all output as json.
# @flag -v --verbose                     Can be used multiple times.
# @flag -q --quiet                       Do not display progress bar.
# @flag -d --dry-run                     Only display what would have been done.
# @flag -y --yes                         Sets any confirmation values to 'yes' automatically.
# @arg remote_definition                 Remote environment definition / IPython notebook
env::create() {
    :;
}
# }}} conda env create

# {{{ conda env export
# @cmd Export a given environment
# @flag -h --help               Show this help message and exit.
# @option -c --channel          Additional channel to include in the export
# @flag --override-channels     Do not include .condarc channels
# @option -f --file             File name or path for the exported environment.
# @flag --no-builds             Remove build specification from dependencies
# @flag --ignore-channels       Do not include channel names with package names.
# @flag --from-history          Build environment spec from explicit specs in history
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>    Full path to environment location (i.e.
# @flag --json                  Report all output as json.
# @flag -v --verbose            Can be used multiple times.
# @flag -q --quiet              Do not display progress bar.
env::export() {
    :;
}
# }}} conda env export

# {{{ conda env list
# @cmd List the Conda environments
# @flag -h --help       Show this help message and exit.
# @flag --json          Report all output as json.
# @flag -v --verbose    Can be used multiple times.
# @flag -q --quiet      Do not display progress bar.
env::list() {
    :;
}
# }}} conda env list

# {{{ conda env remove
# @cmd Remove an environment
# @flag -h --help                        Show this help message and exit.
# @option --solver <classic|libmamba>    Choose which solver backend to use.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>             Full path to environment location (i.e.
# @flag --json                           Report all output as json.
# @flag -v --verbose                     Can be used multiple times.
# @flag -q --quiet                       Do not display progress bar.
# @flag -d --dry-run                     Only display what would have been done.
# @flag -y --yes                         Sets any confirmation values to 'yes' automatically.
env::remove() {
    :;
}
# }}} conda env remove

# {{{ conda env update
# @cmd Update the current environment based on environment file
# @flag -h --help                        Show this help message and exit.
# @option -f --file                      environment definition (default: environment.yml)
# @flag --prune                          remove installed packages not defined in environment.yml
# @option --solver <classic|libmamba>    Choose which solver backend to use.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>             Full path to environment location (i.e.
# @flag --json                           Report all output as json.
# @flag -v --verbose                     Can be used multiple times.
# @flag -q --quiet                       Do not display progress bar.
# @arg remote_definition                 remote environment definition / IPython notebook
env::update() {
    :;
}
# }}} conda env update

# {{{ conda env config
# @cmd Configure a conda environment
# @flag -h --help    Show this help message and exit.
# @arg vars*         Interact with environment variables associated with Conda environments
env::config() {
    :;
}
# }}} conda env config
# }} conda env

# {{ conda info
# @cmd Display information about current conda install.
# @flag -h --help            Show this help message and exit.
# @flag -a --all             `--all` is pending deprecation and will be removed in 24.9.
# @flag --base               Display base environment path.
# @flag -e --envs            List all known conda environments.
# @flag -s --system          List environment variables.
# @flag --unsafe-channels    Display list of channels with tokens exposed.
# @flag --json               Report all output as json.
# @flag -v --verbose         Can be used multiple times.
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
# @flag -v --verbose    Can be used multiple times.
# @flag -q --quiet      Do not display progress bar.
# @arg shells*[bash|fish|powershell|tcsh|xonsh|zsh]
init() {
    :;
}
# }} conda init

# {{ conda install
# @cmd Install a list of packages into a specified conda environment.
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
# @flag --no-lock                         Disable locking when reading, updating index (repodata.json) cache.
# @flag --strict-channel-priority         Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.
# @flag --no-channel-priority             Package version takes precedence over channel priority.
# @flag --no-deps                         Do not install, update, remove, or change dependencies.
# @flag --only-deps                       Only install dependencies.
# @flag --no-pin                          Ignore pinned file.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
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
# @flag --json                            Report all output as json.
# @flag -v --verbose                      Can be used multiple times.
# @flag -q --quiet                        Do not display progress bar.
# @flag -d --dry-run                      Only display what would have been done.
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
# @flag -v --verbose            Can be used multiple times.
# @flag -q --quiet              Do not display progress bar.
# @arg regex                    List only packages matching this regular expression.
list() {
    :;
}
# }} conda list

# {{ conda notices
# @cmd Retrieve latest channel notifications.
# @flag -h --help                         Show this help message and exit.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag --no-lock                         Disable locking when reading, updating index (repodata.json) cache.
notices() {
    :;
}
# }} conda notices

# {{ conda package
# @cmd Create low-level conda packages.
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
# @flag --no-lock                         Disable locking when reading, updating index (repodata.json) cache.
# @flag --all                             Remove all packages, i.e., the entire environment.
# @flag --features                        Remove features (instead of packages).
# @flag --force-remove                    Forces removal of a package without removing packages that depend on it.
# @flag --force                           Forces removal of a package without removing packages that depend on it.
# @flag --no-pin                          Ignore pinned package(s) that apply to the current operation.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag --json                            Report all output as json.
# @flag -v --verbose                      Can be used multiple times.
# @flag -q --quiet                        Do not display progress bar.
# @flag -d --dry-run                      Only display what would have been done.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @arg package_name[`_choice_package`]
remove() {
    :;
}
# }} conda remove

# {{ conda rename
# @cmd Rename an existing environment.
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

# {{ conda repoquery
# @cmd Advanced search for repodata.
# @flag -h --help    Show this help message and exit.
# @arg enum[whoneeds|depends|search]
# @arg whoneeds      Show packages that depend on this package.
# @arg depends       Show dependencies of this package.
# @arg search        Show all available package versions.
repoquery() {
    :;
}
# }} conda repoquery

# {{ conda run
# @cmd Run an executable in a conda environment.
# @flag -h --help                  Show this help message and exit.
# @flag -v --verbose               Can be used multiple times.
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
# @cmd Search for packages and display associated information using the MatchSpec format.
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
# @flag --no-lock                         Disable locking when reading, updating index (repodata.json) cache.
# @flag -C --use-index-cache              Use cache of channel index files, even if it has expired.
# @flag -k --insecure                     Allow conda to perform "insecure" SSL connections and transfers.
# @flag --offline                         Offline mode.
# @flag --json                            Report all output as json.
# @flag -v --verbose                      Can be used multiple times.
# @flag -q --quiet                        Do not display progress bar.
search() {
    :;
}
# }} conda search

# {{ conda update
# @cmd Update conda packages to the latest compatible version.
# @flag -h --help                         Show this help message and exit.
# @option --file                          Read package versions from the given file.
# @option -n --name[`_choice_env_var`] <ENVIRONMENT>  Name of environment.
# @option -p --prefix <PATH>              Full path to environment location (i.e.
# @option -c --channel                    Additional channel to search for packages.
# @flag --use-local                       Use locally built packages.
# @flag --override-channels               Do not search default or .condarc channels.
# @option --repodata-fn <REPODATA_FNS>    Specify file name of repodata on the remote server where your channels are configured or within local backups.
# @option --experimental <jlap|lock>      jlap: Download incremental package index data from repodata.jlap; implies 'lock'.
# @flag --no-lock                         Disable locking when reading, updating index (repodata.json) cache.
# @flag --strict-channel-priority         Packages in lower priority channels are not considered if a package with the same name appears in a higher priority channel.
# @flag --no-channel-priority             Package version takes precedence over channel priority.
# @flag --no-deps                         Do not install, update, remove, or change dependencies.
# @flag --only-deps                       Only install dependencies.
# @flag --no-pin                          Ignore pinned file.
# @option --solver <classic|libmamba>     Choose which solver backend to use.
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
# @flag --json                            Report all output as json.
# @flag -v --verbose                      Can be used multiple times.
# @flag -q --quiet                        Do not display progress bar.
# @flag -d --dry-run                      Only display what would have been done.
# @flag -y --yes                          Sets any confirmation values to 'yes' automatically.
# @flag --download-only                   Solve an environment and ensure package caches are populated, but exit prior to unlinking and linking packages into the prefix.
# @flag --show-channel-urls               Show channel urls.
# @arg package_name[`_choice_package`]
update() {
    :;
}
# }} conda update

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