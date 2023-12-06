#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --check-news                              Scan all repositories for relevant unread GLEP 42 news items, and display how many are found.
# @flag --clean                                   Cleans up the system by examining the installed packages and removing older packages.
# @flag --config                                  Run package specific actions needed to be executed after the emerge process has completed.
# @flag -c --depclean                             Cleans the system by removing packages that are not associated with explicitly merged packages.
# @option -W --deselect[y|n]                      Remove atoms and/or sets from the world file.
# @flag -h --help                                 Displays help information for emerge.
# @flag --info                                    Produces a list of information to include in bug reports which aids the developers when fixing the reported problem.
# @flag --list-sets                               Displays a list of available package sets.
# @flag --metadata                                Transfers pregenerated metadata cache from ${repository_location}/metadata/md5-cache/ to /var/cache/edb/dep/ as is normally done on the tail end of an rsync update using emerge --sync.
# @flag -P --prune                                Removes all but the highest installed version of a package from your system.
# @flag --regen                                   Causes portage to check and update the dependency cache of all ebuilds in the repository.
# @flag -r --resume                               Resumes  the most recent merge list that has been aborted due to an error.
# @flag -s --search                               Searches for matches of the supplied string in the ebuild repository.
# @flag -S --searchdesc                           Matches the search string against the description field as well as the package name.
# @flag --sync                                    Updates repositories, for which auto-sync, sync-type and sync-uri attributes are set in repos.conf.
# @flag -C --unmerge                              WARNING: This action can remove important packages! Removes all matching packages following a counter governed by CLEAN_DELAY.
# @flag -V --version                              Displays the version number of emerge.
# @option --accept-properties <ACCEPT_PROPERTIES>  This option temporarily overrides the ACCEPT_PROPERTIES variable.
# @option --accept-restrict <ACCEPT_RESTRICT>     This option temporarily overrides the ACCEPT_RESTRICT variable.
# @option -A --alert[y|n]                         Add a terminal bell character ('\a') to all interactive prompts.
# @flag --alphabetical                            When displaying USE and other flag output, combines the enabled and disabled lists into one list and sorts the whole list alphabetically.
# @option -a --ask[y|n]                           Before performing the action, display what will take place (server info for --sync, --pretend output for merge, and so forth), then ask whether to proceed with the action or abort.
# @flag --ask-enter-invalid                       When used together with the --ask option, interpret a single "Enter" key press as invalid input.
# @option --autounmask[y|n]                       Automatically unmask packages and generate package.use settings as necessary to satisfy dependencies.
# @option --autounmask-backtrack[y|n]             Allow backtracking after autounmask has detected that configuration changes are necessary.
# @option --autounmask-continue[y|n]              Automatically apply autounmask changes to configuration files, and continue to execute the specified command.
# @option --autounmask-only[y|n]                  Instead of doing any package building, just unmask packages and generate package.use settings as necessary to satisfy dependencies.
# @option --autounmask-unrestricted-atoms[y|n]    If --autounmask is enabled, keyword and mask changes using the ´=´ operator will be written.
# @option --autounmask-keep-keywords[y|n]         If --autounmask is enabled, no package.accept_keywords changes will be created.
# @option --autounmask-keep-masks[y|n]            If --autounmask is enabled, no package.unmask or ** keyword changes will be created.
# @option --autounmask-license[y|n]               Allow autounmask package.license changes.
# @option --autounmask-use[y|n]                   Allow autounmask package.use changes.
# @option --autounmask-write[y|n]                 If --autounmask is enabled, changes are written to config files, respecting CONFIG_PROTECT and --ask.
# @option --backtrack <COUNT>                     Specifies an integer number of times to backtrack if dependency calculation fails due to a conflict or an unsatisfied dependency (default: ´20´).
# @option --binpkg-changed-deps[y|n]              Tells emerge to ignore binary packages for which the corresponding ebuild dependencies have changed since the packages were built.
# @option --binpkg-respect-use[y|n]               Tells emerge to ignore binary packages if their USE flags don't match the current configuration.
# @option -b --buildpkg[y|n]                      Tells emerge to build binary packages for all ebuilds processed in addition to actually merging the packages.
# @option --buildpkg-exclude <ATOMS>              A space separated list of package atoms for which no binary packages should be built.
# @flag -B --buildpkgonly                         Creates binary packages for all ebuilds processed without actually merging the packages.
# @option --changed-deps[y|n]                     Tells emerge to replace installed packages for which the corresponding ebuild dependencies have changed since the packages were built.
# @option --changed-deps-report[y|n]              Tells emerge to report ebuilds for which the ebuild dependencies have changed since the installed instance was built.
# @option --changed-slot[y|n]                     Tells emerge to replace installed packages for which the corresponding ebuild SLOT metadata has changed since the packages were built.
# @flag -U --changed-use                          Tells emerge to include installed packages where USE flags have changed since installation.
# @option --color[y|n]                            Enable or disable color output.
# @flag --columns                                 Used alongside --pretend to cause the package name, new version, and old version to be displayed in an aligned format for easy cut-n-paste.
# @option --complete-graph[y|n]                   This causes emerge to consider the deep dependencies of all packages from the world set.
# @option --complete-graph-if-new-use[y|n]        Trigger the --complete-graph behavior if USE or IUSE will change for an installed package.
# @option --complete-graph-if-new-ver[y|n]        Trigger the --complete-graph behavior if an installed package version will change (upgrade or downgrade).
# @option --config-root <DIR>                     Set the PORTAGE_CONFIGROOT environment variable.
# @flag -d --debug                                Tells emerge to run the emerge command in --debug mode.
# @option -D --deep <DEPTH>                       This flag forces emerge to consider the entire dependency tree of packages, instead of checking only the immediate dependencies of the packages.
# @option --depclean-lib-check[y|n]               Account for library link-level dependencies during --depclean and --prune actions.
# @flag --digest                                  Prevent corruption from being noticed.
# @option --dynamic-deps[y|n]                     In dependency calculations, substitute the dependencies of installed packages with the dependencies of corresponding unbuilt ebuilds from source repositories.
# @flag -e --emptytree                            Reinstalls target atoms and their entire deep dependency tree, as though no packages are currently installed.
# @option -X --exclude <ATOMS>                    A space separated list of package names or slot atoms.
# @option --fail-clean[y|n]                       Clean up temporary files after a build failure.
# @flag -f --fetchonly                            Instead of doing any package building, just perform fetches for all packages (fetch things from SRC_URI based upon USE setting).
# @flag -F --fetch-all-uri                        Instead of doing any package building, just perform fetches for all packages (fetch everything in SRC_URI regardless of USE setting).
# @option --fuzzy-search[y|n]                     Enable or disable fuzzy search for search actions.
# @option -g --getbinpkg[y|n]                     Using the server and location defined in PORTAGE_BINHOST (see make.conf(5)), portage will download the information from each binary package found and it will use that information to help build the dependency list.
# @option -G --getbinpkgonly[y|n]                 This option is identical to -g, as above, except binaries from the remote server are preferred over local packages if they are not identical.
# @flag --ignore-default-opts                     Causes EMERGE_DEFAULT_OPTS (see make.conf(5)) to be ignored.
# @option --ignore-built-slot-operator-deps[y|n]  Ignore the slot/sub-slot := operator parts of dependencies that have been recorded when packages where built.
# @option --ignore-soname-deps[y|n]               Ignore the soname dependencies of binary and installed packages.
# @option --ignore-world[y|n]                     Ignore the @world package set and its dependencies.
# @option --implicit-system-deps[y|n]             Assume that packages may have implicit dependencies on packages which belong to the @system set.
# @option -j --jobs                               Specifies the number of packages to build simultaneously.
# @option --keep-going[y|n]                       Continue as much as possible after an error.
# @option -l --load-average <LOAD>                Specifies that no new builds should be started if there are other builds running and the load average is at least LOAD (a floating-point number).
# @option --misspell-suggestions[y|n]             Enable or disable misspell suggestions.
# @flag --newrepo                                 Tells emerge to recompile a package if it is now being pulled from a different repository.
# @flag -N --newuse                               Tells emerge to include installed packages where USE flags have changed since compilation.
# @flag --noconfmem                               Causes portage to disregard merge records indicating that a config file inside of a CONFIG_PROTECT directory has been merged already.
# @flag -O --nodeps                               Merges specified packages without merging any dependencies.
# @flag -n --noreplace                            Skips the packages specified on the command-line that have already been installed.
# @flag --nospinner                               Disables the spinner for the session.
# @option --usepkg-exclude <ATOMS>                A space separated list of package names or slot atoms.
# @option --rebuild-exclude <ATOMS>               A space separated list of package names or slot atoms.
# @option --rebuild-ignore <ATOMS>                A space separated list of package names or slot atoms.
# @option --regex-search-auto[y|n]                Enable or disable automatic regular expression detection for search actions.
# @flag -1 --oneshot                              Emerge as normal, but do not add the packages to the world file for later updating.
# @flag -o --onlydeps                             Only merge (or pretend to merge) the dependencies of the packages specified, not the packages themselves.
# @option --onlydeps-with-rdeps[y|n]              Include run time dependencies when --onlydeps is specified.
# @option --onlydeps-with-ideps[y|n]              Include install time dependencies when --onlydeps and --onlydeps-with-rdeps=n are both specified.
# @option --package-moves[y|n]                    Perform package moves when necessary.
# @flag --pkg-format                              Specify which binary package format will be created as target.
# @option --prefix <DIR>                          Set the EPREFIX environment variable.
# @flag -p --pretend                              Instead of actually performing the merge, simply display what *would* have been installed if --pretend weren't used.
# @option --quickpkg-direct[y|n]                  Enable use of installed packages directly as binary packages.
# @option --quickpkg-direct-root <DIR>            Specify the root to use as the --quickpkg-direct package source.
# @option -q --quiet[y|n]                         Results may vary, but the general outcome is a reduced or condensed output from portage's displays.
# @option --quiet-build[y|n]                      Redirect all build output to logs alone, and do not display it on stdout.
# @option --quiet-fail[y|n]                       Suppresses display of the build log on stdout when build output is hidden due to options such as --jobs, --quiet, or --quiet-build.
# @flag --quiet-repo-display                      In the package merge list display, suppress ::repository output, and instead use numbers to indicate which repositories package come from.
# @flag --quiet-unmerge-warn                      Disable the warning message that's shown prior to --unmerge actions.
# @flag --rage-clean                              WARNING: This action can remove important packages!  --rage-clean does --unmerge with CLEAN_DELAY=0.
# @option --read-news[y|n]                        Offer to read news via eselect if there are unread news.
# @option --rebuild-if-new-slot[y|n]              Automatically rebuild or reinstall packages when slot/sub-slot := operator dependencies can be satisfied by a newer slot, so that older packages slots will become eligible for removal by the --depclean action as soon as possible.
# @option --rebuild-if-new-rev[y|n]               Rebuild packages when build-time dependencies are built from source, if the dependency is not already installed with the same version and revision.
# @option --rebuild-if-new-ver[y|n]               Rebuild packages when build-time dependencies are built from source, if the dependency is not already installed with the same version.
# @option --rebuild-if-unbuilt[y|n]               Rebuild packages when build-time dependencies are built from source.
# @option --rebuilt-binaries[y|n]                 Replace installed packages with binary packages that have been rebuilt.
# @option --rebuilt-binaries-timestamp <TIMESTAMP>  This option modifies emerge's behaviour only if --rebuilt-binaries is given.
# @option --reinstall <changed-use>               This is an alias for --changed-use.
# @option --reinstall-atoms <ATOMS>               A space separated list of package names or slot atoms.
# @option --root <DIR>                            Set the ROOT environment variable.
# @option --sysroot <DIR>                         Set the SYSROOT environment variable.
# @option --root-deps <rdeps>                     If no argument is given then build-time dependencies of packages for ROOT are installed to ROOT instead of /.
# @option --search-index[y|n]                     Enable or disable indexed search for search actions.
# @option --search-similarity <PERCENTAGE>        Set the minimum similarity percentage (a floating-point number between 0 and 100).
# @option -w --select[y|n]                        Add specified packages to the world set (inverse of --oneshot).
# @option --selective[y|n]                        This is identical to the --noreplace option.
# @flag --skipfirst                               This option is only valid when used with --resume.
# @option --sync-submodule[glsa|news|profiles]    Restrict sync to the specified submodule(s).
# @flag -t --tree                                 Shows the dependency tree for the given target by indenting dependencies.
# @flag --unordered-display                       By default the displayed merge list is sorted using the order in which the packages will be merged.
# @flag -u --update                               Updates packages to the best version available, which may not always be the highest version number due to masking for testing and development.
# @flag --update-if-installed                     Acts similar to --update except it updates packages passed as arguments to the best version available only if they are already installed.
# @option --use-ebuild-visibility[y|n]            Use unbuilt ebuild metadata for visibility checks on built packages.
# @option --useoldpkg-atoms <ATOMS>               A space separated list of package names or slot atoms.
# @option -k --usepkg[y|n]                        Tells emerge to use binary packages (from $PKGDIR) if they are available, thus possibly avoiding some time-consuming compiles.
# @option -K --usepkgonly[y|n]                    Tells emerge to only use binary packages (from $PKGDIR).
# @option --usepkg-exclude-live[y|n]              Tells emerge to not install from binary packages for live ebuilds.
# @option -v --verbose[y|n]                       Tell emerge to run in verbose mode.
# @flag --verbose-conflicts                       Make slot conflicts more verbose.
# @option --verbose-slot-rebuilds[y|n]            Turns on/off the extra emerge output to list which packages are causing rebuilds.
# @option --with-bdeps[y|n]                       In dependency calculations, pull in build time dependencies that are not strictly required.
# @option --with-bdeps-auto[y|n]                  This option is used to enable or disable the program logic that causes --with-bdeps is to be automatically enabled for installation actions.
# @option --with-test-deps[y|n]                   For packages matched by arguments, this option will pull in dependencies that are conditional on the "test" USE flag, even if "test" is not enabled in FEATURES for the matched packages.
# @arg args*[`_choice_args`]

