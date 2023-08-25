#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                       Help.
# @flag -V --version                    Output the version number.
# @flag --promptids                     Output a list of zypper's user prompts.
# @option -c --config <FILE>            Use specified config file instead of the default.
# @option --userdata <STRING>           User defined transaction id used in history and plugins.
# @flag -q --quiet                      Suppress normal output, print only error messages.
# @flag -v --verbose                    Increase verbosity.
# @flag --color
# @flag --no-color                      Whether to use colors in output if tty supports it.
# @flag -A --no-abbrev                  Do not abbreviate text in tables.
# @option -s --table-style <INTEGER>    Table style (0-11).
# @flag -n --non-interactive            Do not ask anything, use default answers automatically.
# @flag --non-interactive-include-reboot-patches  Do not treat patches as interactive, which have the rebootSuggested-flag set.
# @flag -x --xmlout                     Switch to XML output.
# @flag -i --ignore-unknown             Ignore unknown packages.
# @flag -t --terse                      Terse output for machine consumption.
# @option -D --reposd-dir <DIR>         Use alternative repository definition file directory.
# @option -C --cache-dir <DIR>          Use alternative directory for all caches.
# @option --raw-cache-dir <DIR>         Use alternative raw meta-data cache directory.
# @option --solv-cache-dir <DIR>        Use alternative solv file cache directory.
# @option --pkg-cache-dir <DIR>         Use alternative package cache directory.
# @flag --no-gpg-checks                 Ignore GPG check failures and continue.
# @flag --gpg-auto-import-keys          Automatically trust and import new repository signing keys.
# @option -p --plus-repo <URI>          Use an additional repository.
# @option --plus-content <TAG>          Additionally use disabled repositories providing a specific keyword.
# @flag --disable-repositories          Do not read meta-data from repositories.
# @flag --no-refresh                    Do not refresh the repositories.
# @flag --no-cd                         Ignore CD/DVD repositories.
# @flag --no-remote                     Ignore remote repositories.
# @flag --releasever                    Set the value of $releasever in all .repo files (default: distribution version)
# @option -R --root <DIR>               Operate on a different root directory.
# @option --installroot <DIR>           Operate on a different root directory, but share repositories with the host.
# @flag --disable-system-resolvables    Do not read installed packages.

# {{ zypper shell
# @cmd Accept multiple commands at once.
# @alias sh
shell() {
    :;
}
# }} zypper shell

# {{ zypper repos
# @cmd List all defined repositories.
# @alias lr
# @option -e --export <FILE.repo>    Export all defined repositories as a single local .repo file.
# @flag -a --alias                   Show also repository alias.
# @flag -n --name                    Show also repository name.
# @flag -r --refresh                 Show also the autorefresh flag.
# @flag -u --uri                     Show also base URI of repositories.
# @flag -p --priority                Show also repository priority.
# @flag -d --details                 Show more information like URI, priority, type.
# @flag -s --service                 Show also alias of parent service.
# @flag -E --show-enabled-only       Show enabled repos only.
# @flag -U --sort-by-uri             Sort the list by URI.
# @flag -N --sort-by-name            Sort the list by name.
# @flag -P --sort-by-priority        Sort the list by repository priority.
# @flag -A --sort-by-alias           Show also alias of parent service.
# @arg repo*
repos() {
    :;
}
# }} zypper repos

# {{ zypper addrepo
# @cmd Add a new repository.
# @alias ar
# @option -r --repo <FILE.repo>              Just another means to specify a .repo file to read.
# @flag -c --check                           Probe URI.
# @flag -C --no-check                        Don't probe URI, probe later during refresh.
# @option -p --priority                      Set priority of the repository.
# @flag -k --keep-packages                   Enable RPM files caching.
# @flag -K --no-keep-packages                Disable RPM files caching.
# @flag -g --gpgcheck                        Enable GPG check for this repository.
# @flag --gpgcheck-strict                    Enable strict GPG check for this repository.
# @flag --gpgcheck-allow-unsigned            Short hand for '--gpgcheck-allow-unsigned-repo --gpgcheck-allow-unsigned-package'.
# @flag --gpgcheck-allow-unsigned-repo       Enable GPG check but allow the repository metadata to be unsigned.
# @flag --gpgcheck-allow-unsigned-package    Enable GPG check but allow installing unsigned packages from this repository.
# @flag -G --no-gpgcheck                     Disable GPG check for this repository.
# @flag --default-gpgcheck                   Use the global GPG check setting defined in /etc/zypp/zypp.conf.
# @option -n --name                          Set a descriptive name for the repository.
# @flag -e --enable                          Enable a disabled repository.
# @flag -d --disable                         Disable the repository (but don't remove it).
# @flag -f --refresh                         Enable auto-refresh of the repository.
# @flag -F --no-refresh                      Disable auto-refresh of the repository.
# @flag -t --type                            The repository type is always autodetected.
# @arg uri!
# @arg alias!
addrepo() {
    :;
}
# }} zypper addrepo

