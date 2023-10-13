#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -v                         Verbose mode, generates verbose messages
# @flag -d                         Debug mode, generate debugging messages, implies -v
# @flag -q                         Quiet mode, suppress informational messages to a minimum, implies -N
# @flag -N                         Non-interactive mode, interactive questions are not asked
# @flag -n                         Don’t follow dependencies in upgrade (affects upgrade and install)
# @flag -R                         Also upgrade dependents (only for upgrade)
# @flag -u                         Uninstall inactive ports when upgrading and uninstalling
# @flag -y                         Perform a dry run.
# @flag -s                         Source-only mode, build and install from source; do not attempt to fetch binary archives.
# @flag -b                         Binary-only mode, build and install from binary archives, ignore source, abort if no archive available.
# @flag -c                         Autoclean mode, execute clean after install
# @flag -k                         Keep mode, do not autoclean after install
# @flag -p                         Despite any errors encountered, proceed to process multiple ports and commands.
# @flag -o                         Honor state files even if the Portfile was modified.
# @flag -t                         Enable trace mode debug facilities on platforms that support it, currently only macOS.
# @flag -f                         Force mode, ignore state file
# @option -D <portdir|portname>    Specify a directory to which the port command should change before processing any actions.
# @option -F <cmdfile>             Read and process the file of commands specified by the argument.

# {{ port search
# @cmd Search for an available port whose name or description matches a regular expression.
# @flag --case-sensitive      Do not ignore case when searching for the given keyword.
# @flag --exact               Search for the given string exactly.
# @flag --glob                Treat the keyword(s) as wildcard (i.e., expand *, ? and [sets]).
# @flag --regex               Treat the given string as a Tcl regular expression.
# @flag --line                Print one match per line, where a line consists of name, version, categories and short description.
# @flag --category            Search the category.
# @flag --categories          Search the category.
# @flag --depends             Search for ports that depend on the port given as keyword.
# @flag --depends_build       Search for ports that depend on the port given as keyword.
# @flag --depends_extract     Search for ports that depend on the port given as keyword.
# @flag --depends_fetch       Search for ports that depend on the port given as keyword.
# @flag --depends_lib         Search for ports that depend on the port given as keyword.
# @flag --depends_run         Search for ports that depend on the port given as keyword.
# @flag --description         Test the search string against ports' descriptions.
# @flag --long_description    Test the search string against ports' descriptions.
# @flag --homepage            Search for the keyword(s) in the homepage property.
# @flag --maintainer          Search for ports maintained by a specific maintainer.
# @flag --maintainers         Search for ports maintained by a specific maintainer.
# @flag --name                Search in ports' names.
# @flag --portdir             Test the search string against the path of the directory that contains the port.
# @flag --variant             Search for variant names.
# @flag --variants            Search for variant names.
# @flag -q                    Only print the name of the port that matched your query.
# @arg package*[`_choice_package_cached`]
search() {
    :;
}
# }} port search

# {{ port info
# @cmd Displays meta-information available for portname.
# @flag --index               Do not read the Portfile, but rely solely on the port index information.
# @flag --line                Print a single line for each port.
# @flag --pretty              Format the output in a convenient, human-readable fashion.
# @flag --category            List the categories of a port.
# @flag --categories          List the categories of a port.
# @flag --conflicts           List other ports that cannot be active at the same time as the given port.
# @flag --depends             List the specified dependencies of a port.
# @flag --depends_fetch       List the specified dependencies of a port.
# @flag --depends_extract     List the specified dependencies of a port.
# @flag --depends_build       List the specified dependencies of a port.
# @flag --depends_lib         List the specified dependencies of a port.
# @flag --depends_run         List the specified dependencies of a port.
# @flag --description         Print the short or long description of a port, respectively.
# @flag --long_description    Print the short or long description of a port, respectively.
# @flag --epoch               List the components of a MacPorts version tuple, epoch, version and revision, respectively.
# @flag --version             List the components of a MacPorts version tuple, epoch, version and revision, respectively.
# @flag --revision            List the components of a MacPorts version tuple, epoch, version and revision, respectively.
# @flag --fullname            Print name and the full MacPorts version tuple, e.g., “yubico-pam @2.16”.
# @flag --heading             Like --fullname but including the categories.
# @flag --homepage            List the homepage of a port.
# @flag --license             Print the license that applies to the source code of a port.
# @flag --maintainer          List the email address(es) of a port’s maintainer(s).
# @flag --maintainers         List the email address(es) of a port’s maintainer(s).
# @flag --name                Print the name of a port.
# @flag --patchfiles          List the patches that will be applied to the port, taking the current platform and selected variants into account.
# @flag --platform            List the platforms supported by a port.
# @flag --platforms           List the platforms supported by a port.
# @flag --portdir             Print the path to a port’s directory relative to the port tree root.
# @flag --replaced_by         List the name of the port that replaces a port, if any.
# @flag --subports            Print a list of subports defined by this port’s Portfile, i.e., ports that are defined in the same Portfile because they share common parts.
# @flag --variant             List the variants defined by a port by name.
# @flag --variants            List the variants defined by a port by name.
# @flag -q                    Do not print the field description when using --pretty output.
# @arg package*[`_choice_package_cached`]
info() {
    :;
}
# }} port info

