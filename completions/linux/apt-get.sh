#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta inherit-flag-options
# @flag --no-install-recommends             Do not consider recommended packages as a dependency for installing.
# @flag --install-suggests                  Consider suggested packages as a dependency for installing.
# @flag -d --download-only                  Download only; package files are only retrieved, not unpacked or installed.
# @flag -f --fix-broken                     Fix; attempt to correct a system with broken dependencies in place.
# @flag -m                                  Ignore missing packages; if packages cannot be retrieved or fail the integrity check after retrieval (corrupted package files), hold back those packages and handle the result.
# @flag --ignore-missing                    Ignore missing packages; if packages cannot be retrieved or fail the integrity check after retrieval (corrupted package files), hold back those packages and handle the result.
# @flag --fix-missing                       Ignore missing packages; if packages cannot be retrieved or fail the integrity check after retrieval (corrupted package files), hold back those packages and handle the result.
# @flag --no-download                       Disables downloading of packages.
# @flag -q --quiet                          Quiet; produces output suitable for logging, omitting progress indicators.
# @flag -s                                  No action; perform a simulation of events that would occur based on the current system state but do not actually change the system.
# @flag --simulate                          No action; perform a simulation of events that would occur based on the current system state but do not actually change the system.
# @flag --just-print                        No action; perform a simulation of events that would occur based on the current system state but do not actually change the system.
# @flag --dry-run                           No action; perform a simulation of events that would occur based on the current system state but do not actually change the system.
# @flag --recon                             No action; perform a simulation of events that would occur based on the current system state but do not actually change the system.
# @flag --no-act                            No action; perform a simulation of events that would occur based on the current system state but do not actually change the system.
# @flag -y                                  Automatic yes to prompts; assume "yes" as answer to all prompts and run non-interactively.
# @flag --yes                               Automatic yes to prompts; assume "yes" as answer to all prompts and run non-interactively.
# @flag --assume-yes                        Automatic yes to prompts; assume "yes" as answer to all prompts and run non-interactively.
# @flag --assume-no                         Automatic "no" to all prompts.
# @flag --no-show-upgraded                  Do not show a list of all packages that are to be upgraded.
# @flag -V --verbose-versions               Show full versions for upgraded and installed packages.
# @flag -a --host-architecture              This option controls the architecture packages are built for by apt-get source --compile and how cross-builddependencies are satisfied.
# @flag -P --build-profiles                 This option controls the activated build profiles for which a source package is built by apt-get source --compile and how build dependencies are satisfied.
# @flag -b                                  Compile source packages after downloading them.
# @flag --compile                           Compile source packages after downloading them.
# @flag --build                             Compile source packages after downloading them.
# @flag --ignore-hold                       Ignore package holds; this causes apt-get to ignore a hold placed on a package.
# @flag --with-new-pkgs                     Allow installing new packages when used in conjunction with upgrade.
# @flag --no-upgrade                        Do not upgrade packages; when used in conjunction with install, no-upgrade will prevent packages on the command line from being upgraded if they are already installed.
# @flag --only-upgrade                      Do not install new packages; when used in conjunction with install, only-upgrade will install upgrades for already installed packages only and ignore requests to install new packages.
# @flag --allow-downgrades                  This is a dangerous option that will cause apt to continue without prompting if it is doing downgrades.
# @flag --allow-remove-essential            Force yes; this is a dangerous option that will cause apt to continue without prompting if it is removing essentials.
# @flag --allow-change-held-packages        Force yes; this is a dangerous option that will cause apt to continue without prompting if it is changing held packages.
# @flag --force-yes                         Force yes; this is a dangerous option that will cause apt to continue without prompting if it is doing something potentially harmful.
# @flag --print-uris                        Instead of fetching the files to install their URIs are printed.
# @flag --purge                             Use purge instead of remove for anything that would be removed.
# @flag --reinstall                         Re-install packages that are already installed and at the newest version.
# @flag --list-cleanup                      This option is on by default; use --no-list-cleanup to turn it off.
# @flag -S --snapshot                       This option controls the snapshot chosen for archives with Snapshot: enable in the source entry.
# @flag -t                                  This option controls the default input to the policy engine; it creates a default pin at priority 990 using the specified release string.
# @flag --target-release                    This option controls the default input to the policy engine; it creates a default pin at priority 990 using the specified release string.
# @flag --default-release                   This option controls the default input to the policy engine; it creates a default pin at priority 990 using the specified release string.
# @flag --trivial-only                      Only perform operations that are 'trivial'.
# @flag --mark-auto                         After successful installation, mark all freshly installed packages as automatically installed, which will cause each of the packages to be removed when no more manually installed packages depend on this package.
# @flag --no-remove                         If any packages are to be removed apt-get immediately aborts without prompting.
# @flag --auto-remove                       If the command is either install or remove, then this option acts like running the autoremove command, removing unused dependency packages.
# @flag --autoremove                        If the command is either install or remove, then this option acts like running the autoremove command, removing unused dependency packages.
# @flag --only-source                       Only has meaning for the source and build-dep commands.
# @flag --diff-only                         Download only the diff, dsc, or tar file of a source archive.
# @flag --dsc-only                          Download only the diff, dsc, or tar file of a source archive.
# @flag --tar-only                          Download only the diff, dsc, or tar file of a source archive.
# @flag --arch-only                         Only process architecture-dependent build-dependencies.
# @flag --indep-only                        Only process architecture-independent build-dependencies.
# @flag --allow-unauthenticated             Ignore if packages can't be authenticated and don't prompt about it.
# @flag --no-allow-insecure-repositories    Forbid the update command to acquire unverifiable data from configured sources.
# @flag --allow-releaseinfo-change          Allow the update command to continue downloading data from a repository which changed its information of the release contained in the repository indicating e.g a new major release.
# @flag --show-progress                     Show user friendly progress information in the terminal window when packages are installed, upgraded or removed.
# @option --with-source <filename>          Adds the given file as a source for metadata.
# @option -eany <any>                       Fail the update command if any error occured, even a transient one.
# @option --error-on <any>                  Fail the update command if any error occured, even a transient one.
# @flag -h --help                           Show a short usage summary.
# @flag -v --version                        Show the program version.
# @flag -c --config-file                    Configuration File; Specify a configuration file to use.
# @flag -o --option                         Set a Configuration Option; This will set an arbitrary configuration option.