# {{ zypper removerepo
# @cmd Remove specified repository.
# @alias rr
# @flag --loose-auth                 Ignore user authentication data in the URI.
# @flag --loose-query                Ignore query string in the URI.
# @flag -a --all                     Apply changes to all repositories.
# @flag -l --local                   Apply changes to all local repositories.
# @flag -t --remote                  Apply changes to all remote repositories.
# @option -m --medium-type <TYPE>    Apply changes to repositories of specified type.
# @arg alias-uri![`_choice_repo`] <ALIAS|#|URI>
removerepo() {
    :;
}
# }} zypper removerepo

# {{ zypper renamerepo
# @cmd Rename specified repository.
# @alias nr
# @arg alias-uri![`_choice_repo`] <ALIAS|#|URI>
# @arg new-alias!
renamerepo() {
    :;
}
# }} zypper renamerepo

# {{ zypper modifyrepo
# @cmd Modify specified repository.
# @alias mr
# @option -n --name                          Set a descriptive name for the repository.
# @flag -e --enable                          Enable a disabled repository.
# @flag -d --disable                         Disable the repository (but don't remove it).
# @flag -f --refresh                         Enable auto-refresh of the repository.
# @flag -F --no-refresh                      Disable auto-refresh of the repository.
# @option -p --priority                      Set priority of the repository.
# @flag -k --keep-packages                   Enable RPM files caching.
# @flag -K --no-keep-packages                Disable RPM files caching.
# @flag -g --gpgcheck                        Enable GPG check for this repository.
# @flag --gpgcheck-strict                    Enable strict GPG check for this repository.
# @flag --gpgcheck-allow-unsigned            Short hand for '--gpgcheck-allow-unsigned-repo --gpgcheck-allow-unsigned-package'.
# @flag --gpgcheck-allow-unsigned-repo       Enable GPG check but allow the repository metadata to be unsigned.
# @flag --gpgcheck-allow-unsigned-package    Enable GPG check but allow installing unsigned packages from this repository.
# @flag -G --no-gpgcheck                     Disable GPG check for this repository.
# @flag --default-gpgcheck                   Use the global GPG check setting defined in /etc/zypp/zypp.conf.
# @flag -a --all                             Apply changes to all repositories.
# @flag -l --local                           Apply changes to all local repositories.
# @flag -t --remote                          Apply changes to all remote repositories.
# @option -m --medium-type <TYPE>            Apply changes to repositories of specified type.
# @flag -r                                   The same as -f.
# @flag -R                                   The same as -F.
# @arg alias-uri![`_choice_repo`] <ALIAS|#|URI>
modifyrepo() {
    :;
}
# }} zypper modifyrepo

# {{ zypper refresh
# @cmd Refresh all repositories.
# @alias ref
# @flag -f --force             Force a complete refresh.
# @flag -b --force-build       Force rebuild of the database.
# @flag -d --force-download    Force download of raw metadata.
# @flag -B --build-only        Only build the database, don't download metadata.
# @flag -D --download-only     Only download raw metadata, don't build the database.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Refresh only specified repositories.
# @flag -s --services          Refresh also services before refreshing repos.
# @arg alias-uri*[`_choice_repo`] <ALIAS|#|URI>
refresh() {
    :;
}
# }} zypper refresh

# {{ zypper clean
# @cmd Clean local caches.
# @alias cc
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Clean only specified repositories.
# @flag -m --metadata        Clean metadata cache.
# @flag -M --raw-metadata    Clean raw metadata cache.
# @flag -a --all             Clean both metadata and package caches.
# @arg alias-uri*[`_choice_repo`] <ALIAS|#|URI>
clean() {
    :;
}
# }} zypper clean