# {{ port notes
# @cmd Displays notes for portname which usually contain useful information concerning setup and use of the port.
# @flag -q    Do not display the header line; just print the note contents.
# @arg package*[`_choice_package_cached`]
notes() {
    :;
}
# }} port notes

# {{ port variants
# @cmd Lists the variants available for portname.
# @flag --index    Do not read the Portfile, but rely solely on the port index information.
# @flag -q         Do not print the header line.
# @arg package*[`_choice_package_cached`]
variants() {
    :;
}
# }} port variants

# {{ port deps
# @cmd Lists the other ports that are required to build and run portname.
# @flag --full        When using rdeps, display all branches of the dependency tree instead of listing each dependency only once.
# @flag --index       Do not read Portfiles, but instead rely solely on the PortIndex information.
# @flag --no-build    Exclude dependencies only required at build time, i.e., fetch, extract, and build dependencies.
# @arg package*[`_choice_package_cached`]
deps() {
    :;
}
# }} port deps

# {{ port rdeps
# @cmd Recursively lists the other ports that are required to build and run portname.
# @arg package*[`_choice_package_cached`]
rdeps() {
    :;
}
# }} port rdeps

# {{ port dependents
# @cmd Lists the installed ports that depend on the port portname.
# @arg package*[`_choice_installed_package`]
dependents() {
    :;
}
# }} port dependents

# {{ port rdependents
# @cmd Recursively lists the installed ports that depend on the port portname.
# @arg package*[`_choice_installed_package`]
rdependents() {
    :;
}
# }} port rdependents

# {{ port install
# @cmd Install and activate portname.
# @flag --no-rev-upgrade    Do not run rev-upgrade after installation.
# @flag --unrequested       Do not mark the installed ports as requested.
# @arg package[`_choice_package_cached`]
# @arg variant*[`_choice_variant`] <+/-variant>
install() {
    :;
}
# }} port install

# {{ port uninstall
# @cmd Deactivate and uninstall portname.
# @flag --follow-dependents      Also uninstall all ports recursively depending directly or indirectly on one of the specified ports before uninstalling the port itself.
# @flag --follow-dependencies    Also recursively uninstall all ports that the specified port depends on.
# @flag --no-exec                Do not execute any stored pre- or post-uninstall procedures.
# @arg package*[`_choice_installed_package`]
uninstall() {
    :;
}
# }} port uninstall

# {{ port reclaim
# @cmd Reclaims disk space by uninstalling inactive ports and removing unneeded installation files.
# @flag --enable-reminders     Enable regular reminders to run port reclaim.
# @flag --disable-reminders    Disable reminders to run port reclaim.
# @flag -N                     Non-interactive mode, uninstall ports and remove distfiles without asking for confirmation.
# @flag -y                     Perform a dry run.
# @arg package*[`_choice_package_cached`]
reclaim() {
    :;
}
# }} port reclaim

