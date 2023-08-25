#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ pacman --database
# @cmd Operate on the package database.
# @alias -D
# @option -b --dbpath <path>          set an alternate database location
# @flag -k --check                    test local database for validity (-kk for sync databases)
# @flag -q --quiet                    suppress output of success messages
# @option -r --root <path>            set an alternate installation root
# @flag -v --verbose                  be verbose
# @option --arch <arch>               set an alternate architecture
# @flag --asdeps                      mark packages as non-explicitly installed
# @flag --asexplicit                  mark packages as explicitly installed
# @option --cachedir <dir>            set an alternate package cache location
# @option --color <when>              colorize the output
# @option --config <path>             set an alternate configuration file
# @flag --confirm                     always ask for confirmation
# @flag --debug                       display debug messages
# @flag --disable-download-timeout    use relaxed timeouts for download
# @option --gpgdir <path>             set an alternate home directory for GnuPG
# @option --hookdir <dir>             set an alternate hook location
# @option --logfile <path>            set an alternate log file
# @flag --noconfirm                   do not ask for any confirmation
# @option --sysroot <dir>             operate on a mounted guest system (root-only)
# @arg package+[`_choice_database`]
--database() {
    :;
}
# }} pacman --database

# {{ pacman --files
# @cmd Query the files database.
# @alias -F
# @option -b --dbpath <path>          set an alternate database location
# @flag -l --list                     list the files owned by the queried package
# @flag -q --quiet                    show less information for query and search
# @option -r --root <path>            set an alternate installation root
# @flag -v --verbose                  be verbose
# @flag -x --regex                    enable searching using regular expressions
# @flag -y --refresh                  download fresh package databases from the server (-yy to force a refresh even if up to date)
# @option --arch <arch>               set an alternate architecture
# @option --cachedir <dir>            set an alternate package cache location
# @option --color <when>              colorize the output
# @option --config <path>             set an alternate configuration file
# @flag --confirm                     always ask for confirmation
# @flag --debug                       display debug messages
# @flag --disable-download-timeout    use relaxed timeouts for download
# @option --gpgdir <path>             set an alternate home directory for GnuPG
# @option --hookdir <dir>             set an alternate hook location
# @option --logfile <path>            set an alternate log file
# @flag --machinereadable             produce machine-readable output
# @flag --noconfirm                   do not ask for any confirmation
# @option --sysroot <dir>             operate on a mounted guest system (root-only)
# @arg file*[`_choice_file_database`]
--files() {
    :;
}
# }} pacman --files

# {{ pacman --query
# @cmd Query the package database
# @alias -Q
# @option -b --dbpath <path>                      set an alternate database location
# @flag -c --changelog                            view the changelog of a package
# @flag -d --deps                                 list packages installed as dependencies [filter]
# @flag -e --explicit                             list packages explicitly installed [filter]
# @option -g --groups[`_choice_package_group`]    view all members of a package group
# @flag -i --info                                 view package information (-ii for backup files)
# @flag -k --check                                check that package files exist (-kk for file properties)
# @flag -l --list                                 list the files owned by the queried package
# @flag -m --foreign                              list installed packages not found in sync db(s) [filter]
# @flag -n --native                               list installed packages only found in sync db(s) [filter]
# @option -o --owns <file>                        query the package that owns <file>
# @option -p --file <package-file>                query a package file instead of the database
# @flag -q --quiet                                show less information for query and search
# @option -r --root <path>                        set an alternate installation root
# @option -s --search <regex>                     search locally-installed packages for matching strings
# @flag -t --unrequired                           list packages not (optionally) required by any package (-tt to ignore optdepends) [filter]
# @flag -u --upgrades                             list outdated packages [filter]
# @flag -v --verbose                              be verbose
# @option --arch <arch>                           set an alternate architecture
# @option --cachedir <dir>                        set an alternate package cache location
# @option --color <when>                          colorize the output
# @option --config <path>                         set an alternate configuration file
# @flag --confirm                                 always ask for confirmation
# @flag --debug                                   display debug messages
# @flag --disable-download-timeout                use relaxed timeouts for download
# @option --gpgdir <path>                         set an alternate home directory for GnuPG
# @option --hookdir <dir>                         set an alternate hook location
# @option --logfile <path>                        set an alternate log file
# @flag --noconfirm                               do not ask for any confirmation
# @option --sysroot <dir>                         operate on a mounted guest system (root-only)
# @arg package*[`_choice_installed_package`]
--query() {
    :;
}
# }} pacman --query