# {{ zypper services
# @cmd List all defined services.
# @alias ls
# @flag -u --uri                  Show also base URI of repositories.
# @flag -p --priority             Show also repository priority.
# @flag -d --details              Show more information like URI, priority, type.
# @flag -r --with-repos           Show also repositories belonging to the services.
# @flag -E --show-enabled-only    Show enabled repos only.
# @flag -U --sort-by-uri          Sort the list by URI.
# @flag -N --sort-by-name         Sort the list by name.
# @flag -P --sort-by-priority     Sort the list by repository priority.
services() {
    :;
}
# }} zypper services

# {{ zypper addservice
# @cmd Add a new service.
# @alias as
# @option -n --name        Set a descriptive name for the service.
# @flag -e --enable        Enable a disabled service.
# @flag -d --disable       Disable the service (but don't remove it).
# @flag -f --refresh       Enable auto-refresh of the service.
# @flag -F --no-refresh    Disable auto-refresh of the service.
# @flag -t --type          The type of service is always autodetected.
# @arg uri!
# @arg alias!
addservice() {
    :;
}
# }} zypper addservice

# {{ zypper modifyservice
# @cmd Modify specified service.
# @alias ms
# @option -n --name                     Set a descriptive name for the service.
# @flag -e --enable                     Enable a disabled service.
# @flag -d --disable                    Disable the service (but don't remove it).
# @flag -f --refresh                    Enable auto-refresh of the service.
# @flag -F --no-refresh                 Disable auto-refresh of the service.
# @flag -a --all                        Apply changes to all services.
# @flag -l --local                      Apply changes to all local services.
# @flag -t --remote                     Apply changes to all remote services.
# @option -m --medium-type <TYPE>       Apply changes to services of specified type.
# @option -i --ar-to-enable <ALIAS>     Add a RIS service repository to enable.
# @option -I --ar-to-disable <ALIAS>    Add a RIS service repository to disable.
# @option -j --rr-to-enable <ALIAS>     Remove a RIS service repository to enable.
# @option -J --rr-to-disable <ALIAS>    Remove a RIS service repository to disable.
# @flag -k --cl-to-enable               Clear the list of RIS repositories to enable.
# @flag -K --cl-to-disable              Clear the list of RIS repositories to disable.
# @flag -r                              The same as -f.
# @flag -R                              The same as -F.
# @arg alias-uri![`_choice_service`] <ALIAS|#|URI>
modifyservice() {
    :;
}
# }} zypper modifyservice

# {{ zypper removeservice
# @cmd Remove specified service.
# @alias rs
# @flag --loose-auth     Ignore user authentication data in the URI.
# @flag --loose-query    Ignore query string in the URI.
# @arg alias-uri![`_choice_service`] <ALIAS|#|URI>
removeservice() {
    :;
}
# }} zypper removeservice

# {{ zypper refresh-services
# @cmd Refresh all services.
# @alias refs
# @flag -f --force             Force a complete refresh.
# @flag -r --with-repos        Refresh also the service repositories.
# @flag -R --restore-status    Also restore service repositories enabled/disabled state.
refresh-services() {
    :;
}
# }} zypper refresh-services

# {{ zypper install
# @cmd Install packages.
# @alias in
# @option -t --type[package|patch|pattern|product]  Type of package.
# @flag -n --name                                 Select packages by plain name, not by capability.
# @flag -C --capability                           Select packages solely by capability.
# @flag --details                                 Show the detailed installation summary.
# @option --from[`_choice_repo`] <ALIAS|#|URI>    Select packages from the specified repository.
# @flag --oldpackage                              Allow to replace a newer item with an older one.
# @flag --allow-unsigned-rpm                      Silently install unsigned rpm packages given as commandline parameters.
# @flag -f --force                                Install even if the item is already installed (reinstall), downgraded or changes vendor or architecture.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -y --no-confirm                           Don't require user interaction.
# @flag -D --dry-run                              Don't change anything, just report what would be done.
# @flag --replacefiles                            Install the packages even if they replace files from other, already installed, packages.
# @flag -l --auto-agree-with-licenses             Automatically say 'yes' to third party license confirmation prompt.
# @option --download <MODE>                       Set the download-install mode.
# @flag -d --download-only                        Only download the packages, do not install.
# @flag --debug-solver                            Create a solver test case for debugging.
# @flag --force-resolution                        Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution                  Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>                   Set the solvers general attitude when resolving a job.
# @flag --recommends                              Install also recommended packages in addition to the required ones.
# @flag --no-recommends                           Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade                      Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change                    Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change                    Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change                  Whether to allow changing the vendor of installed resolvables.
# @arg capability-rpm_file_uri+ <CAPABILITY|RPM_FILE_URI>
install() {
    :;
}
# }} zypper install

