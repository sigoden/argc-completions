#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.

# {{ opam admin
# @cmd Tools for repository administrators
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
admin() {
    :;
}

# {{{ opam admin add-constraint
# @cmd Adds version constraints on all dependencies towards a given package
# @flag --force                                   Force updating of constraints even if the resulting constraint is unsatisfiable (e.g. when adding >3 to the constraint <2).
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg package                                    A package name with a version constraint, e.g. name>=version.
admin::add-constraint() {
    :;
}
# }}} opam admin add-constraint

# {{{ opam admin add-hashes
# @cmd Add archive hashes to an opam repository.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @option -p --packages                           Only add hashes for the given packages
# @flag --replace                                 Replace the existing hashes rather than adding to them
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg hash_algo                                  The hash, or hashes to be added
admin::add-hashes() {
    :;
}
# }}} opam admin add-hashes

# {{{ opam admin cache
# @cmd Fills a local cache of package archives
# @option -j --jobs                               Number of parallel downloads
# @option --link <DIR>                            Create reverse symbolic links to the archives within DIR, in the form DIR/PKG.VERSION/FILENAME.
# @flag -n --no-repo-update                       Don't check, create or update the 'repo' file to point to the generated cache ('archive-mirrors:' field).
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg dir                                        (absent=~/w/argc-completions/cache) Name of the cache directory to use.
admin::cache() {
    :;
}
# }}} opam admin cache

# {{{ opam admin check
# @cmd Runs some consistency checks on a repository
# @flag --cycles                                  Do the cycles check (and disable the others by default)
# @flag -i --ignore-test-doc                      By default, {with-test} and {with-doc} dependencies are included.
# @flag --installability                          Do the installability check (and disable the others by default)
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --obsolete                                Analyse for obsolete packages
# @flag -s --short                                Only output a list of uninstallable packages
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
admin::check() {
    :;
}
# }}} opam admin check

# {{{ opam admin filter
# @cmd Filters a repository to only keep selected packages
# @flag --dry-run                                  List the removal commands, without actually performing them
# @option --environment <VAR=VALUE[;VAR=VALUE]>    Use the given opam environment, in the form of a list of comma-separated 'var=value' bindings, when resolving variables.
# @flag --no                                       Answer no to all opam yes/no questions without prompting.
# @flag --remove                                   Invert the behaviour and remove the matching packages, keeping the ones that don't match.
# @flag -y --yes                                   Answer yes to all opam yes/no questions without prompting.
# @flag -a --available                             List only packages that are available according to the defined environment.
# @flag -A --all                                   Include all, even uninstalled or unavailable packages
# @option --coinstallable-with <PACKAGES>          Only list packages that are compatible with all of PACKAGES.
# @option --conflicts-with <PACKAGES>              List packages that have declared conflicts with at least one of the given list.
# @option --depends-on <PACKAGES>                  List only packages that depend on one of (comma-separated) PACKAGES.
# @flag --depopts                                  Include optional dependencies in dependency requests.
# @flag --dev                                      Include development packages in dependencies.
# @option --field-match <FIELD:PATTERN>            Filter packages with a match for PATTERN on the given FIELD
# @option --has-flag[light-uninstall|verbose|plugin|compiler|conf] <FLAG>  Only include packages which have the given flag set.
# @option --has-tag <TAG>                          Only includes packages which have the given tag set
# @flag --installable                              List only packages that are installable according to the defined environment (this calls the solver and may be more costly; a package depending on an unavailable one may be available, but is never installable)
# @flag --nobuild                                  Exclude build dependencies (they are included by default).
# @flag --or                                       Instead of selecting packages that match all the criteria, select packages that match any of them
# @flag --post                                     Include dependencies tagged as post.
# @flag --recursive                                With `--depends-on' and `--required-by', display all transitive dependencies rather than just direct dependencies.
# @option --required-by <PACKAGES>                 List only the dependencies of (comma-separated) PACKAGES.
# @option --resolve <PACKAGES>                     Restrict to a solution to install (comma-separated) PACKAGES, i.e.
# @flag -t                                         Include test-only dependencies.
# @flag --with-test                                Include test-only dependencies.
# @flag --test                                     Include test-only dependencies.
# @flag --with-doc                                 Include doc-only dependencies.
# @flag --doc                                      Include doc-only dependencies.
# @flag --best-effort                              Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                      Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>        Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                               Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                        Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                    Print debug message to stderr.
# @option --debug-level <LEVEL>                    Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                              Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>     Show this help in format FMT.
# @flag --ignore-pin-depends                       Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                        Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                                Removed in 2.1.
# @flag --no-auto-upgrade                          When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                 Disables --verbose.
# @option --root                                   Use ROOT as the current root path.
# @flag --safe                                     Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                 Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                           Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                   Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]     Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                      Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                               Be more verbose.
# @flag --version                                  Show version information.
# @flag -w --working-dir                           Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg patterns*                                   Package patterns with globs.
admin::filter() {
    :;
}
# }}} opam admin filter

# {{{ opam admin index
# @cmd Generate an inclusive index file for serving over HTTP.
# @alias make
# @flag --full-urls-txt                           Generate an inclusive 'urls.txt', for a repository that will be used by opam versions earlier than 2.0.
# @flag --minimal-urls-txt                        Generate a minimal 'urls.txt' file, that only includes the 'repo' file.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --no-urls-txt                             Don't generate a 'urls.txt' file.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
admin::index() {
    :;
}
# }}} opam admin index

# {{{ opam admin lint
# @cmd Runs 'opam lint' and reports on a whole repository
# @option -i --ignore-packages <INT>              Ignore any packages having one of these warnings or errors
# @flag -l --list                                 Only list package names, without warning details
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -s --short                                Print only packages and warning/error numbers, without explanations
# @flag -W --warn-error                           Return failure on any warnings, not only on errors
# @option -x --exclude <INT>                      Exclude the given warnings or errors
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg int                                        Show only these warnings
admin::lint() {
    :;
}
# }}} opam admin lint