# {{ pacman --remove
# @cmd Remove package(s) from the system
# @alias -R
# @option -b --dbpath <path>                      set an alternate database location
# @flag -c --cascade                              remove packages and all packages that depend on them
# @flag -d --nodeps                               skip dependency version checks (-dd to skip all checks)
# @flag -n --nosave                               remove configuration files
# @flag -p --print                                print the targets instead of performing the operation
# @option -r --root <path>                        set an alternate installation root
# @flag -s --recursive                            remove unnecessary dependencies (-ss includes explicitly installed dependencies)
# @flag -u --unneeded                             remove unneeded packages
# @flag -v --verbose                              be verbose
# @option --arch <arch>                           set an alternate architecture
# @option --assume-installed <package=version>    add a virtual package to satisfy dependencies
# @option --cachedir <dir>                        set an alternate package cache location
# @option --color <when>                          colorize the output
# @option --config <path>                         set an alternate configuration file
# @flag --confirm                                 always ask for confirmation
# @flag --dbonly                                  only modify database entries, not package files
# @flag --debug                                   display debug messages
# @flag --disable-download-timeout                use relaxed timeouts for download
# @option --gpgdir <path>                         set an alternate home directory for GnuPG
# @option --hookdir <dir>                         set an alternate hook location
# @option --logfile <path>                        set an alternate log file
# @flag --noconfirm                               do not ask for any confirmation
# @flag --noprogressbar                           do not show a progress bar when downloading files
# @flag --noscriptlet                             do not execute the install scriptlet if one exists
# @option --print-format <string>                 specify how the targets should be printed
# @option --sysroot <dir>                         operate on a mounted guest system (root-only)
# @arg package+[`_choice_installed_package`]
--remove() {
    :;
}
# }} pacman --remove

# {{ pacman --sync
# @cmd Synchronize packages
# @alias -S
# @option -b --dbpath <path>                      set an alternate database location
# @flag -c --clean                                remove old packages from cache directory (-cc for all)
# @flag -d --nodeps                               skip dependency version checks (-dd to skip all checks)
# @option -g --groups[`_choice_package_group`]    view all members of a package group (-gg to view all groups and members)
# @flag -i --info                                 view package information (-ii for extended information)
# @option -l --list[`_choice_repo`] <repo>        view a list of packages in a repo
# @flag -p --print                                print the targets instead of performing the operation
# @flag -q --quiet                                show less information for query and search
# @option -r --root <path>                        set an alternate installation root
# @option -s --search <regex>                     search remote repositories for matching strings
# @flag -u --sysupgrade                           upgrade installed packages (-uu enables downgrades)
# @flag -v --verbose                              be verbose
# @flag -w --downloadonly                         download packages but do not install/upgrade anything
# @flag -y --refresh                              download fresh package databases from the server (-yy to force a refresh even if up to date)
# @option --arch <arch>                           set an alternate architecture
# @flag --asdeps                                  install packages as non-explicitly installed
# @flag --asexplicit                              install packages as explicitly installed
# @option --assume-installed <package=version>    add a virtual package to satisfy dependencies
# @option --cachedir <dir>                        set an alternate package cache location
# @option --color <when>                          colorize the output
# @option --config <path>                         set an alternate configuration file
# @flag --confirm                                 always ask for confirmation
# @flag --dbonly                                  only modify database entries, not package files
# @flag --debug                                   display debug messages
# @flag --disable-download-timeout                use relaxed timeouts for download
# @option --gpgdir <path>                         set an alternate home directory for GnuPG
# @option --hookdir <dir>                         set an alternate hook location
# @option --ignore[`_choice_package`] <pkg>       ignore a package upgrade (can be used more than once)
# @option --ignoregroup[`_choice_package_group`] <grp>  ignore a group upgrade (can be used more than once)
# @option --logfile <path>                        set an alternate log file
# @flag --needed                                  do not reinstall up to date packages
# @flag --noconfirm                               do not ask for any confirmation
# @flag --noprogressbar                           do not show a progress bar when downloading files
# @flag --noscriptlet                             do not execute the install scriptlet if one exists
# @option --overwrite <glob>                      overwrite conflicting files (can be used more than once)
# @option --print-format <string>                 specify how the targets should be printed
# @option --sysroot <dir>                         operate on a mounted guest system (root-only)
# @arg package*[`_choice_sync_package`]
--sync() {
    :;
}
# }} pacman --sync