# {{ zypper remove
# @cmd Remove packages.
# @alias rm
# @option -t --type[package|patch|pattern|product]  Type of package.
# @flag -n --name                   Select packages by plain name, not by capability.
# @flag -C --capability             Select packages solely by capability.
# @flag --details                   Show the detailed installation summary.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -y --no-confirm             Don't require user interaction.
# @flag -D --dry-run                Don't change anything, just report what would be done.
# @flag -u --clean-deps             Automatically remove unneeded dependencies.
# @flag -U --no-clean-deps          No automatic removal of unneeded dependencies.
# @flag --debug-solver              Create a solver test case for debugging.
# @flag --force-resolution          Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution    Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>     Set the solvers general attitude when resolving a job.
# @arg capability+[`_choice_installed_package`]
remove() {
    :;
}
# }} zypper remove

# {{ zypper removeptf
# @cmd Remove (not only) PTFs.
# @alias rmptf
# @option -t --type[package|patch|pattern|product]  Type of package.
# @flag -n --name                                 Select packages by plain name, not by capability.
# @flag -C --capability                           Select packages solely by capability.
# @flag --details                                 Show the detailed installation summary.
# @option --from[`_choice_repo`] <ALIAS|#|URI>    Select packages from the specified repository.
# @flag --oldpackage                              Allow to replace a newer item with an older one.
# @flag --allow-unsigned-rpm                      Silently install unsigned rpm packages given as commandline parameters.
# @flag -f --force                                Install even if the item is already installed (reinstall), downgraded or changes vendor or architecture.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -y --no-confirm                           Don't require user interaction.
# @flag -D --dry-run                              Don't change anything, just report what would be done.
# @flag --replacefiles                            Install the packages even if they replace files from other, already installed, packages.
# @flag -l --auto-agree-with-licenses             Automatically say 'yes' to third party license confirmation prompt.
# @option --download <MODE>                       Set the download-install mode.
# @flag -d --download-only                        Only download the packages, do not install.
# @flag --debug-solver                            Create a solver test case for debugging.
# @flag --force-resolution                        Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution                  Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>                   Set the solvers general attitude when resolving a job.
# @flag --recommends                              Install also recommended packages in addition to the required ones.
# @flag --no-recommends                           Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade                      Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change                    Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change                    Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change                  Whether to allow changing the vendor of installed resolvables.
# @arg ptf-capability+ <PTF|CAPABILITY>
removeptf() {
    :;
}
# }} zypper removeptf

# {{ zypper verify
# @cmd Verify integrity of package dependencies.
# @alias ve
# @flag --details                   Show the detailed installation summary.
# @flag -D --dry-run                Don't change anything, just report what would be done.
# @option --download <MODE>         Set the download-install mode.
# @flag -d --download-only          Only download the packages, do not install.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -y --no-confirm             Don't require user interaction.
# @flag --debug-solver              Create a solver test case for debugging.
# @flag --force-resolution          Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution    Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>     Set the solvers general attitude when resolving a job.
# @flag --recommends                Install also recommended packages in addition to the required ones.
# @flag --no-recommends             Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade        Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change      Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change      Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change    Whether to allow changing the vendor of installed resolvables.
verify() {
    :;
}
# }} zypper verify

# {{ zypper source-install
# @cmd Install source packages and their build dependencies.
# @alias si
# @flag -d --build-deps-only        Install only build dependencies of specified packages.
# @flag -D --no-build-deps          Don't install build dependencies.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @option --download <MODE>         Set the download-install mode.
# @flag --download-only             Only download the packages, do not install.
# @flag --debug-solver              Create a solver test case for debugging.
# @flag --force-resolution          Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution    Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>     Set the solvers general attitude when resolving a job.
# @flag --recommends                Install also recommended packages in addition to the required ones.
# @flag --no-recommends             Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade        Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change      Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change      Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change    Whether to allow changing the vendor of installed resolvables.
# @arg name+
source-install() {
    :;
}
# }} zypper source-install

