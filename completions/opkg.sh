#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -A                                         Query all packages not just those installed
# @option -V[`_choice_verbosity_level`] <level>    Set verbosity level to <level>.
# @option --verbosity[`_choice_verbosity_level`] <level>  Verbosity levels: 0 errors only 1 normal messages (default) 2 informative messages 3 debug 4 debug level 2
# @option -f <conf_file>                           Use <conf_file> as the opkg configuration file
# @option --conf <conf_file>
# @option --cache <directory>                      Use a package cache
# @option -d <dest_name>                           Use <dest_name> as the the root directory for
# @option --dest <dest_name>                       package installation, removal, upgrading.
# @option -o <dir>                                 Use <dir> as the root directory for
# @option --offline-root <dir>                     offline installation of packages.
# @option --verify-program <path>                  Use the given program to verify usign signatures
# @option --add-arch <<arch>:<prio>>               Register architecture with given priority
# @option --add-dest <<name>:<path>>               Register destination with given path
# @flag --force-depends                            Install/remove despite failed dependencies
# @flag --force-maintainer                         Overwrite preexisting config files
# @flag --force-reinstall                          Reinstall package(s)
# @flag --force-overwrite                          Overwrite files from other package(s)
# @flag --force-downgrade                          Allow opkg to downgrade packages
# @flag --force-space                              Disable free space checks
# @flag --force-postinstall                        Run postinstall scripts even in offline mode
# @flag --force-remove                             Remove package even if prerm script fails
# @flag --force-checksum                           Don't fail on checksum mismatches
# @flag --no-check-certificate                     Don't validate SSL certificates
# @flag --noaction                                 No action -- test only
# @flag --download-only                            No action -- download only
# @flag --nodeps                                   Do not follow dependencies
# @flag --nocase                                   Perform case insensitive pattern matching
# @flag --size                                     Print package size when listing available packages
# @flag --strip-abi                                Print package name without appended ABI version
# @flag --force-removal-of-dependent-packages      Remove package and all dependencies
# @flag --autoremove                               Remove packages that were installed automatically to satisfy dependencies
# @flag -t                                         Specify tmp-dir.
# @flag --tmp-dir                                  Specify tmp-dir.
# @flag -l                                         Specify lists-dir.
# @flag --lists-dir                                Specify lists-dir.

# {{ opkg update
# @cmd Update list of available packages
update() {
    :;
}
# }} opkg update

# {{ opkg upgrade
# @cmd Upgrade packages
# @arg pkgs+[`_choice_installed_package`]
upgrade() {
    :;
}
# }} opkg upgrade

# {{ opkg install
# @cmd Install package(s)
# @arg pkgs+[`_choice_package`]
install() {
    :;
}
# }} opkg install

# {{ opkg configure
# @cmd Configure unpacked package(s)
# @arg pkgs+[`_choice_installed_package`]
configure() {
    :;
}
# }} opkg configure

# {{ opkg remove
# @cmd Remove package(s)
# @arg pkgs-regexp![`_choice_installed_package`] <pkgs|regexp>
remove() {
    :;
}
# }} opkg remove

# {{ opkg flag
# @cmd Flag package(s)
# @arg pkgs[`_choice_package`]
flag() {
    :;
}
# }} opkg flag

# {{ opkg list
# @cmd List available packages
list() {
    :;
}
# }} opkg list

# {{ opkg list-installed
# @cmd List installed packages
list-installed() {
    :;
}
# }} opkg list-installed

# {{ opkg list-upgradable
# @cmd List installed and upgradable packages
list-upgradable() {
    :;
}
# }} opkg list-upgradable

# {{ opkg list-changed-conffiles
# @cmd List user modified configuration files
list-changed-conffiles() {
    :;
}
# }} opkg list-changed-conffiles

# {{ opkg files
# @cmd List files belonging to <pkg>
# @arg pkg![`_choice_installed_package`]
files() {
    :;
}
# }} opkg files

# {{ opkg search
# @cmd List package providing <file>
# @arg file-regexp! <file|regexp>
search() {
    :;
}
# }} opkg search

# {{ opkg find
# @cmd List packages whose name or description matches <regexp>
# @arg regexp!
find() {
    :;
}
# }} opkg find

# {{ opkg info
# @cmd Display all info for <pkg>
# @arg pkg-regexp[`_choice_package`] <pkg|regexp>
info() {
    :;
}
# }} opkg info

# {{ opkg status
# @cmd Display all status for <pkg>
# @arg pkg-regexp[`_choice_package`] <pkg|regexp>
status() {
    :;
}
# }} opkg status

# {{ opkg download
# @cmd Download <pkg> to current directory
# @arg pkg![`_choice_package`]
download() {
    :;
}
# }} opkg download

# {{ opkg compare-versions
# @cmd compare versions using <= < > >= = << >>
# @arg v1!
# @arg op!
# @arg v2!
compare-versions() {
    :;
}
# }} opkg compare-versions

# {{ opkg print-architecture
# @cmd List installable package architectures
print-architecture() {
    :;
}
# }} opkg print-architecture

# {{ opkg depends
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
depends() {
    :;
}
# }} opkg depends

# {{ opkg whatdepends
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatdepends() {
    :;
}
# }} opkg whatdepends

# {{ opkg whatdependsrec
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatdependsrec() {
    :;
}
# }} opkg whatdependsrec

# {{ opkg whatrecommends
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatrecommends() {
    :;
}
# }} opkg whatrecommends

# {{ opkg whatsuggests
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatsuggests() {
    :;
}
# }} opkg whatsuggests

# {{ opkg whatprovides
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatprovides() {
    :;
}
# }} opkg whatprovides

# {{ opkg whatconflicts
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatconflicts() {
    :;
}
# }} opkg whatconflicts

# {{ opkg whatreplaces
# @cmd
# @arg pkgname-pat[`_choice_package`] <[pkgname|pat]+>
whatreplaces() {
    :;
}
# }} opkg whatreplaces

_choice_verbosity_level() {
    cat <<-'EOF'
0	errors only
1	normal messages (default)
2	informative messages
3	debug
4	debug level 2
EOF
}

_choice_installed_package() {
    opkg list-installed | sed -n 's/^\(\S\+\) - \(.*\)/\1\t\2/p'
}

_choice_package() {
    opkg list | sed -n 's/^\(\S\+\) - \(.*\)/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"