# {{{ opam admin list
# @cmd Lists packages from a repository
# @option --environment <VAR=VALUE[;VAR=VALUE]>    Use the given opam environment, in the form of a list of comma-separated 'var=value' bindings, when resolving variables.
# @flag --no                                       Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                   Answer yes to all opam yes/no questions without prompting.
# @flag -a --available                             List only packages that are available according to the defined environment.
# @flag -A --all                                   Include all, even uninstalled or unavailable packages
# @option --coinstallable-with <PACKAGES>          Only list packages that are compatible with all of PACKAGES.
# @option --conflicts-with <PACKAGES>              List packages that have declared conflicts with at least one of the given list.
# @option --depends-on <PACKAGES>                  List only packages that depend on one of (comma-separated) PACKAGES.
# @flag --depopts                                  Include optional dependencies in dependency requests.
# @flag --dev                                      Include development packages in dependencies.
# @option --field-match <FIELD:PATTERN>            Filter packages with a match for PATTERN on the given FIELD
# @option --has-flag[light-uninstall|verbose|plugin|compiler|conf] <FLAG>  Only include packages which have the given flag set.
# @option --has-tag <TAG>                          Only includes packages which have the given tag set
# @flag --installable                              List only packages that are installable according to the defined environment (this calls the solver and may be more costly; a package depending on an unavailable one may be available, but is never installable)
# @flag --nobuild                                  Exclude build dependencies (they are included by default).
# @flag --or                                       Instead of selecting packages that match all the criteria, select packages that match any of them
# @flag --post                                     Include dependencies tagged as post.
# @flag --recursive                                With `--depends-on' and `--required-by', display all transitive dependencies rather than just direct dependencies.
# @option --required-by <PACKAGES>                 List only the dependencies of (comma-separated) PACKAGES.
# @option --resolve <PACKAGES>                     Restrict to a solution to install (comma-separated) PACKAGES, i.e.
# @flag -t                                         Include test-only dependencies.
# @flag --with-test                                Include test-only dependencies.
# @flag --test                                     Include test-only dependencies.
# @flag --with-doc                                 Include doc-only dependencies.
# @flag --doc                                      Include doc-only dependencies.
# @option --columns[`_choice_columns`]             Select the columns to display among: name, version, package, synopsis, synopsis-or-target, description, <field>:, installed-version, pin, source-hash, opam-file, all-installed-versions, available-versions, all-versions, repository, installed-files, vc-ref, depexts.
# @flag --normalise                                Print the values of opam fields normalised
# @flag -S --sort                                  Sort the packages in dependency order (i.e.
# @flag -s --short                                 Don't print a header, and sets the default columns to name only.
# @option --separator <STRING>                     Set the column-separator string
# @flag -V --all-versions                          Normally, when multiple versions of a package match, only one is shown in the output (the installed one, the pinned-to one, or, failing that, the highest one available or the highest one).
# @flag --wrap                                     Wrap long lines, the default being to truncate when displaying on a terminal, or to keep as is otherwise
# @flag --best-effort                              Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                      Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>        Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                               Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                        Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                    Print debug message to stderr.
# @option --debug-level <LEVEL>                    Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                              Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>     Show this help in format FMT.
# @flag --ignore-pin-depends                       Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                        Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                                Removed in 2.1.
# @flag --no-auto-upgrade                          When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                 Disables --verbose.
# @option --root                                   Use ROOT as the current root path.
# @flag --safe                                     Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                 Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                           Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                   Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]     Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                      Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                               Be more verbose.
# @flag --version                                  Show version information.
# @flag -w --working-dir                           Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg patterns*                                   Package patterns with globs.
admin::list() {
    :;
}
# }}} opam admin list

# {{{ opam admin upgrade
# @cmd Upgrades repository from earlier opam versions.
# @flag --clear-cache                             Instead of running the upgrade, clear the cache of archive hashes (held in ~/.cache), that is used to avoid re-downloading files to obtain their hashes at every run.
# @option -m --mirror <URL>                       Don't overwrite the current repository, but put an upgraded mirror in place in a subdirectory, with proper redirections.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
admin::upgrade() {
    :;
}
# }}} opam admin upgrade
# }} opam admin

# {{ opam clean
# @cmd Cleans up opam caches
# @flag -a --all-switches                         Run the switch cleanup commands in all switches.
# @flag -c --download-cache                       Clear the cache of downloaded files ($OPAMROOT/download-cache), as well as the obsolete $OPAMROOT/archives, if that exists.
# @flag --dry-run                                 Print the removal commands, but don't execute them
# @flag --logs                                    Clear the logs directory.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -r --repo-cache                           Clear the repository cache.
# @flag -s --switch-cleanup                       Run the switch-specific cleanup: clears backups, build dirs, uncompressed package sources of non-dev packages, local metadata of previously pinned packages, etc.
# @flag --unused-repositories                     Clear any configured repository that is not used by any switch nor the default.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
clean() {
    :;
}
# }} opam clean

# {{ opam config
# @cmd Display configuration options for packages.
# @flag --inplace-path                            When updating the PATH variable, replace any pre-existing opam path in-place rather than putting the new path in front.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --set-root                                With the env and exec subcommands, also sets the OPAMROOT variable, making sure further calls to opam will use the same root.
# @flag --set-switch                              With the env and exec subcommands, also sets the OPAMSWITCH variable, making sure further calls to opam will use the same switch as this one.
# @flag --sexp                                    Print environment as an s-expression rather than in shell format
# @option --shell[bash|sh|csh|zsh|fish]           Sets the configuration mode for opam environment appropriate for SHELL.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
config() {
    :;
}

# {{{ opam config env
# @cmd Returns the bindings for the environment variables set in the current switch, e.g. PATH, in a format intended to be evaluated by a shell.
config::env() {
    :;
}
# }}} opam config env

# {{{ opam config revert-env
# @cmd Reverts environment changes made by opam, e.g. eval $(opam config revert-env) undoes what eval $(opam config env) did, as much as possible.
config::revert-env() {
    :;
}
# }}} opam config revert-env