# {{ zypper install-new-recommends
# @cmd Install newly added packages recommended by installed packages.
# @alias inr
# @flag --details                   Show the detailed installation summary.
# @flag -D --dry-run                Don't change anything, just report what would be done.
# @option --download <MODE>         Set the download-install mode.
# @flag -d --download-only          Only download the packages, do not install.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag --debug-solver              Create a solver test case for debugging.
# @flag --force-resolution          Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution    Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>     Set the solvers general attitude when resolving a job.
# @flag --recommends                Install also recommended packages in addition to the required ones.
# @flag --no-recommends             Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade        Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change      Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change      Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change    Whether to allow changing the vendor of installed resolvables.
install-new-recommends() {
    :;
}
# }} zypper install-new-recommends

# {{ zypper update
# @cmd Update installed packages with newer versions.
# @alias up
# @option -t --type[package|patch|pattern|product]  Type of package.
# @flag --details                        Show the detailed installation summary.
# @flag --best-effort                    Do a 'best effort' approach to update.
# @flag --replacefiles                   Install the packages even if they replace files from other, already installed, packages.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -y --no-confirm                  Don't require user interaction.
# @flag --with-interactive               Do not skip interactive updates.
# @flag --skip-interactive               Skip interactive updates.
# @flag -l --auto-agree-with-licenses    Automatically say 'yes' to third party license confirmation prompt.
# @flag -D --dry-run                     Don't change anything, just report what would be done.
# @option --download <MODE>              Set the download-install mode.
# @flag -d --download-only               Only download the packages, do not install.
# @flag --debug-solver                   Create a solver test case for debugging.
# @flag --force-resolution               Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution         Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>          Set the solvers general attitude when resolving a job.
# @flag --recommends                     Install also recommended packages in addition to the required ones.
# @flag --no-recommends                  Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade             Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change           Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change           Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change         Whether to allow changing the vendor of installed resolvables.
# @arg packagename*[`_choice_installed_package`]
update() {
    :;
}
# }} zypper update

# {{ zypper list-updates
# @cmd List available updates.
# @alias lu
# @option -t --type[package|patch|pattern|product]  Type of package.
# @flag --best-effort               Do a 'best effort' approach to update.
# @flag -a --all                    List all packages for which newer versions are available, regardless whether they are installable or not.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag --allow-downgrade
# @flag --no-allow-downgrade        Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change      Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change      Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change    Whether to allow changing the vendor of installed resolvables.
list-updates() {
    :;
}
# }} zypper list-updates

# {{ zypper patch
# @cmd Install needed patches.
# @flag --updatestack-only               Consider only patches which affect the package management itself.
# @flag --with-update                    Additionally try to update all packages not covered by patches.
# @flag --details                        Show the detailed installation summary.
# @flag --replacefiles                   Install the packages even if they replace files from other, already installed, packages.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @option -g --category                  Select patches with the specified category.
# @option --severity                     Select patches with the specified severity.
# @option --date <YYYY-MM-DD>            Select patches issued up to, but not including, the specified date
# @option -b --bugzilla <#>              Select applicable patches for the specified Bugzilla issues.
# @option --cve <#>                      Select applicable patches for the specified CVE issues.
# @flag -y --no-confirm                  Don't require user interaction.
# @flag --with-optional
# @flag --without-optional               Whether applicable optional patches should be treated as needed or be excluded.
# @flag --with-interactive               Do not skip interactive updates.
# @flag --skip-interactive               Skip interactive updates.
# @flag -l --auto-agree-with-licenses    Automatically say 'yes' to third party license confirmation prompt.
# @flag -D --dry-run                     Don't change anything, just report what would be done.
# @option --download <MODE>              Set the download-install mode.
# @flag -d --download-only               Only download the packages, do not install.
# @flag --debug-solver                   Create a solver test case for debugging.
# @flag --force-resolution               Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution         Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>          Set the solvers general attitude when resolving a job.
# @flag --recommends                     Install also recommended packages in addition to the required ones.
# @flag --no-recommends                  Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade             Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change           Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change           Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change         Whether to allow changing the vendor of installed resolvables.
patch() {
    :;
}
# }} zypper patch