# {{ port select
# @cmd For a given group, selects a version to be the default by creating appropriate symbolic links.
# @flag --summary                   Display a summary of all available selection groups, their current primary implementation and a list of all available choices.
# @option --show <group>            Print the current primary implementation for the given group.
# @option --list <group>            Print a list of all currently available choices for the given group.
# @option --set <group> <option>    Make option the primary selection for the group group.
# @arg package*[`_choice_package_cached`]
select_() {
    :;
}
# }} port select

# {{ port activate
# @cmd Activate the installed portname.
# @flag --no-exec    Do not execute any stored pre- or post-uninstall procedures.
# @arg package*[`_choice_installed_package`]
activate() {
    :;
}
# }} port activate

# {{ port deactivate
# @cmd Deactivate the installed portname.
# @arg package*[`_choice_installed_package`]
deactivate() {
    :;
}
# }} port deactivate

# {{ port setrequested
# @cmd Mark portname as requested.
# @arg package*[`_choice_package_cached`]
setrequested() {
    :;
}
# }} port setrequested

# {{ port unsetrequested
# @cmd Mark portname as unrequested.
# @alias setunrequested
# @arg package*[`_choice_package_cached`]
unsetrequested() {
    :;
}
# }} port unsetrequested

# {{ port installed
# @cmd Show the installed version, variants and activation status for each portname.
# @flag -v    Print the platform at install time (i.e., your macOS version) and the architecture(s) of the installed port.
# @flag -q    Do not print the header line.
# @arg package*[`_choice_installed_package`]
installed() {
    :;
}
# }} port installed

# {{ port location
# @cmd Print the install location of a given port.
# @arg package*[`_choice_installed_package`]
location() {
    :;
}
# }} port location

# {{ port contents
# @cmd Lists the files installed by portname.
# @flag --size              Enable printing a human-readable representation of the files' sizes.
# @option --units <unit>    Used in conjunction with --size to choose the unit in which the size is given.
# @flag -q                  Do not print the header line.
# @arg package*[`_choice_installed_package`]
contents() {
    :;
}
# }} port contents

# {{ port provides
# @cmd Determines which port owns a given file and can take either a relative or absolute path.
# @arg package*[`_choice_package_cached`]
provides() {
    :;
}
# }} port provides

# {{ port sync
# @cmd Performs a sync operation only on the ports tree of a MacPorts installation, pulling in the latest revision available of the Portfiles from the MacPorts rsync server.
# @flag -q    Suppress status output, be as silent as possible.
# @arg package*[`_choice_package_cached`]
sync() {
    :;
}
# }} port sync

# {{ port outdated
# @cmd Lists the installed ports which need a upgrade.
# @flag -q    Do not list the header line or the message that no ports are outdated.
# @arg package*[`_choice_package_cached`]
outdated() {
    :;
}
# }} port outdated

# {{ port upgrade
# @cmd The upgrade action works on a port and its dependencies.
# @flag --enforce-variants    Upgrade all given ports and their dependencies where the installed variants do not match those requested on the command line, even if those ports aren’t outdated.
# @flag --force               Ignore circumstances that would normally cause ports to be skipped, such as not being outdated.
# @flag --no-replace          Do not automatically install ports that replace a now-obsolete port you have installed.
# @flag --no-rev-upgrade      Do not run rev-upgrade after upgrading.
# @flag -f                    Upgrade a port, even if it is not outdated.
# @flag -n                    Only upgrade the given ports and avoid upgrading their dependencies.
# @flag -p                    Keep going and attempt to upgrade the next port when a port fails to build.
# @arg package[`_choice_installed_package`]
# @arg variant*[`_choice_variant`] <+/-variant>
upgrade() {
    :;
}
# }} port upgrade

# {{ port rev-upgrade
# @cmd Manually check for broken binaries and rebuild ports containing broken binaries.
# @flag --id-loadcmd-check    Check the ID load command in each library installed by MacPorts.
# @arg package*[`_choice_package_cached`]
rev-upgrade() {
    :;
}
# }} port rev-upgrade

# {{ port clean
# @cmd Clean the files used for building portname.
# @flag --archive    Remove partially downloaded binary archives.
# @flag --dist       Delete source code archives, the so-called distfiles.
# @flag --logs       Delete log files.
# @flag --work       Delete the work directory of a port.
# @flag --all        Remove all temporary files.
# @arg package*[`_choice_installed_package`]
clean() {
    :;
}
# }} port clean