# {{{ opam config list
# @cmd Without argument, prints a documented list of all available variables.
# @arg package*
config::list() {
    :;
}
# }}} opam config list

# {{{ opam config expand
# @cmd Expand variable interpolations in the given string
# @arg string
config::expand() {
    :;
}
# }}} opam config expand

# {{{ opam config subst
# @cmd Substitute variables in the given files.
# @arg file*
config::subst() {
    :;
}
# }}} opam config subst

# {{{ opam config report
# @cmd Prints a summary of your setup, useful for bug-reports.
config::report() {
    :;
}
# }}} opam config report

# {{{ opam config cudf-universe
# @cmd Outputs the current available package universe in CUDF format.
# @arg file
config::cudf-universe() {
    :;
}
# }}} opam config cudf-universe

# {{{ opam config pef-universe
# @cmd Outputs the current package universe in PEF format.
# @arg file
config::pef-universe() {
    :;
}
# }}} opam config pef-universe

# {{{ opam config exec
# @cmd Removed in 2.1, use opam exec instead.
config::exec() {
    :;
}
# }}} opam config exec

# {{{ opam config set
# @cmd Removed in 2.1, use opam var instead.
# @arg var*[`_choice_var`]
# @arg value
config::set() {
    :;
}
# }}} opam config set

# {{{ opam config unset
# @cmd Removed in 2.1, use opam var instead.
# @arg var*[`_choice_var`]
config::unset() {
    :;
}
# }}} opam config unset

# {{{ opam config set-global
# @cmd Removed in 2.1, use opam var instead.
# @arg var*[`_choice_var`]
# @arg value
config::set-global() {
    :;
}
# }}} opam config set-global

# {{{ opam config unset-global
# @cmd Removed in 2.1, use opam var instead.
# @arg var*[`_choice_var`]
config::unset-global() {
    :;
}
# }}} opam config unset-global

# {{{ opam config var
# @cmd Removed in 2.1, use opam var instead.
# @arg var*[`_choice_var`]
config::var() {
    :;
}
# }}} opam config var
# }} opam config

# {{ opam env
# @cmd Prints appropriate shell variable assignments to stdout
# @flag --check                                   Exits with 0 if the environment is already up-to-date, 1 otherwise, after printing the list of not up-to-date variables.
# @flag --inplace-path                            When updating the PATH variable, replace any pre-existing opam path in-place rather than putting the new path in front.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --revert                                  Output the environment with updates done by opam reverted instead.
# @flag --set-root                                With the env and exec subcommands, also sets the OPAMROOT variable, making sure further calls to opam will use the same root.
# @flag --set-switch                              With the env and exec subcommands, also sets the OPAMSWITCH variable, making sure further calls to opam will use the same switch as this one.
# @flag --sexp                                    Print environment as an s-expression rather than in shell format
# @option --shell[bash|sh|csh|zsh|fish]           Sets the configuration mode for opam environment appropriate for SHELL.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
env() {
    :;
}
# }} opam env

# {{ opam exec
# @cmd Executes a command in the proper opam environment
# @flag --inplace-path                            When updating the PATH variable, replace any pre-existing opam path in-place rather than putting the new path in front.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --set-root                                With the env and exec subcommands, also sets the OPAMROOT variable, making sure further calls to opam will use the same root.
# @flag --set-switch                              With the env and exec subcommands, also sets the OPAMSWITCH variable, making sure further calls to opam will use the same switch as this one.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg command[`_module_os_command`]
# @arg arg~[`_module_os_command_args`]
exec() {
    :;
}
# }} opam exec