# {{ zypper list-patches
# @cmd List available patches.
# @alias lp
# @flag -a --all                 List all patches, not only applicable ones.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @option -g --category          Select patches with the specified category.
# @option --severity             Select patches with the specified severity.
# @option --date <YYYY-MM-DD>    Select patches issued up to, but not including, the specified date
# @option -b --bugzilla <#>      Select applicable patches for the specified Bugzilla issues.
# @option --cve <#>              Select applicable patches for the specified CVE issues.
# @option --issue <STRING>       Select issues matching the specified string.
# @flag --with-optional
# @flag --without-optional       Whether applicable optional patches should be treated as needed or be excluded.
list-patches() {
    :;
}
# }} zypper list-patches

# {{ zypper dist-upgrade
# @cmd Perform a distribution upgrade.
# @alias dup
# @option --from[`_choice_repo`] <ALIAS|#|URI>    Restrict upgrade to specified repository.
# @flag --details                                 Show the detailed installation summary.
# @flag --replacefiles                            Install the packages even if they replace files from other, already installed, packages.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -l --auto-agree-with-licenses             Automatically say 'yes' to third party license confirmation prompt.
# @flag -D --dry-run                              Don't change anything, just report what would be done.
# @flag -y --no-confirm                           Don't require user interaction.
# @option --download <MODE>                       Set the download-install mode.
# @flag -d --download-only                        Only download the packages, do not install.
# @flag --debug-solver                            Create a solver test case for debugging.
# @flag --force-resolution                        Force the solver to find a solution (even an aggressive one) rather than asking.
# @flag -R --no-force-resolution                  Do not force the solver to find a solution, let it ask.
# @option --solver-focus <MODE>                   Set the solvers general attitude when resolving a job.
# @flag --recommends                              Install also recommended packages in addition to the required ones.
# @flag --no-recommends                           Do not install recommended packages, only required ones.
# @flag --allow-downgrade
# @flag --no-allow-downgrade                      Whether to allow downgrading installed resolvables.
# @flag --allow-name-change
# @flag --no-allow-name-change                    Whether to allow changing the names of installed resolvables.
# @flag --allow-arch-change
# @flag --no-allow-arch-change                    Whether to allow changing the architecture of installed resolvables.
# @flag --allow-vendor-change
# @flag --no-allow-vendor-change                  Whether to allow changing the vendor of installed resolvables.
dist-upgrade() {
    :;
}
# }} zypper dist-upgrade

# {{ zypper patch-check
# @cmd Check for patches.
# @alias pchk
# @flag --updatestack-only    Consider only patches which affect the package management itself.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag --with-optional
# @flag --without-optional    Whether applicable optional patches should be treated as needed or be excluded.
patch-check() {
    :;
}
# }} zypper patch-check

# {{ zypper search
# @cmd Search for packages matching a pattern.
# @alias se
# @flag --match-substrings          Search for a match to partial words (default).
# @flag --match-words               Search for a match to whole words only.
# @flag -x --match-exact            Searches for an exact match of the search strings.
# @flag --provides                  Search for packages which provide the search strings.
# @flag --requires                  Search for packages which require the search strings.
# @flag --recommends                Search for packages which recommend the search strings.
# @flag --supplements               Search for packages which supplement the search strings.
# @flag --conflicts                 Search packages conflicting with search strings.
# @flag --obsoletes                 Search for packages which obsolete the search strings.
# @flag --suggests                  Search for packages which suggest the search strings.
# @flag --provides-pkg              Search for all packages that provide any of the provides of the package(s) matched by the input parameters.
# @flag --requires-pkg              Search for all packages that require any of the provides of the package(s) matched by the input parameters.
# @flag --recommends-pkg            Search for all packages that recommend any of the provides of the package(s) matched by the input parameters.
# @flag --supplements-pkg           Search for all packages that supplement any of the provides of the package(s) matched by the input parameters.
# @flag --conflicts-pkg             Search for all packages that conflict with any of the package(s) matched by the input parameters.
# @flag --obsoletes-pkg             Search for all packages that obsolete any of the package(s) matched by the input parameters.
# @flag --suggests-pkg              Search for all packages that suggest any of the provides of the package(s) matched by the input parameters.
# @option -t --type                 Search only for packages of the specified type.
# @flag -n --name                   Useful together with dependency options, otherwise searching in package name is default.
# @flag -f --file-list              Search for a match in the file list of packages.
# @flag -d --search-descriptions    Search also in package summaries and descriptions.
# @flag -C --case-sensitive         Perform case-sensitive search.
# @flag -s --details                Show each available version in each repository on a separate line.
# @flag -v --verbose                Like --details, with additional information where the search has matched (useful for search in dependencies).
# @flag -i --installed-only         Show only installed packages.
# @flag -u --not-installed-only     Show only packages which are not installed.
# @flag --sort-by-name              Sort packages by name (default).
# @flag --sort-by-repo              Sort packages by repository.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @arg querystring*
search() {
    :;
}
# }} zypper search