# {{ port log
# @cmd Parses and shows log files for portname.
# @option --level <SEVERITY>    Hide all messages below the given severity, which is one of
# @option --phase               Only print messages that were generated in the given installation phase, where possible values for PHASE include fetch, checksum, extract, patch, configure, build, and destroot.
# @arg package*[`_choice_installed_package`]
log() {
    :;
}
# }} port log

# {{ port logfile
# @cmd Displays the path to the log file for portname.
# @arg package*[`_choice_installed_package`]
logfile() {
    :;
}
# }} port logfile

# {{ port echo
# @cmd Writes to stdout the arguments passed to port.
# @arg package*[`_choice_package_cached`]
echo_() {
    :;
}
# }} port echo

# {{ port list
# @cmd If no argument is given, display a list of the latest version of all available ports.
# @arg package*[`_choice_package_cached`]
list() {
    :;
}
# }} port list

# {{ port mirror
# @cmd Create/update a local mirror of distfiles used for ports given on the command line.
# @flag --new    Delete the existing database of mirrored files and re-create it from scratch.
# @flag -p       Don’t abort downloading on the first error.
# @arg package*[`_choice_package_cached`]
mirror() {
    :;
}
# }} port mirror

# {{ port version
# @cmd Display the release number of the installed MacPorts infrastructure.
# @flag -q    Do not print the “Version:” prefix.
# @arg package*[`_choice_package_cached`]
version() {
    :;
}
# }} port version

# {{ port selfupdate
# @cmd Updates the MacPorts system, ports tree(s) and base tools if needed, from the MacPorts rsync server, installing the newest infrastructure available.
# @flag --no-sync    Only check for updates - and install if available - for MacPorts itself.
# @flag -q           Suppress status output, be as silent as possible.
# @flag -f           Do not check whether the downloaded MacPorts version is newer than the currently installed one, but always rebuild and reinstall MacPorts.
# @arg package*[`_choice_package_cached`]
selfupdate() {
    :;
}
# }} port selfupdate

# {{ port load
# @cmd Provides a shortcut to using launchctl to load a port’s daemon (as installed in /Library/LaunchDaemons).
# @arg package*[`_choice_installed_package`]
load() {
    :;
}
# }} port load

# {{ port unload
# @cmd A shortcut to launchctl, like load, but unloads the daemon.
# @arg package*[`_choice_installed_package`]
unload() {
    :;
}
# }} port unload

# {{ port reload
# @cmd A shortcut to launchctl, like load and unload, but reloads the daemon.
# @arg package*[`_choice_installed_package`]
reload() {
    :;
}
# }} port reload

# {{ port gohome
# @cmd Loads the home page for the given portname in the default web browser.
# @arg package*[`_choice_package_cached`]
gohome() {
    :;
}
# }} port gohome

# {{ port usage
# @cmd Displays a condensed usage summary.
# @arg package*[`_choice_package_cached`]
usage() {
    :;
}
# }} port usage

# {{ port dir
# @cmd Displays the path to the directory containing portname.
# @arg package*[`_choice_package_cached`]
dir() {
    :;
}
# }} port dir

# {{ port work
# @cmd Displays the path to the work directory for portname.
# @arg package*[`_choice_package_cached`]
work() {
    :;
}
# }} port work

# {{ port cd
# @cmd Changes the current working directory to the one containing portname.
# @arg package*[`_choice_package_cached`]
cd() {
    :;
}
# }} port cd

# {{ port file
# @cmd Displays the path to the Portfile for portname.
# @arg package*[`_choice_package_cached`]
file() {
    :;
}
# }} port file

# {{ port url
# @cmd Displays the URL for the path of the given portname, which can be passed as port-url.
# @arg package*[`_choice_package_cached`]
url() {
    :;
}
# }} port url

# {{ port cat
# @cmd Concatenates and prints the contents of Portfile on stdout.
# @arg package*[`_choice_package_cached`]
cat_() {
    :;
}
# }} port cat

# {{ port edit
# @cmd Opens Portfile with your default editor specified in your shell’s environment variable.
# @option --editor <editor>    Use the specified editor, overriding environment variables.
# @arg package*[`_choice_package_cached`]
edit() {
    :;
}
# }} port edit

