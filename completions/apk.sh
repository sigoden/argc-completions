#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ apk add
# @cmd Add packages to WORLD and commit changes
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @flag -s --simulate                       Simulate the requested operation without making any changes
# @flag --clean-protected                   Do not create .apk-new files in configuration directories
# @flag --overlay-from-stdin                Read list of overlay files from stdin
# @flag --no-scripts                        Do not execute any scripts
# @flag --no-commit-hooks                   Skip pre/post hook scripts (but not other scripts)
# @flag --initramfs-diskless-boot           Used by initramfs when it's recreating root tmpfs
# @flag --initdb                            Initialize a new package database
# @flag -l --latest                         Always choose the latest package by version
# @flag -u --upgrade                        Upgrade PACKAGES and it's dependencies
# @option -t --virtual <NAME>               Create virtual package NAME with given dependencies
# @flag --no-chown                          Do not change file owner or group
# @arg packages*[`_choice_package`]
add() {
    :;
}
# }} apk add

# {{ apk del
# @cmd Remove packages from WORLD and commit changes
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @flag -s --simulate                       Simulate the requested operation without making any changes
# @flag --clean-protected                   Do not create .apk-new files in configuration directories
# @flag --overlay-from-stdin                Read list of overlay files from stdin
# @flag --no-scripts                        Do not execute any scripts
# @flag --no-commit-hooks                   Skip pre/post hook scripts (but not other scripts)
# @flag --initramfs-diskless-boot           Used by initramfs when it's recreating root tmpfs
# @flag -r --rdepends                       Recursively delete all top-level reverse dependencies, too
# @arg packages*[`_choice_installed_package`]
del() {
    :;
}
# }} apk del

# {{ apk fix
# @cmd Fix, reinstall or upgrade packages without modifying WORLD
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @flag -s --simulate                       Simulate the requested operation without making any changes
# @flag --clean-protected                   Do not create .apk-new files in configuration directories
# @flag --overlay-from-stdin                Read list of overlay files from stdin
# @flag --no-scripts                        Do not execute any scripts
# @flag --no-commit-hooks                   Skip pre/post hook scripts (but not other scripts)
# @flag --initramfs-diskless-boot           Used by initramfs when it's recreating root tmpfs
# @flag -d --depends                        Also fix dependencies of specified packages
# @flag -r --reinstall                      Reinstall packages (default)
# @flag -u --upgrade                        Upgrade name PACKAGE if an upgrade exists and does not break dependencies
# @flag -x --xattr                          Fix packages with broken xattrs
# @flag --directory-permissions             Reset all directory permissions
# @arg packages*[`_choice_installed_package`]
fix() {
    :;
}
# }} apk fix

# {{ apk update
# @cmd Update repository indexes
update() {
    :;
}
# }} apk update

# {{ apk upgrade
# @cmd Install upgrades available from repositories
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @flag -s --simulate                       Simulate the requested operation without making any changes
# @flag --clean-protected                   Do not create .apk-new files in configuration directories
# @flag --overlay-from-stdin                Read list of overlay files from stdin
# @flag --no-scripts                        Do not execute any scripts
# @flag --no-commit-hooks                   Skip pre/post hook scripts (but not other scripts)
# @flag --initramfs-diskless-boot           Used by initramfs when it's recreating root tmpfs
# @flag -a --available                      Reset all packages to versions available from current repositories
# @flag --ignore                            Upgrade all other packages than the ones listed
# @flag -l --latest                         Always choose the latest package by version
# @flag --no-self-upgrade                   Do not do an early upgrade of the 'apk-tools' package
# @flag --prune                             Prune the WORLD by removing packages which are no longer available from any configured repository
# @flag --self-upgrade-only                 Only perform a self-upgrade of the 'apk-tools' package
# @arg packages*[`_choice_installed_package`]
upgrade() {
    :;
}
# }} apk upgrade

# {{ apk cache
# @cmd Manage the local package cache
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @flag --add-dependencies                  Add the argument dependencies to WORLD dependencies when determining which packages to download
# @flag -a --available                      Selected packages to be downloaded from active repositories even if it means replacing or downgrading the installed package
# @flag --ignore-conflict                   Ignore conflicts when resolving dependencies
# @flag -l --latest                         Always choose the latest package by version
# @flag -u --upgrade                        Upgrade PACKAGES and it's dependencies
# @flag -s --simulate                       Simulate the requested operation without making any changes
cache() {
    :;
}

# {{{ apk cache clean
# @cmd Removing older packages
cache::clean() {
    :;
}
# }}} apk cache clean

# {{{ apk cache download
# @cmd Download missing packages
# @arg dependency*[`_choice_package`]
cache::download() {
    :;
}
# }}} apk cache download

# {{{ apk cache sync
# @cmd Delete and download in one step
# @arg dependency*[`_choice_package`]
cache::sync() {
    :;
}
# }}} apk cache sync
# }} apk cache