# {{ opam init
# @cmd Initialize opam state, or set init options.
# @flag -a --auto-setup                           Automatically do a full setup, including adding a line to your shell init files.
# @flag --bare                                    Initialise the opam state, but don't setup any compiler switch yet.
# @flag --bypass-checks                           Skip checks on required or recommended tools, and assume everything is fine
# @option -c --compiler <PACKAGE>                 Set the compiler to install (when creating an initial switch)
# @option --config <FILE>                         Use the given init config file.
# @flag --disable-completion                      Disable shell completion in opam init scripts.
# @flag --disable-sandboxing                      Use a default configuration with sandboxing disabled (note that this may be overridden by `opamrc' if --no-opamrc is not specified or --config is used).
# @flag --disable-shell-hook                      Disable registration of a shell hook in opam init scripts.
# @option --dot-profile <FILENAME>                Name of the configuration file to update instead of ~/.profile or ~/.zshrc based on shell detection.
# @flag --enable-completion                       Setup shell completion in opam init scripts, for supported shells.
# @flag --enable-shell-hook                       Setup opam init scripts to register a shell hook that will automatically keep the shell environment up-to-date at every prompt.
# @flag -i --interactive                          Run the setup interactively (this is the default for an initial run, or when no more specific options are specified)
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @option -k --kind[http|local|git|darcs|hg]      Specify the kind of the repository to be used (one of `http', `local', `git', `darcs' or `hg').
# @flag -n --no-setup                             Do not update the user shell configuration to setup opam.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --no-opamrc                               Don't read `/etc/opamrc' or `~/.opamrc': use the default settings and the files specified through --config only
# @flag --reinit                                  Re-run the initial checks and setup, according to opamrc, even if this is not a new opam root
# @option --shell[bash|sh|csh|zsh|fish]           Sets the configuration mode for opam environment appropriate for SHELL.
# @flag --shell-setup                             Automatically setup the user shell configuration for opam, e.g. adding a line to the `~/.profile' file.
# @flag --show-default-opamrc                     Print the built-in default configuration to stdout and exit
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg address                                    Address of the initial package repository, when creating a new opam root.
# @arg name                                       (absent=default) Name of the initial repository, when creating a new opam root.
init() {
    :;
}
# }} opam init

# {{ opam install
# @cmd Install a list of packages.
# @flag --assume-built                            For use on locally-pinned packages: assume they have already been correctly built, and only run their installation instructions, directly from their source directory.
# @flag --check                                   Exit with 0 if all the dependencies of PACKAGES are already installed.
# @flag --depext-only                             Resolves the package installation normally, but only installs the required system dependencies, without affecting the opam switch state or installing opam packages.
# @flag --deps-only                               Install all its dependencies, but don't actually install the package.
# @option --destdir <DIR>                         Copy the files installed by the given package within the current opam switch below the prefix DIR, respecting their hierarchy, after installation.
# @flag --download-only                           Fetch the sources of the packages, but don't build or install anything.
# @flag --ignore-conflicts                        Used with --deps-only, ignores conflicts of given package
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --restore                                 Attempt to restore packages that were marked for installation but have been removed due to errors
# @flag --set-root                                Mark given packages as installed roots.
# @flag --unset-root                              Mark given packages as "installed automatically".
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg packages*[`_choice_package`]               List of package names, with an optional version or constraint, e.g `pkg', `pkg.1.0' or `pkg>=0.5' ; or files or directory names containing package description, with explicit directory (e.g. `./foo.opam' or `.')
install() {
    :;
}
# }} opam install

# {{ opam lint
# @cmd Checks and validate package description ('opam') files.
# @flag --check-upstream                          Check upstream, archive availability and checksum(s)
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --normalise                               Output a normalised version of the opam file to stdout
# @option --package <PKG>                         Lint the current definition of the given package instead of specifying an opam file directly.
# @flag -s --short                                Only print the warning/error numbers, space-separated, if any
# @option -W --warnings <WARNS>                   Select the warnings to show or hide.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg files*                                     Name of the opam files to check, or directory containing them.
lint() {
    :;
}
# }} opam lint

# {{ opam list
# @cmd Display the list of available packages.
# @flag -a --available                            List only packages that are available on the current system
# @flag -A --all                                  Include all, even uninstalled or unavailable packages
# @flag --base                                    List only the immutable base of the current switch (i.e.
# @option --coinstallable-with <PACKAGES>         Only list packages that are compatible with all of PACKAGES.
# @option --conflicts-with <PACKAGES>             List packages that have declared conflicts with at least one of the given list.
# @option --depends-on <PACKAGES>                 List only packages that depend on one of (comma-separated) PACKAGES.
# @flag --depopts                                 Include optional dependencies in dependency requests.
# @flag --dev                                     Include development packages in dependencies.
# @option --field-match <FIELD:PATTERN>           Filter packages with a match for PATTERN on the given FIELD
# @option --has-flag[light-uninstall|verbose|plugin|compiler|conf] <FLAG>  Only include packages which have the given flag set.
# @option --has-tag <TAG>                         Only includes packages which have the given tag set
# @flag -i --installed                            List installed packages only.
# @flag --installable                             List only packages that can be installed on the current switch (this calls the solver and may be more costly; a package depending on an unavailable package may be available, but is never installable)
# @flag --no-switch                               List what is available from the repositories, without consideration for the current (or any other) switch (installed or pinned packages, etc.)
# @flag --nobuild                                 Exclude build dependencies (they are included by default).
# @flag --or                                      Instead of selecting packages that match all the criteria, select packages that match any of them
# @option --owns-file <FILE>                      Finds installed packages responsible for installing the given file
# @flag --pinned                                  List only the pinned packages
# @flag --post                                    Include dependencies tagged as post.
# @flag --recursive                               With `--depends-on' and `--required-by', display all transitive dependencies rather than just direct dependencies.
# @option --repos                                 Include only packages that took their origin from one of the given repositories (unless no-switch is also specified, this excludes pinned packages).
# @option --required-by <PACKAGES>                List only the dependencies of (comma-separated) PACKAGES.
# @option --resolve <PACKAGES>                    Restrict to a solution to install (comma-separated) PACKAGES, i.e.
# @flag --roots                                   List only packages that were explicitly installed, excluding the ones installed as dependencies
# @flag --installed-roots                         List only packages that were explicitly installed, excluding the ones installed as dependencies
# @flag --search                                  Match PATTERNS against the full descriptions of packages, and require all of them to match, instead of requiring at least one to match against package names (unless --or is also specified).
# @flag -t                                        Include test-only dependencies.
# @flag --with-test                               Include test-only dependencies.
# @flag --test                                    Include test-only dependencies.
# @flag --with-doc                                Include doc-only dependencies.
# @flag --doc                                     Include doc-only dependencies.
# @option --columns[`_choice_columns`]            Select the columns to display among: name, version, package, synopsis, synopsis-or-target, description, <field>:, installed-version, pin, source-hash, opam-file, all-installed-versions, available-versions, all-versions, repository, installed-files, vc-ref, depexts.
# @flag -e                                        Instead of displaying the packages, display their external dependencies that are associated with the current system.
# @flag --external                                Instead of displaying the packages, display their external dependencies that are associated with the current system.
# @flag --depexts                                 Instead of displaying the packages, display their external dependencies that are associated with the current system.
# @flag --normalise                               Print the values of opam fields normalised
# @flag -S --sort                                 Sort the packages in dependency order (i.e.
# @flag -s --short                                Don't print a header, and sets the default columns to name only.
# @option --separator <STRING>                    Set the column-separator string
# @flag -V --all-versions                         Normally, when multiple versions of a package match, only one is shown in the output (the installed one, the pinned-to one, or, failing that, the highest one available or the highest one).
# @option --vars* <VAR=STR,>                      Define the given variable bindings.
# @flag --wrap                                    Wrap long lines, the default being to truncate when displaying on a terminal, or to keep as is otherwise
# @flag --check                                   Don't write anything in the output, exit with return code 0 if the list is not empty, 1 otherwise.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --no-depexts                              Disable external dependencies handling for the query.
# @flag --silent                                  Removed in 2.1, use --check instead.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg patterns*                                  Package patterns with globs.
list() {
    :;
}
# }} opam list

# {{ opam lock
# @cmd Create locked opam files to share build environments across hosts.
# @flag -d --direct-only                          Only lock direct dependencies, rather than the whole dependency tree.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg packages*                                  List of package names, with an optional version or constraint, e.g `pkg', `pkg.1.0' or `pkg>=0.5' ; or files or directory names containing package description, with explicit directory (e.g. `./foo.opam' or `.')
lock() {
    :;
}
# }} opam lock

# {{ opam option
# @cmd Global and switch configuration options settings
# @flag --global                                  Act on global configuration
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg field-value <FIELD[(=|+=)[VALUE]]>         If only FIELD is given, displays its associated value.
option() {
    :;
}
# }} opam option

# {{ opam pin
# @cmd Pin a given package to a specific version or source.
# @flag --dev-repo                                Pin to the upstream package source for the latest development version
# @flag -e --edit                                 With opam pin add, edit the opam file as with `opam pin edit' after pinning.
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @option -k --kind[http|local|git|darcs|hg]      Sets the kind of pinning.
# @flag -n --no-action                            Just record the new pinning status, and don't prompt for (re)installation or removal of affected packages.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --normalise                               Print list of available package to pin in format `name.version^url`, that is comprehensible by `opam pin add`.
# @flag -s --short                                Output raw lists of names, one per line, skipping any details.
# @option --with-version <VERSION>                Set the pinning version to VERSION for named PACKAGES or packages retrieved from TARGET.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
pin() {
    :;
}

# {{{ opam pin list
# @cmd Lists pinned packages.
pin::list() {
    :;
}
# }}} opam pin list

# {{{ opam pin scan
# @cmd Lists available packages to pin in directory.
# @arg dir
pin::scan() {
    :;
}
# }}} opam pin scan

# {{{ opam pin add
# @cmd Pins package PACKAGE to TARGET, which may be a version, a path, or a URL.
# @arg name*[`_choice_pin`]
# @arg dir!
pin::add() {
    :;
}
# }}} opam pin add

# {{{ opam pin remove
# @cmd Unpins packages NAMES, restoring their definition from the repository, if any.
# @arg name*[`_choice_installed_pin`]
pin::remove() {
    :;
}
# }}} opam pin remove

# {{{ opam pin edit
# @cmd Opens an editor giving you the opportunity to change the package definition that opam will locally use for package NAME, including its version and source URL.
# @arg name
pin::edit() {
    :;
}
# }}} opam pin edit
# }} opam pin

# {{ opam reinstall
# @cmd Reinstall a list of packages.
# @flag --assume-built                            For use on locally-pinned packages: assume they have already been correctly built, and only run their installation instructions, directly from their source directory.
# @flag --forget-pending                          Forget about pending reinstallations of listed packages.
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @flag --list-pending                            List packages that have been changed since installed and are marked for reinstallation
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --pending                                 Perform pending reinstallations, i.e.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg packages*[`_choice_installed_package`]     List of package names, with an optional version or constraint, e.g `pkg', `pkg.1.0' or `pkg>=0.5' ; or directory names containing package description, with explicit directory (e.g. `./srcdir' or `.')
reinstall() {
    :;
}
# }} opam reinstall

# {{ opam remove
# @cmd Remove a list of packages.
# @alias uninstall
# @flag -a --auto-remove                          Remove all the packages which have not been explicitly installed and which are not necessary anymore.
# @option --destdir <DIR>                         Instead of uninstalling the packages, reverts the action of opam install --destdir: remove files corresponding to what the listed packages installed to the current switch from the given DIR.
# @flag --force                                   Execute the remove commands of given packages directly, even if they are not considered installed by opam.
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg packages*[`_choice_installed_package`]     List of package names, with an optional version or constraint, e.g `pkg', `pkg.1.0' or `pkg>=0.5' ; or directory names containing package description, with explicit directory (e.g. `./srcdir' or `.')
remove() {
    :;
}
# }} opam remove

# {{ opam repository
# @cmd Manage opam repositories.
# @alias remote
# @flag -a --all-switches                         Act on the selections of all configured switches
# @flag --dont-select                             Don't update any selections
# @option --on-switches <SWITCHES>                Act on the selections of the given list of switches
# @flag --set-default                             Act on the default repository selection that is used for newly created switches
# @flag --this-switch                             Act on the selections for the current switch (this is the default)
# @option -k --kind[http|local|git|darcs|hg]      Specify the kind of the repository to be used (one of `http', `local', `git', `darcs' or `hg').
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @option --rank                                  Set the rank of the repository in the list of configured repositories.
# @flag -s --short                                Output raw lists of names, one per line, skipping any details.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
repository() {
    :;
}

# {{{ opam repository add
# @cmd Adds under NAME the repository at address ADDRESS to the list of configured repositories, if not already registered, and sets this repository for use in the current switch (or the specified scope).
# @arg name*[`_choice_repository`]
# @arg address
# @arg quorum
# @arg fingerprints*
repository::add() {
    :;
}
# }}} opam repository add

# {{{ opam repository remove
# @cmd Unselects the given repositories so that they will not be used to get package definitions anymore.
# @arg name*[`_choice_repository`]
repository::remove() {
    :;
}
# }}} opam repository remove

# {{{ opam repository set-repos
# @cmd Explicitly selects the list of repositories to look up package definitions from, in the specified priority order (overriding previous selection and ranks), according to the specified scope.
# @arg name*[`_choice_repository`]
repository::set-repos() {
    :;
}
# }}} opam repository set-repos

# {{{ opam repository set-url
# @cmd Updates the URL and trust anchors associated with a given repository name.
# @arg name*[`_choice_repository`]
# @arg address
# @arg quorum
# @arg fingerprints*
repository::set-url() {
    :;
}
# }}} opam repository set-url

# {{{ opam repository list
# @cmd Lists the currently selected repositories in priority order from rank 1.
repository::list() {
    :;
}
# }}} opam repository list

# {{{ opam repository priority
# @cmd Synonym to add NAME --rank RANK
repository::priority() {
    :;
}
# }}} opam repository priority
# }} opam repository

# {{ opam show
# @cmd Display information about specific packages.
# @alias info
# @flag --all-versions                            Display information of all packages matching PACKAGES, not restrained to a single package matching PACKAGES constraints.
# @flag --empty-fields                            Show fields that are empty.
# @option -f --field <FIELDS>                     Only display the values of these fields.
# @option --file                                  Removed in 2.1, use --just-file instead.
# @flag --just-file                               Load and display information from the given files (allowed PACKAGES are file or directory paths), without consideration for the repositories or state of the package.
# @flag --list-files                              List the files installed by the package.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --no-lint                                 Don't output linting warnings or errors when reading from files
# @flag --normalise                               Print the values of opam fields normalised (no newlines, no implicit brackets)
# @flag --raw                                     Print the raw opam file for this package
# @flag --sort                                    Sort opam fields
# @flag --where                                   Print the location of the opam file used for this package
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg packages*[`_choice_package`]               List of package names, with an optional version or constraint, e.g `pkg', `pkg.1.0' or `pkg>=0.5' ; or files or directory names containing package description, with explicit directory (e.g. `./foo.opam' or `.')
show() {
    :;
}
# }} opam show

# {{ opam source
# @cmd Get the source of an opam package.
# @flag --dev-repo                                Get the latest version-controlled source rather than the release archive
# @option --dir                                   The directory where to put the source.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --pin                                     Pin the package to the downloaded source (see `opam pin').
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg package                                    A package name with an optional version constraint
source() {
    :;
}
# }} opam source

# {{ opam switch
# @cmd Manage multiple installation prefixes.
# @option -A --alias-of <COMP>                    Removed in 2.1.
# @flag --deps-only                               When creating a local switch in a project directory (i.e.
# @option --description <STRING>                  Attach the given description to a switch when creating it.
# @flag --empty                                   Allow creating an empty switch, with no invariant.
# @flag --force                                   Only for set-invariant: force setting the invariant, bypassing consistency checks.
# @option --formula                               Allows specifying a complete "dependency formula", possibly including disjunction cases, as the switch invariant.
# @flag --freeze                                  When exporting, locks all VCS urls to their current commit, failing if it can not be retrieved.
# @flag --full                                    When exporting, include the metadata of all installed packages, allowing to re-import even if they don't exist in the repositories (the default is to include only the metadata of pinned packages).
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @flag -n --no-action                            Only for set-invariant: set the invariant, but don't enforce it right away: wait for the next install, upgrade or similar command.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --no-autoinstall                          Removed in 2.1.
# @flag --no-install                              When creating a local switch, don't look for any local package definitions to install.
# @flag --no-switch                               Don't automatically select newly installed switches.
# @option --packages                              When installing a switch, explicitly define the set of packages to enforce as the switch invariant.
# @option --repositories <REPOS>                  When creating a new switch, use the given selection of repositories instead of the default.
# @flag -s --short                                Output raw lists of names, one per line, skipping any details.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
switch() {
    :;
}

# {{{ opam switch create
# @cmd Create a new switch, and install the given compiler there.
# @arg switch*[`_choice_installed_switch`]
# @arg compiler
switch::create() {
    :;
}
# }}} opam switch create

# {{{ opam switch set
# @cmd Set the currently active switch, among the installed switches.
# @arg switch
switch::set() {
    :;
}
# }}} opam switch set

# {{{ opam switch remove
# @cmd Remove the given switch from disk.
# @arg switch
switch::remove() {
    :;
}
# }}} opam switch remove

# {{{ opam switch export
# @cmd Save the current switch state to a file.
# @arg file
switch::export() {
    :;
}
# }}} opam switch export

# {{{ opam switch import
# @cmd Import a saved switch state.
# @arg file
switch::import() {
    :;
}
# }}} opam switch import

# {{{ opam switch reinstall
# @cmd Reinstall the given compiler switch and all its packages.
# @arg switch
switch::reinstall() {
    :;
}
# }}} opam switch reinstall

# {{{ opam switch list
# @cmd Lists installed switches.
switch::list() {
    :;
}
# }}} opam switch list

# {{{ opam switch list-available
# @cmd Lists all the possible packages that are advised for installation when creating a new switch, i.e.
# @arg pattern
switch::list-available() {
    :;
}
# }}} opam switch list-available

# {{{ opam switch show
# @cmd Prints the name of the current switch.
switch::show() {
    :;
}
# }}} opam switch show

# {{{ opam switch invariant
# @cmd Prints the active switch invariant.
switch::invariant() {
    :;
}
# }}} opam switch invariant

# {{{ opam switch set-invariant
# @cmd Updates the switch invariant, that is, the formula that the switch must keep verifying throughout all operations.
# @arg packages*
switch::set-invariant() {
    :;
}
# }}} opam switch set-invariant

# {{{ opam switch set-description
# @cmd Sets the description for the selected switch.
# @arg string
switch::set-description() {
    :;
}
# }}} opam switch set-description

# {{{ opam switch link
# @cmd Sets a local alias for a given switch, so that the switch gets automatically selected whenever in that directory or a descendant.
# @arg switch
# @arg dir
switch::link() {
    :;
}
# }}} opam switch link

# {{{ opam switch install
# @cmd Removed in 2.1, use create instead.
# @arg switch*[`_choice_installed_switch`]
switch::install() {
    :;
}
# }}} opam switch install

# {{{ opam switch set-base
# @cmd Removed in 2.1, use set-invariant instead.
# @arg packages*
switch::set-base() {
    :;
}
# }}} opam switch set-base
# }} opam switch

# {{ opam update
# @cmd Update the list of available packages.
# @flag -a --all                                  Update all configured repositories, not only what is set in the current switch
# @flag --check                                   Do the update, then return with code 0 if there were any upstream changes, 1 if there were none.
# @flag --depexts                                 Request the system package manager to update its databases (skipping all opam packages, unless --development or --repositories is also specified).
# @flag --development                             Update development packages (skipping repositories unless --repositories is also specified).
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -R --repositories                         Update repositories (skipping development packages unless --development is also specified).
# @flag -u --upgrade                              Automatically run opam upgrade after the update.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg names*[`_choice_update`]                   List of repository or development package names to update.
update() {
    :;
}
# }} opam update

# {{ opam upgrade
# @cmd Upgrade the installed package to latest version.
# @flag -a --all                                  Run an upgrade of all installed packages.
# @flag --check                                   Don't run the upgrade: just check if anything could be upgraded.
# @flag --fixup                                   Recover from a broken state (eg.
# @flag --installed                               When a directory is provided as argument, do not install pinned package that are not yet installed.
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg packages*[`_choice_installed_package`]     List of package names, with an optional version or constraint, e.g `pkg', `pkg.1.0' or `pkg>=0.5' ; or directory names containing package description, with explicit directory (e.g. `./srcdir' or `.')
upgrade() {
    :;
}
# }} opam upgrade

# {{ opam var
# @cmd Display and update the value associated with a given variable
# @flag --global                                  Act on global configuration
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @option --package                               List all variables defined for the given package
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg var-value*[`_choice_var`] <VAR[=[VALUE]]>  If only VAR is given, displays its associated value.
var() {
    :;
}
# }} opam var

# {{ opam search
# @cmd An alias for list --search.
# @flag -a --available                            List only packages that are available on the current system
# @flag -A --all                                  Include all, even uninstalled or unavailable packages
# @flag --base                                    List only the immutable base of the current switch (i.e.
# @option --coinstallable-with <PACKAGES>         Only list packages that are compatible with all of PACKAGES.
# @option --conflicts-with <PACKAGES>             List packages that have declared conflicts with at least one of the given list.
# @option --depends-on <PACKAGES>                 List only packages that depend on one of (comma-separated) PACKAGES.
# @flag --depopts                                 Include optional dependencies in dependency requests.
# @flag --dev                                     Include development packages in dependencies.
# @option --field-match <FIELD:PATTERN>           Filter packages with a match for PATTERN on the given FIELD
# @option --has-flag[light-uninstall|verbose|plugin|compiler|conf] <FLAG>  Only include packages which have the given flag set.
# @option --has-tag <TAG>                         Only includes packages which have the given tag set
# @flag -i --installed                            List installed packages only.
# @flag --installable                             List only packages that can be installed on the current switch (this calls the solver and may be more costly; a package depending on an unavailable package may be available, but is never installable)
# @flag --no-switch                               List what is available from the repositories, without consideration for the current (or any other) switch (installed or pinned packages, etc.)
# @flag --nobuild                                 Exclude build dependencies (they are included by default).
# @flag --or                                      Instead of selecting packages that match all the criteria, select packages that match any of them
# @option --owns-file <FILE>                      Finds installed packages responsible for installing the given file
# @flag --pinned                                  List only the pinned packages
# @flag --post                                    Include dependencies tagged as post.
# @flag --recursive                               With `--depends-on' and `--required-by', display all transitive dependencies rather than just direct dependencies.
# @option --repos                                 Include only packages that took their origin from one of the given repositories (unless no-switch is also specified, this excludes pinned packages).
# @option --required-by <PACKAGES>                List only the dependencies of (comma-separated) PACKAGES.
# @option --resolve <PACKAGES>                    Restrict to a solution to install (comma-separated) PACKAGES, i.e.
# @flag --roots                                   List only packages that were explicitly installed, excluding the ones installed as dependencies
# @flag --installed-roots                         List only packages that were explicitly installed, excluding the ones installed as dependencies
# @flag -t                                        Include test-only dependencies.
# @flag --with-test                               Include test-only dependencies.
# @flag --test                                    Include test-only dependencies.
# @flag --with-doc                                Include doc-only dependencies.
# @flag --doc                                     Include doc-only dependencies.
# @option --columns[`_choice_columns`]            Select the columns to display among: name, version, package, synopsis, synopsis-or-target, description, <field>:, installed-version, pin, source-hash, opam-file, all-installed-versions, available-versions, all-versions, repository, installed-files, vc-ref, depexts.
# @flag -e                                        Instead of displaying the packages, display their external dependencies that are associated with the current system.
# @flag --external                                Instead of displaying the packages, display their external dependencies that are associated with the current system.
# @flag --depexts                                 Instead of displaying the packages, display their external dependencies that are associated with the current system.
# @flag --normalise                               Print the values of opam fields normalised
# @flag -S --sort                                 Sort the packages in dependency order (i.e.
# @flag -s --short                                Don't print a header, and sets the default columns to name only.
# @option --separator <STRING>                    Set the column-separator string
# @flag -V --all-versions                         Normally, when multiple versions of a package match, only one is shown in the output (the installed one, the pinned-to one, or, failing that, the highest one available or the highest one).
# @option --vars* <VAR=STR,>                      Define the given variable bindings.
# @flag --wrap                                    Wrap long lines, the default being to truncate when displaying on a terminal, or to keep as is otherwise
# @flag --check                                   Don't write anything in the output, exit with return code 0 if the list is not empty, 1 otherwise.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --no-depexts                              Disable external dependencies handling for the query.
# @flag --silent                                  Removed in 2.1, use --check instead.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg patterns*                                  Package patterns with globs.
search() {
    :;
}
# }} opam search

# {{ opam unpin
# @cmd An alias for pin remove.
# @flag --assume-depexts                          Skip the installation step for any missing system packages, and attempt to proceed with compilation of the opam packages anyway.
# @flag -b --keep-build-dir                       Keep the build directories after compiling packages.
# @flag --build-doc                               Removed in 2.1, use --with-doc instead.
# @flag --build-test                              Removed in 2.1, use --with-test instead.
# @flag -d --with-doc                             Build the package documentation.
# @flag --dry-run                                 Simulate the command, but don't actually perform any changes.
# @flag --fake                                    This option registers the actions into the opam database, without actually performing them.
# @option --ignore-constraints-on <PACKAGES>      Forces opam to ignore version constraints on all dependencies to the listed packages.
# @flag --inplace-build                           When compiling a package which has its source bound to a local directory, process the build and install actions directly in that directory, rather than in a clean copy handled by opam.
# @option --lock-suffix <SUFFIX>                  Set locked files suffix to SUFFIX.
# @flag --locked                                  In commands that use opam files found from pinned sources, if a variant of the file with an added .locked extension is found (e.g. foo.opam.locked besides foo.opam), that will be used instead.
# @option -m --make                               Removed in 2.1, use opam config set[-global] make MAKE instead.
# @flag --no-checksums                            Do not verify the checksum of downloaded archives.This is equivalent to setting $OPAMNOCHECKSUMS to "true".
# @flag --no-depexts                              Temporarily disables handling of external dependencies.
# @flag --require-checksums                       Reject the installation of packages that don't provide a checksum for the upstream archives.
# @flag --reuse-build-dir                         Reuse existing build directories (kept by using --keep-build-dir), instead of compiling from a fresh clone of the source.
# @flag --show-actions                            Call the solver and display the actions.
# @flag --skip-updates                            When running an install, upgrade or reinstall on source-pinned packages, they are normally updated from their origin first.
# @flag -t --with-test                            Build and run the package unit-tests.
# @flag --unlock-base                             Removed in 2.1, use --update-invariant instead.
# @flag --update-invariant                        Allow changes to the packages set as switch base (typically, the main compiler).
# @flag --dev-repo                                Pin to the upstream package source for the latest development version
# @flag -e --edit                                 With opam pin add, edit the opam file as with `opam pin edit' after pinning.
# @option -j --jobs                               Set the maximal number of concurrent jobs to use.
# @option -k --kind[http|local|git|darcs|hg]      Sets the kind of pinning.
# @flag -n --no-action                            Just record the new pinning status, and don't prompt for (re)installation or removal of affected packages.
# @flag --no                                      Answer no to all opam yes/no questions without prompting.
# @flag --normalise                               Print list of available package to pin in format `name.version^url`, that is comprehensible by `opam pin add`.
# @flag -s --short                                Output raw lists of names, one per line, skipping any details.
# @option --with-version <VERSION>                Set the pinning version to VERSION for named PACKAGES or packages retrieved from TARGET.
# @flag -y --yes                                  Answer yes to all opam yes/no questions without prompting.
# @flag --best-effort                             Don't fail if all requested packages can't be installed: try to install as many as possible.
# @option --cli <MAJOR.MINOR>                     Use the command-line interface syntax and semantics of MAJOR.MINOR.
# @option --color[always|never|auto] <WHEN>       Colorize the output.
# @option --confirm-level[ask|no|yes|unsafe-yes] <LEVEL>  Confirmation level
# @option --criteria                              Specify user preferences for dependency solving for this run.
# @option --cudf <FILENAME>                       Debug option: Save the CUDF requests sent to the solver to FILENAME-<n>.cudf.
# @flag --debug                                   Print debug message to stderr.
# @option --debug-level <LEVEL>                   Like --debug, but allows specifying the debug level (--debug sets it to 1).
# @flag --git-version                             Print the git version of opam, if set (i.e.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-pin-depends                      Ignore extra pins required by packages that get pinned, either manually through opam pin or through opam install DIR.
# @option --json <FILENAME>                       Save the results of the opam run in a computer-readable file.
# @flag --no-aspcud                               Removed in 2.1.
# @flag --no-auto-upgrade                         When configuring or updating a repository that is written for an earlier opam version (1.2), opam internally converts it to the current format.
# @flag --no-self-upgrade                         Opam will replace itself with a newer binary found at OPAMROOT/opam if present.
# @flag -q --quiet                                Disables --verbose.
# @option --root                                  Use ROOT as the current root path.
# @flag --safe                                    Make sure nothing will be automatically updated or rewritten.
# @flag --readonly                                Make sure nothing will be automatically updated or rewritten.
# @option --solver <CMD>                          Specify the CUDF solver to use for resolving package installation problems.
# @flag --strict                                  Fail whenever an error is found in a package definition or a configuration file.
# @option --switch[`_choice_installed_switch`]    Use SWITCH as the current compiler switch.
# @flag --use-internal-solver                     Disable any external solver, and use the built-in one (this requires that opam has been compiled with a built-in solver).
# @flag -v --verbose                              Be more verbose.
# @flag --version                                 Show version information.
# @flag -w --working-dir                          Whenever updating packages that are bound to a local, version-controlled directory, update to the current working state of their source instead of the last committed state, or the ref they are pointing to.
# @arg name*[`_choice_installed_pin`]
unpin() {
    :;
}
# }} opam unpin

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_installed_switch() {
    opam switch list-available --safe -s
}

_choice_installed_switch() {
    opam switch list-available --safe -s
}

_choice_columns() {
    printf "%s\n" \
        name version package synopsis synopsis-or-target \
        description installed-version pin source-hash \
        opam-file all-installed-versions available-versions \
        all-versions repository installed-files vc-ref depext \

}

_choice_var() {
    opam $(_argc_util_param_select_options --global) var --safe | \
    sed -n \
        -e '/^PKG:/ d' \
        -e '/<><>/ d' \
        -e 's%^\([^#= ][^ ]*\).*%\1%p' \

}

_choice_package() {
    opam list --safe -a -s
}

_choice_pin() {
    opam pin list --safe -A -s   
}

_choice_installed_pin() {
    opam pin list --safe -s   
}

_choice_installed_package() {
    opam list --safe -i -s
}

_choice_repository() {
    opam repository list --safe -a -s
}

_choice_update() {
    _argc_util_parallel _choice_repository ::: _choice_installed_pin
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