# {{ zypper info
# @cmd Show full information for specified packages.
# @alias if
# @flag -s --match-substrings    Print information for packages partially matching name.
# @option -t --type[package|patch|pattern|product]  Type of package.
# @flag --provides               Show provides.
# @flag --requires               Show requires and prerequires.
# @flag --conflicts              Show conflicts.
# @flag --obsoletes              Show obsoletes.
# @flag --recommends             Show recommends.
# @flag --supplements            Show supplements.
# @flag --suggests               Show suggests.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @arg name+
info() {
    :;
}
# }} zypper info

# {{ zypper patch-info
# @cmd Show full information for specified patches.
# @arg patchname+[`_choice_patch`]
patch-info() {
    :;
}
# }} zypper patch-info

# {{ zypper pattern-info
# @cmd Show full information for specified patterns.
# @arg pattern_name+[`_choice_pattern`]
pattern-info() {
    :;
}
# }} zypper pattern-info

# {{ zypper product-info
# @cmd Show full information for specified products.
# @arg product_name+[`_choice_product`]
product-info() {
    :;
}
# }} zypper product-info

# {{ zypper patches
# @cmd List all available patches.
# @alias pch
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @arg repository*
patches() {
    :;
}
# }} zypper patches

# {{ zypper packages
# @cmd List all available packages.
# @alias pa
# @flag --orphaned                 Show packages which are orphaned (without repository).
# @flag --suggested                Show packages which are suggested.
# @flag --recommended              Show packages which are recommended.
# @flag --unneeded                 Show packages which are unneeded.
# @flag -N --sort-by-name          Sort the list by package name.
# @flag -R --sort-by-repo          Sort the list by repository.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -i --installed-only        Show only installed packages.
# @flag -u --not-installed-only    Show only packages which are not installed.
# @arg repository*
packages() {
    :;
}
# }} zypper packages

# {{ zypper patterns
# @cmd List all available patterns.
# @alias pt
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -i --installed-only        Show only installed packages.
# @flag -u --not-installed-only    Show only packages which are not installed.
# @arg repository*
patterns() {
    :;
}
# }} zypper patterns

# {{ zypper products
# @cmd List all available products.
# @alias pd
# @option --xmlfwd <TAG>           XML output only: Literally forward the XML tags found in a product file.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @flag -i --installed-only        Show only installed packages.
# @flag -u --not-installed-only    Show only packages which are not installed.
# @arg repository*
products() {
    :;
}
# }} zypper products

# {{ zypper what-provides
# @cmd List packages providing specified capability.
# @alias wp
# @arg capability!
what-provides() {
    :;
}
# }} zypper what-provides

# {{ zypper addlock
# @cmd Add a package lock.
# @alias al
# @option -t --type[package|patch|pattern|product]  Type of package.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Restrict the lock to the specified repository.
# @option -m --comment <STRING>    Reason for specific lock.
# @arg lockspec+
addlock() {
    :;
}
# }} zypper addlock

# {{ zypper removelock
# @cmd Remove a package lock.
# @alias rl
# @option -t --type[package|patch|pattern|product]  Type of package.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Remove only locks with specified repository.
# @arg lock-number-packagename+[`_choice_lock`] <LOCK-NUMBER|PACKAGENAME>
removelock() {
    :;
}
# }} zypper removelock

# {{ zypper locks
# @cmd List current package locks.
# @alias ll
# @flag -m --matches      Show the number of resolvables matched by each lock.
# @flag -s --solvables    List the resolvables matched by each lock.
locks() {
    :;
}
# }} zypper locks

# {{ zypper cleanlocks
# @cmd Remove useless locks.
# @alias cl
# @flag -d --only-duplicates    Clean only duplicate locks.
# @flag -e --only-empty         Clean only locks which doesn't lock anything.
cleanlocks() {
    :;
}
# }} zypper cleanlocks