# {{ apk info
# @cmd Give detailed information about packages or repositories
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @option --from <FROMSPEC>                 Search packages from: system (all system sources), repositories (exclude installed database), installed (exclude normal repositories) or none (commandline repositories only)
# @flag -a --all                            List all information known about the package
# @flag -d --description                    Print the package description
# @flag -e --installed                      Check package installed status
# @flag -L --contents                       List files included in the package
# @flag -P --provides                       List what the package provides
# @flag -r --rdepends                       List reverse dependencies of the package (all other packages which depend on the package)
# @flag -R --depends                        List the dependencies of the package
# @flag -s --size                           Print the package's installed size
# @flag -w --webpage                        Print the URL for the package's upstream webpage
# @flag -W --who-owns                       Print the package which owns the specified file
# @flag --install-if                        List the package's install_if rule
# @flag --license                           Print the package SPDX license identifier
# @flag --replaces                          List the other packages for which this package is marked as a replacement
# @flag --rinstall-if                       List other packages whose install_if rules refer to this package
# @flag --triggers                          Print active triggers for the package
# @arg packages*[`_choice_package`]
info() {
    :;
}
# }} apk info

# {{ apk list
# @cmd List packages matching a pattern or other criteria
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @option --from <FROMSPEC>                 Search packages from: system (all system sources), repositories (exclude installed database), installed (exclude normal repositories) or none (commandline repositories only)
# @flag -I --installed                      Consider only installed packages
# @flag -O --orphaned                       Consider only orphaned packages
# @flag -a --available                      Consider only available packages
# @flag -u                                  Consider only upgradable packages
# @flag --upgradable                        Consider only upgradable packages
# @flag --upgradeable                       Consider only upgradable packages
# @flag -o --origin                         List packages by origin
# @flag -d --depends                        List packages by dependency
# @flag -P --providers                      List packages by provider
# @arg pattern*
list() {
    :;
}
# }} apk list

# {{ apk dot
# @cmd Render dependencies as graphviz graphs
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @option --from <FROMSPEC>                 Search packages from: system (all system sources), repositories (exclude installed database), installed (exclude normal repositories) or none (commandline repositories only)
# @flag --errors                            Consider only packages with errors
# @flag --installed                         Consider only installed packages
# @arg pkgmask*
dot() {
    :;
}
# }} apk dot

# {{ apk policy
# @cmd Show repository policy for packages
# @arg packages*[`_choice_package`]
policy() {
    :;
}
# }} apk policy

# {{ apk search
# @cmd Search for packages by name or description
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @option --from <FROMSPEC>                 Search packages from: system (all system sources), repositories (exclude installed database), installed (exclude normal repositories) or none (commandline repositories only)
# @flag -a --all                            Print all matching package versions
# @flag -d --description                    Also search for PATTERN in the package description
# @flag -e                                  Match package names exactly
# @flag -x                                  Match package names exactly
# @flag --exact                             Match package names exactly
# @flag --has-origin                        Match by package origin
# @flag -o --origin                         Print base package name
# @flag -r --rdepends                       Print reverse dependencies (other packages which depend on the package)
# @arg pattern*
search() {
    :;
}
# }} apk search

# {{ apk index
# @cmd Create repository index file from packages
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @option -d --description <TEXT>           Add a description to the index
# @flag --merge                             Merge PACKAGES into the existing INDEX
# @option -o --output <FILE>                Output generated index to FILE
# @flag --prune-origin                      Prune packages from the existing INDEX with same origin as any of the new PACKAGES during merge
# @option -x --index                        Read an existing index from INDEX to speed up the creation of the new index by reusing data when possible
# @flag --no-warnings                       Disable the warning about missing dependencies
# @option --rewrite-arch <ARCH>             Set all package's architecture to ARCH
# @arg packages*[`_choice_package`]
index() {
    :;
}
# }} apk index

# {{ apk fetch
# @cmd Download packages from repositories to a local directory
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @option --from <FROMSPEC>                 Search packages from: system (all system sources), repositories (exclude installed database), installed (exclude normal repositories) or none (commandline repositories only)
# @option --built-after <TIMESPEC>          Only fetch packages that have buildtime more recent than TIMESPEC
# @flag -l --link                           Create hard links if possible
# @option -o --output <DIR>                 Write the downloaded file(s) to DIR
# @flag -R --recursive                      Fetch packages and all of their dependencies
# @flag -s --stdout                         Dump the .apk file(s) to stdout
# @flag -w --world                          Download packages needed to satisfy WORLD
# @flag --simulate                          Simulate the requested operation without making any changes
# @flag --url                               Print the full URL for downloaded packages
# @arg packages*[`_choice_package`]
fetch() {
    :;
}
# }} apk fetch

# {{ apk manifest
# @cmd Show checksums of package contents
# @arg packages*[`_choice_installed_package`]
manifest() {
    :;
}
# }} apk manifest

# {{ apk verify
# @cmd Verify package integrity and signature
# @arg files*
verify() {
    :;
}
# }} apk verify

