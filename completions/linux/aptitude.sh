#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h                             This help text.
# @flag --no-gui                       Do not use the GTK GUI even if available.
# @flag -s                             Simulate actions, but do not actually perform them.
# @flag -d                             Only download packages, do not install or remove anything.
# @flag -P                             Always prompt for confirmation of actions.
# @flag -y                             Assume that the answer to simple yes/no questions is 'yes'.
# @option -F <format>                  Specify a format for displaying search results; see the manual.
# @option -O <order>                   Specify how search results should be sorted; see the manual.
# @option -w <width>                   Specify the display width for formatting search results.
# @flag -f                             Aggressively try to fix broken packages.
# @flag -V                             Show which versions of packages are to be installed.
# @flag -D                             Show the dependencies of automatically changed packages.
# @flag -Z                             Show the change in installed size of each package.
# @flag -v                             Display extra information.
# @option -t <release>                 Set the release from which packages should be installed.
# @flag -q                             In command-line mode, suppress the incremental progress indicators.
# @option -o <key=val>                 Directly set the configuration option named 'key'.
# @option --with <(out)-recommends>    Specify whether or not to treat recommends as strong dependencies.
# @option -S <fname>                   Read the aptitude extended status info from fname.
# @flag -u                             Download new package lists on startup.
# @flag -i                             Perform an install run on startup.

# {{ aptitude install
# @cmd Install/upgrade packages.
# @arg pkg*[`_choice_package`]
install() {
    :;
}
# }} aptitude install

# {{ aptitude remove
# @cmd Remove packages.
# @arg pkg*[`_choice_installed_package`]
remove() {
    :;
}
# }} aptitude remove

# {{ aptitude purge
# @cmd Remove packages and their configuration files.
# @arg pkg*[`_choice_installed_package`]
purge() {
    :;
}
# }} aptitude purge

# {{ aptitude hold
# @cmd Place packages on hold.
# @arg pkg*[`_choice_installed_package`]
hold() {
    :;
}
# }} aptitude hold

# {{ aptitude unhold
# @cmd Cancel a hold command for a package.
# @arg pkg*[`_choice_installed_package`]
unhold() {
    :;
}
# }} aptitude unhold

# {{ aptitude markauto
# @cmd Mark packages as having been automatically installed.
markauto() {
    :;
}
# }} aptitude markauto

# {{ aptitude unmarkauto
# @cmd Mark packages as having been manually installed.
unmarkauto() {
    :;
}
# }} aptitude unmarkauto

# {{ aptitude forbid-version
# @cmd Forbid aptitude from upgrading to a specific package version.
# @arg pkg*[`_choice_installed_package`]
forbid-version() {
    :;
}
# }} aptitude forbid-version

# {{ aptitude update
# @cmd Download lists of new/upgradable packages.
update() {
    :;
}
# }} aptitude update

# {{ aptitude safe-upgrade
# @cmd Perform a safe upgrade.
# @arg pkg*[`_choice_package`]
safe-upgrade() {
    :;
}
# }} aptitude safe-upgrade

# {{ aptitude full-upgrade
# @cmd Perform an upgrade, possibly installing and removing packages.
# @arg pkg*[`_choice_package`]
full-upgrade() {
    :;
}
# }} aptitude full-upgrade

# {{ aptitude build-dep
# @cmd Install the build-dependencies of packages.
# @arg pkg*[`_choice_package`]
build-dep() {
    :;
}
# }} aptitude build-dep

# {{ aptitude forget-new
# @cmd Forget what packages are "new".
forget-new() {
    :;
}
# }} aptitude forget-new

# {{ aptitude search
# @cmd Search for a package by name and/or expression.
# @arg pattern
search() {
    :;
}
# }} aptitude search

# {{ aptitude show
# @cmd Display detailed info about a package.
# @arg pkg*[`_choice_package`]
show() {
    :;
}
# }} aptitude show

# {{ aptitude showsrc
# @cmd Display detailed info about a source package (apt wrapper).
# @arg pkg*[`_choice_package`]
showsrc() {
    :;
}
# }} aptitude showsrc

# {{ aptitude versions
# @cmd Displays the versions of specified packages.
# @arg pkg*[`_choice_package`]
versions() {
    :;
}
# }} aptitude versions

# {{ aptitude clean
# @cmd Erase downloaded package files.
clean() {
    :;
}
# }} aptitude clean

# {{ aptitude autoclean
# @cmd Erase old downloaded package files.
autoclean() {
    :;
}
# }} aptitude autoclean

# {{ aptitude changelog
# @cmd View a package's changelog.
# @arg pkg*[`_choice_package`]
changelog() {
    :;
}
# }} aptitude changelog

# {{ aptitude download
# @cmd Download the .deb file for a package (apt wrapper).
# @arg pkg*[`_choice_package`]
download() {
    :;
}
# }} aptitude download

# {{ aptitude source
# @cmd Download source package (apt wrapper).
# @arg pkg*[`_choice_package`]
source() {
    :;
}
# }} aptitude source

# {{ aptitude reinstall
# @cmd Reinstall a currently installed package.
# @arg pkg*[`_choice_installed_package`]
reinstall() {
    :;
}
# }} aptitude reinstall

# {{ aptitude why
# @cmd Explain why a particular package should be installed.
# @arg pkg[`_choice_installed_package`]
why() {
    :;
}
# }} aptitude why

# {{ aptitude why-not
# @cmd Explain why a particular package cannot be installed.
# @arg pkg[`_choice_installed_package`]
why-not() {
    :;
}
# }} aptitude why-not

# {{ aptitude add-user-tag
# @cmd Add user tag to packages/patterns.
# @arg tag
# @arg pkg*[`_choice_installed_package`]
add-user-tag() {
    :;
}
# }} aptitude add-user-tag

# {{ aptitude remove-user-tag
# @cmd Remove user tag from packages/patterns.
# @arg tag
# @arg pkg*[`_choice_installed_package`]
remove-user-tag() {
    :;
}
# }} aptitude remove-user-tag

_choice_package() {
    apt-cache --no-generate pkgnames
}

_choice_installed_package() {
    dpkg --get-selections | gawk '{if (match($2, /(install|hold)/)) { print $1}}'
}

command eval "$(argc --argc-eval "$0" "$@")"