# {{ zypper locales
# @cmd List requested locales (languages codes).
# @alias lloc
# @flag -p --packages    Show corresponding packages.
# @flag -a --all         List all available locales.
# @arg locale*
locales() {
    :;
}
# }} zypper locales

# {{ zypper addlocale
# @cmd Add locale(s) to requested locales.
# @alias aloc
# @flag -n --no-packages    Do not install corresponding packages for given locale(s).
# @arg locale+
addlocale() {
    :;
}
# }} zypper addlocale

# {{ zypper removelocale
# @cmd Remove locale(s) from requested locales.
# @alias rloc
# @flag -n --no-packages    Do not remove corresponding packages for given locale(s).
# @arg locale+
removelocale() {
    :;
}
# }} zypper removelocale

# {{ zypper versioncmp
# @cmd Compare two version strings.
# @alias vcmp
# @flag -m --match    Takes missing release number as any release.
# @arg version1!
# @arg version2!
versioncmp() {
    :;
}
# }} zypper versioncmp

# {{ zypper targetos
# @cmd Print the target operating system ID string.
# @alias tos
# @flag -l --label    Show the baseproducts distribution and short label instead.
targetos() {
    :;
}
# }} zypper targetos

# {{ zypper licenses
# @cmd Print report about licenses and EULAs of installed packages.
licenses() {
    :;
}
# }} zypper licenses

# {{ zypper download
# @cmd Download rpms specified on the commandline to a local directory.
# @flag --all-matches                             Download all versions matching the commandline arguments.
# @option --from[`_choice_repo`] <ALIAS|#|URI>    Select packages from the specified repository.
# @flag -D --dry-run                              Don't change anything, just report what would be done.
# @option -r --repo[`_choice_repo`] <ALIAS|#|URI>  Work only with the specified repository.
# @arg packages+
download() {
    :;
}
# }} zypper download

# {{ zypper source-download
# @cmd Download source rpms for all installed packages to a local directory.
# @option -d --directory <DIR>    Download all source rpms to this directory.
# @flag --delete
# @flag --no-delete               Whether to delete extraneous source rpms in the local directory.
# @flag --status                  Don't download any source rpms, but show which source rpms are missing or extraneous.
source-download() {
    :;
}
# }} zypper source-download

# {{ zypper needs-rebooting
# @cmd Check if the reboot-needed flag was set.
needs-rebooting() {
    :;
}
# }} zypper needs-rebooting

# {{ zypper ps
# @cmd List running processes which might still use files and libraries deleted by recent upgrades.
# @flag -s --short                 Create a short table not showing the deleted files.
# @option --print <FORMAT>         For each associated system service print <format> on the standard output, followed by a newline.
# @option -d --debugFile <PATH>    Write debug output to file <path>.
ps() {
    :;
}
# }} zypper ps

# {{ zypper purge-kernels
# @cmd Remove old kernels.
# @flag --details       Show the detailed installation summary.
# @flag -D --dry-run    Don't change anything, just report what would be done.
purge-kernels() {
    :;
}
# }} zypper purge-kernels

# {{ zypper subcommand
# @cmd Lists available subcommands.
# @arg subcommand!
subcommand() {
    :;
}
# }} zypper subcommand

_choice_repo() {
    LC_ALL=POSIX zypper -q lr | _helper_extract
}

_choice_service() {
    LC_ALL=POSIX zypper -q ls | _helper_extract
}

_choice_installed_package() {
    _helper_list_packages
}

_choice_patch() {
    _helper_list_packages "patch:$ARGC_CWORD" | sed -e "s/^patch://"
}

_choice_pattern() {
    _helper_list_packages "pattern:$ARGC_CWORD" | sed -e "s/^pattern://"
}

_choice_product() {
    _helper_list_packages "product:$ARGC_CWORD" | sed -e "s/^product://"
}

_choice_lock() {
    LC_ALL=POSIX zypper -q ll | _helper_extract
}

_helper_extract() {
    sed -rn '/^[0-9]/{
        s/^[0-9]+[[:blank:]]*\|[[:blank:]]*([^|]+).*/\1/
        s/[[:blank:]]*$//
        p
    }'
}

_helper_list_packages() {
    local filter="^${1:-$ARGC_CWORD}"
	set +o noglob
	grep -s --no-filename "$filter" /var/cache/zypp/solv/*/solv.idx |\
		cut -f1 | sort --unique
	set -o noglob
}

command eval "$(argc --argc-eval "$0" "$@")"