# {{ apk audit
# @cmd Audit system for changes
# @flag -f --force                          Enable selected --force-* options (deprecated)
# @flag -i --interactive                    Ask confirmation before performing certain operations
# @option -p --root                         Manage file system at ROOT
# @flag -q --quiet                          Print less information
# @flag -U --update-cache                   Alias for '--cache-max-age 1'
# @flag -v --verbose                        Print more information (can be specified twice)
# @flag -V --version                        Print program version and exit
# @option -X --repository <REPO>            Specify additional package repository
# @flag --allow-untrusted                   Install packages with untrusted signature or no signature
# @option --arch                            Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>            Temporarily override the cache directory
# @option --cache-max-age <AGE>             Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout               Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories        Continue even if some of the repository indexes are not available
# @flag --force-non-repository              Continue even if packages may be lost on reboot
# @flag --force-old-apk                     Continue even if packages use unsupported features
# @flag --force-overwrite                   Overwrite files in other packages
# @flag --force-refresh                     Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>              Override directory of trusted keys
# @flag --no-cache                          Do not use any local cache path
# @flag --no-check-certificate              Do not validate the HTTPS server certificates
# @flag --no-interactive                    Disable interactive mode
# @flag --no-network                        Do not use the network
# @flag --no-progress                       Disable progress bar even for TTYs
# @flag --print-arch                        Print default arch and exit
# @flag --progress                          Show progress
# @option --progress-fd <FD>                Write progress to the specified file descriptor
# @flag --purge                             Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>    Override system repositories, see repositories
# @option --timeout <TIME>                  Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                     Wait for TIME seconds to get an exclusive repository lock before failing
# @flag --backup                            Audit configuration files only (default)
# @flag --check-permissions                 Check file permissions too
# @flag --details                           Enable reporting of detail records
# @flag --full                              Audit all system files
# @flag --ignore-busybox-symlinks           Ignore symlinks whose target is the busybox binary
# @flag --packages                          Print only the packages with changed files
# @option --protected-paths <FILE>          Use given FILE for protected paths listings
# @flag --system                            Audit all system files
# @flag -r --recursive                      Descend into directories and audit them as well
# @arg directories*
audit() {
    :;
}
# }} apk audit

# {{ apk stats
# @cmd Show statistics about repositories and installations
stats() {
    :;
}
# }} apk stats

# {{ apk version
# @cmd Compare package versions or perform tests on version strings
# @flag -f --force                           Enable selected --force-* options (deprecated)
# @flag -i --interactive                     Ask confirmation before performing certain operations
# @option -p --root                          Manage file system at ROOT
# @flag -q --quiet                           Print less information
# @flag -U --update-cache                    Alias for '--cache-max-age 1'
# @flag -v --verbose                         Print more information (can be specified twice)
# @flag -V --version                         Print program version and exit
# @option -X --repository <REPO>             Specify additional package repository
# @flag --allow-untrusted                    Install packages with untrusted signature or no signature
# @option --arch                             Temporarily override architecture, to be combined with --root
# @option --cache-dir <CACHEDIR>             Temporarily override the cache directory
# @option --cache-max-age <AGE>              Maximum AGE (in minutes) for index in cache before it's refreshed
# @flag --force-binary-stdout                Continue even if binary data will be printed to the terminal
# @flag --force-broken-world                 Continue even if WORLD cannot be satisfied
# @flag --force-missing-repositories         Continue even if some of the repository indexes are not available
# @flag --force-non-repository               Continue even if packages may be lost on reboot
# @flag --force-old-apk                      Continue even if packages use unsupported features
# @flag --force-overwrite                    Overwrite files in other packages
# @flag --force-refresh                      Do not use cached files (local or from proxy)
# @option --keys-dir <KEYSDIR>               Override directory of trusted keys
# @flag --no-cache                           Do not use any local cache path
# @flag --no-check-certificate               Do not validate the HTTPS server certificates
# @flag --no-interactive                     Disable interactive mode
# @flag --no-network                         Do not use the network
# @flag --no-progress                        Disable progress bar even for TTYs
# @flag --print-arch                         Print default arch and exit
# @flag --progress                           Show progress
# @option --progress-fd <FD>                 Write progress to the specified file descriptor
# @flag --purge                              Purge modified configuration and cached packages
# @option --repositories-file <REPOFILE>     Override system repositories, see repositories
# @option --timeout <TIME>                   Timeout network connections if no progress is made in TIME seconds
# @option --wait <TIME>                      Wait for TIME seconds to get an exclusive repository lock before failing
# @flag -a --all                             Consider packages from all repository tags
# @option -c --check* <VERSIONS>             Check versions for validity
# @flag -I --indexes                         Print the version and description for each repository's index
# @option -l --limit <OPERAND>               Limit to packages with output matching given OPERAND
# @option -t --test <VERSION1> <VERSION2>    Compare two version strings
# @arg packages*[`_choice_installed_package`]
version() {
    :;
}
# }} apk version

_choice_package() {
    apk search -q
}

_choice_installed_package() {
    apk info -q
}

command eval "$(argc --argc-eval "$0" "$@")"