# {{ emerge ebuild
# @cmd An ebuild must be, at a minimum, a valid Portage package directory name without a version or category, such as portage or python.
ebuild() {
    :;
}
# }} emerge ebuild

# {{ emerge tbz2
# @cmd A tbz2 file must be a valid .tbz2 created with ebuild <package>-<version>.ebuild package or emerge --buildpkg [category/]<package> or quickpkg [category/]<package>.
# @arg file!
tbz2() {
    :;
}
# }} emerge tbz2

# {{ emerge gpkg
# @cmd A gpkg file must be a valid .gpkg created with ebuild <package>-<version>.ebuild package or emerge --buildpkg [category/]<package> or quickpkg [category/]<package> with BINPKG_FORMAT="gpkg".
# @arg file!
gpkg() {
    :;
}
# }} emerge gpkg

# {{ emerge file
# @cmd A file must be a file or directory that has been installed by one or more packages.
file() {
    :;
}
# }} emerge file

# {{ emerge set
# @cmd A  set  is a convenient shorthand for a large group of packages.
set() {
    :;
}
# }} emerge set

# {{ emerge atom
# @cmd An atom describes bounds on a package that you wish to install.
atom() {
    :;
}
# }} emerge atom

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package_smart
}

_choice_installed_package() {
    find /var/db/pkg -mindepth 2 -maxdepth 2 -type d -printf '%P\n' | \
    sed 's/-[0-9][0-9.]*.*$//'
}

_choice_package() {
    find /var/db/repos/gentoo -mindepth 2 -maxdepth 2 -type d ! '(' '(' -path '*/eclass/*' -o -path '*/metadata/*' -o -path '*/profiles/*' -o -path '*/.*/*' ')' -prune ')' -printf '%P\n'
}

_choice_package_set() {
    emerge --list-sets
}

_choice_package_smart() {
    if [[ -n "$argc_config" ]] \
    || [[ -n "$argc_depclean" ]] \
    || [[ -n "$argc_info" ]] \
    || [[ -n "$argc_prune" ]] \
    || [[ -n "$argc_unmerge" ]] \
    ; then
        _choice_installed_package
    else
        _choice_package | _argc_util_comp_parts /
        _choice_package_set
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"