# {{ port fetch
# @cmd Fetches the distribution files required to build portname.
# @arg package*[`_choice_package_cached`]
fetch() {
    :;
}
# }} port fetch

# {{ port checksum
# @cmd Compute the checksums of the distribution files for portname, and compare them to the checksums listed in Portfile.
# @arg package*[`_choice_package_cached`]
checksum() {
    :;
}
# }} port checksum

# {{ port extract
# @cmd Extracts the distribution files for portname.
# @arg package*[`_choice_package_cached`]
extract() {
    :;
}
# }} port extract

# {{ port patch
# @cmd Applies any required patches to portname’s extracted distribution files.
# @arg package*[`_choice_package_cached`]
patch() {
    :;
}
# }} port patch

# {{ port configure
# @cmd Runs any configure process for portname.
# @arg package*[`_choice_package_cached`]
configure() {
    :;
}
# }} port configure

# {{ port build
# @cmd Build portname.
# @arg package*[`_choice_package_cached`]
build() {
    :;
}
# }} port build

# {{ port destroot
# @cmd Installs portname to a temporary directory.
# @arg package*[`_choice_package_cached`]
destroot() {
    :;
}
# }} port destroot

# {{ port test
# @cmd Tests portname.
# @arg package*[`_choice_package_cached`]
test() {
    :;
}
# }} port test

# {{ port lint
# @cmd Verifies Portfile for portname.
# @flag --nitpick    Enables additional checks that are mostly whitespace-related and best practices.
# @flag -v           Print messages for successful tests.
# @flag -d           Print the Portfile, and debugging information parsed from the Portfile.
# @flag -q           Suppress the header line, warning and error count; only print warnings and errors, if any.
# @arg package*[`_choice_package_cached`]
lint() {
    :;
}
# }} port lint

# {{ port bump
# @cmd Update portname’s checksums and revision for a new version.
# @flag --patch    Create a Portfile.patch file instead of directly overwriting the Portfile.
# @arg package*[`_choice_package_cached`]
bump() {
    :;
}
# }} port bump

# {{ port distcheck
# @cmd Check if the distfiles haven’t changed and can be fetched.
# @arg package*[`_choice_package_cached`]
distcheck() {
    :;
}
# }} port distcheck

# {{ port distfiles
# @cmd Display each distfile, its checksums, and the URLs used to fetch it.
# @arg package*[`_choice_package_cached`]
distfiles() {
    :;
}
# }} port distfiles

# {{ port livecheck
# @cmd Check if the software hasn’t been updated since the Portfile was last modified.
# @flag -v    Print a message if the port is up to date.
# @flag -d    Print debugging information such as the regular expression and all matches.
# @arg package*[`_choice_package_cached`]
livecheck() {
    :;
}
# }} port livecheck

# {{ port pkg
# @cmd Creates a macOS installer package of portname.
# @arg package*[`_choice_package_cached`]
pkg() {
    :;
}
# }} port pkg

# {{ port mpkg
# @cmd Creates a macOS installer metapackage of portname and its dependencies.
# @arg package*[`_choice_package_cached`]
mpkg() {
    :;
}
# }} port mpkg

# {{ port dmg
# @cmd Creates an Internet-enabled disk image containing a macOS package of portname.
# @arg package*[`_choice_package_cached`]
dmg() {
    :;
}
# }} port dmg

# {{ port mdmg
# @cmd Creates an Internet-enabled disk image containing a macOS metapackage of portname and its dependencies.
# @arg package*[`_choice_package_cached`]
mdmg() {
    :;
}
# }} port mdmg

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_package_cached() {
    _argc_util_cache 86400 _choice_package
}

_choice_installed_package() {
    port installed | gawk '/^  / {print $1}'
}

_choice_variant() {
    port variants "$argc_package" | tail -n +2 | sed -e 's/^\(\[\(+\|-\)\]\|\s*\)/\2/' -e 's/: /\t/'
}

_choice_package() {
    port echo all | sed 's/\(\S\+\).*/\1/'
}

command eval "$(argc --argc-eval "$0" "$@")"