# {{ apt-get update
# @cmd update is used to resynchronize the package index files from their sources.
# @arg pkg*[`_choice_installed_package`]
update() {
    :;
}
# }} apt-get update

# {{ apt-get upgrade
# @cmd upgrade is used to install the newest versions of all packages currently installed on the system from the sources enumerated in /etc/apt/sources.list.
upgrade() {
    :;
}
# }} apt-get upgrade

# {{ apt-get dist-upgrade
# @cmd dist-upgrade in addition to performing the function of upgrade, also intelligently handles changing dependencies with new versions of packages; apt-get has a "smart" conflict resolution system, and it will attempt to upgrade the most important packages at the expense of less important ones if necessary.
dist-upgrade() {
    :;
}
# }} apt-get dist-upgrade

# {{ apt-get dselect-upgrade
# @cmd dselect-upgrade is used in conjunction with the traditional Debian packaging front-end, dselect(1).
dselect-upgrade() {
    :;
}
# }} apt-get dselect-upgrade

# {{ apt-get install
# @cmd install is followed by one or more packages desired for installation or upgrading.
# @arg pkg*[`_choice_package`]
install() {
    :;
}
# }} apt-get install

# {{ apt-get reinstall
# @cmd reinstall is an alias for install --reinstall.
# @arg pkg*[`_choice_installed_package`]
reinstall() {
    :;
}
# }} apt-get reinstall

# {{ apt-get remove
# @cmd remove is identical to install except that packages are removed instead of installed.
# @arg pkg*[`_choice_installed_package`]
remove() {
    :;
}
# }} apt-get remove

# {{ apt-get purge
# @cmd purge is identical to remove except that packages are removed and purged (any configuration files are deleted too).
# @arg pkg*[`_choice_installed_package`]
purge() {
    :;
}
# }} apt-get purge

# {{ apt-get source
# @cmd source causes apt-get to fetch source packages.
# @arg pkg*[`_choice_package`]
source() {
    :;
}
# }} apt-get source

# {{ apt-get build-dep
# @cmd build-dep causes apt-get to install/remove packages in an attempt to satisfy the build dependencies for a source package.
# @arg pkg*[`_choice_package`]
build-dep() {
    :;
}
# }} apt-get build-dep

# {{ apt-get satisfy
# @cmd satisfy causes apt-get to satisfy the given dependency strings.
satisfy() {
    :;
}
# }} apt-get satisfy

# {{ apt-get check
# @cmd check is a diagnostic tool; it updates the package cache and checks for broken dependencies.
# @arg pkg*[`_choice_installed_package`]
check() {
    :;
}
# }} apt-get check

# {{ apt-get download
# @cmd download will download the given binary package into the current directory.
# @arg pkg*[`_choice_package`]
download() {
    :;
}
# }} apt-get download

# {{ apt-get clean
# @cmd clean clears out the local repository of retrieved package files.
clean() {
    :;
}
# }} apt-get clean

# {{ apt-get autoclean
# @cmd Like clean, autoclean clears out the local repository of retrieved package files.
autoclean() {
    :;
}
# }} apt-get autoclean

# {{ apt-get autoremove
# @cmd autoremove is used to remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed.
autoremove() {
    :;
}
# }} apt-get autoremove

# {{ apt-get changelog
# @cmd changelog tries to download the changelog of a package and displays it through sensible-pager.
# @arg pkg*[`_choice_package`]
changelog() {
    :;
}
# }} apt-get changelog

# {{ apt-get indextargets
# @cmd Displays by default a deb822 formatted listing of information about all data files (aka index targets) apt-get update would download.
indextargets() {
    :;
}
# }} apt-get indextargets

_choice_installed_package() {
    dpkg --get-selections | gawk '{if (match($2, /(install|hold)/)) { print $1}}'
}

_choice_package() {
    apt-cache --no-generate pkgnames
}

command eval "$(argc --argc-eval "$0" "$@")"