# {{ pacman --deptest
# @cmd Check dependencies
# @alias -T
# @option -b --dbpath <path>          set an alternate database location
# @option -r --root <path>            set an alternate installation root
# @flag -v --verbose                  be verbose
# @option --arch <arch>               set an alternate architecture
# @option --cachedir <dir>            set an alternate package cache location
# @option --color <when>              colorize the output
# @option --config <path>             set an alternate configuration file
# @flag --confirm                     always ask for confirmation
# @flag --debug                       display debug messages
# @flag --disable-download-timeout    use relaxed timeouts for download
# @option --gpgdir <path>             set an alternate home directory for GnuPG
# @option --hookdir <dir>             set an alternate hook location
# @option --logfile <path>            set an alternate log file
# @flag --noconfirm                   do not ask for any confirmation
# @option --sysroot <dir>             operate on a mounted guest system (root-only)
# @arg package*[`_choice_package`]
--deptest() {
    :;
}
# }} pacman --deptest

# {{ pacman --upgrade
# @cmd Upgrade or add package(s) to the system and install the required dependencies from sync repositories.
# @alias -U
# @option -b --dbpath <path>                      set an alternate database location
# @flag -d --nodeps                               skip dependency version checks (-dd to skip all checks)
# @flag -p --print                                print the targets instead of performing the operation
# @option -r --root <path>                        set an alternate installation root
# @flag -v --verbose                              be verbose
# @flag -w --downloadonly                         download packages but do not install/upgrade anything
# @option --arch <arch>                           set an alternate architecture
# @flag --asdeps                                  install packages as non-explicitly installed
# @flag --asexplicit                              install packages as explicitly installed
# @option --assume-installed <package=version>    add a virtual package to satisfy dependencies
# @option --cachedir <dir>                        set an alternate package cache location
# @option --color <when>                          colorize the output
# @option --config <path>                         set an alternate configuration file
# @flag --confirm                                 always ask for confirmation
# @flag --dbonly                                  only modify database entries, not package files
# @flag --debug                                   display debug messages
# @flag --disable-download-timeout                use relaxed timeouts for download
# @option --gpgdir <path>                         set an alternate home directory for GnuPG
# @option --hookdir <dir>                         set an alternate hook location
# @option --ignore[`_choice_package`] <pkg>       ignore a package upgrade (can be used more than once)
# @option --ignoregroup[`_choice_package_group`] <grp>  ignore a group upgrade (can be used more than once)
# @option --logfile <path>                        set an alternate log file
# @flag --needed                                  do not reinstall up to date packages
# @flag --noconfirm                               do not ask for any confirmation
# @flag --noprogressbar                           do not show a progress bar when downloading files
# @flag --noscriptlet                             do not execute the install scriptlet if one exists
# @option --overwrite <glob>                      overwrite conflicting files (can be used more than once)
# @option --print-format <string>                 specify how the targets should be printed
# @option --sysroot <dir>                         operate on a mounted guest system (root-only)
# @arg file+
--upgrade() {
    :;
}
# }} pacman --upgrade

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_database() {
    if [[ "$argc_asdeps" -eq 1 ]] \
    || [[ "$argc_asexplicit" -eq 1  ]] \
    || [[ "$argc_check" -eq 1  ]] \
    ; then
        _choice_installed_package
    fi
}

_choice_file_database() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package
}

_choice_package_group() {
    pacman -Sg
}

_choice_installed_package() {
    pacman -Q | sed 's/ /\t/'
}

_choice_repo() {
    cat /etc/pacman.conf  | sed -n -e '/^\[options\]/ d' -e '/^\[.*\]/ s/^\[\(.*\)\]/\1/p'
}

_choice_package() {
    pacman -Ssq 
}

_choice_sync_package() {
    _argc_util_parallel _choice_package ::: _choice_package_group
}

command eval "$(argc --argc-eval "$0" "$@")"