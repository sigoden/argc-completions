#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -o --option[`_choice_option`] <config-string>  Set a Configuration Option
# @option -c --config-file <config-file>           Specify a configuration file to use
# @option -t[`_choice_target`] <target-release>    This option controls the default input to the policy engine

# {{ apt add-repository
# @cmd Add entries to apt sources.list
# @flag -h --help      show this help message and exit
# @flag -y --yes       force yes on all confirmation questions
# @flag -r --remove    Remove the specified repository
# @arg repository
add-repository() {
    :;
}
# }} apt add-repository

# {{ apt autoclean
# @cmd Erase old downloaded archive files
autoclean() {
    :;
}
# }} apt autoclean

# {{ apt autopurge
# @cmd Remove packages with their configuration files and automatically remove all unused packages
autopurge() {
    :;
}
# }} apt autopurge

# {{ apt autoremove
# @cmd Remove automatically all unused packages
autoremove() {
    :;
}
# }} apt autoremove

# {{ apt build
# @cmd Build binary or source packages from sources
# @option --build*,[`_choice_build`] <<type>[,...]>  specify the build <type>: full, source, binary, any, all (default is 'full').
# @flag -F                                  normal full build (source and binary; default).
# @flag -g                                  source and arch-indep build.
# @flag -G                                  source and arch-specific build.
# @flag -b                                  binary-only, no source files.
# @flag -B                                  binary-only, only arch-specific files.
# @flag -A                                  binary-only, only arch-indep files.
# @flag -S                                  source-only, no binary files.
# @flag -nc                                 do not pre clean source tree (implies -b).
# @flag --no-pre-clean                      do not pre clean source tree (implies -b).
# @flag --pre-clean                         pre clean source tree (default).
# @flag --no-post-clean                     do not post clean source tree (default).
# @flag -tc                                 post clean source tree.
# @flag --post-clean                        post clean source tree.
# @flag --sanitize-env                      sanitize the build environment.
# @flag -D --check-builddeps                check build dependencies and conflicts (default).
# @flag -d --no-check-builddeps             do not check build dependencies and conflicts.
# @flag --ignore-builtin-builddeps          do not check builtin build dependencies.
# @option -P --build-profiles <profiles>    assume comma-separated build <profiles> as active.
# @flag --rules-requires-root               assume legacy Rules-Requires-Root field value.
# @option -R --rules-file <rules>           rules file to execute (default is debian/rules).
# @option -T --rules-target <target>        call debian/rules <target>.
# @flag --as-root                           ensure -T calls the target with root rights.
# @option -j --jobs <<number>|auto>         jobs to run simultaneously (passed to <rules>), forced mode.
# @option -J --jobs-try <<number>|auto>     jobs to run simultaneously (passed to <rules>), opt-in mode (default is auto).
# @option -r --root-command <command>       command to gain root rights (default is fakeroot).
# @option --check-command <command>         command to check the .changes file (no default).
# @option --check-option <opt>              pass <opt> to check <command>.
# @option --hook- <<name>=<command>>        set <command> as the hook <name>, known hooks: init preclean source build binary buildinfo changes postclean check sign done
# @option --buildinfo-file <file>           set the .buildinfo filename to generate.
# @option --buildinfo-option <opt>          pass option <opt> to dpkg-genbuildinfo.
# @option --changes-file <file>             set the .changes filename to generate.
# @option -p --sign-command <command>       command to sign .dsc and/or .changes files (default is gpg).
# @option -k --sign-key <keyid>             the key to use for signing.
# @flag -ap                                 add pause before starting signature process.
# @flag --sign-pause                        add pause before starting signature process.
# @flag -us                                 unsigned source package.
# @flag --unsigned-source                   unsigned source package.
# @flag -ui                                 unsigned .buildinfo file.
# @flag --unsigned-buildinfo                unsigned .buildinfo file.
# @flag -uc                                 unsigned .buildinfo and .changes file.
# @flag --unsigned-changes                  unsigned .buildinfo and .changes file.
# @flag --no-sign                           do not sign any file.
# @flag --force-sign                        force signing the resulting files.
# @option --admindir <directory>            change the administrative directory.
# @flag -? --help                           show this help message.
# @flag --version                           show the version.
# @option -a --host-arch <arch>             set the host Debian architecture.
# @option -t --host-type <type>             set the host GNU system type.
# @option --target-arch <arch>              set the target Debian architecture.
# @option --target-type <type>              set the target GNU system type.
# @flag -si                                 source includes orig, if new upstream (default).
# @flag -sa                                 source includes orig, always.
# @flag -sd                                 source is diff and .dsc only.
# @option -v <version>                      changes since version <version>.
# @option -m --release-by <maint>           maintainer for this release is <maint>.
# @option -e --build-by <maint>             maintainer for this build is <maint>.
# @option -C <descfile>                     changes are described in <descfile>.
# @option --changes-option <opt>            pass option <opt> to dpkg-genchanges.
# @flag -sn                                 force Debian native source format.
# @flag -ss
# @flag -sA
# @flag -sk
# @flag -su
# @flag -sr
# @flag -sK
# @flag -sU
# @flag -sR
# @option -z --compression-level <level>    compression level to use for source.
# @option -Z --compression <compressor>     compression to use for source (gz|xz|bzip2|lzma).
# @option -i --diff-ignore <regex>          ignore diffs of files matching <regex>.
# @option -I --tar-ignore <pattern>         filter out files when building tarballs.
# @option --source-option <opt>             pass option <opt> to dpkg-source.
build() {
    :;
}
# }} apt build

# {{ apt build-dep
# @cmd Configure build-dependencies for source packages
# @arg pkg![`_choice_package`]
build-dep() {
    :;
}
# }} apt build-dep

# {{ apt changelog
# @cmd View a package's changelog
# @arg pkg![`_choice_package`]
changelog() {
    :;
}
# }} apt changelog

# {{ apt check
# @cmd Verify that there are no broken dependencies
check() {
    :;
}
# }} apt check

# {{ apt clean
# @cmd Erase downloaded archive files
clean() {
    :;
}
# }} apt clean

# {{ apt contains
# @cmd List packages containing a file
# @arg filename-pattern!
contains() {
    :;
}
# }} apt contains

# {{ apt content
# @cmd List files contained in a package
# @arg pkg+[`_choice_package`]
content() {
    :;
}
# }} apt content

# {{ apt deb
# @cmd Install a .deb package
# @arg file-deb! <file:.deb>
deb() {
    :;
}
# }} apt deb

# {{ apt depends
# @cmd Show raw dependency information for a package
# @arg pkg+[`_choice_package`]
depends() {
    :;
}
# }} apt depends

# {{ apt dist-upgrade
# @cmd Upgrade the system by removing/installing/upgrading packages
dist-upgrade() {
    :;
}
# }} apt dist-upgrade

# {{ apt download
# @cmd Download the .deb file for a package
# @arg pkg![`_choice_package`]
download() {
    :;
}
# }} apt download

# {{ apt edit-sources
# @cmd Edit /etc/apt/sources.list with your preferred text editor
edit-sources() {
    :;
}
# }} apt edit-sources

# {{ apt dselect-upgrade
# @cmd Follow dselect selections
dselect-upgrade() {
    :;
}
# }} apt dselect-upgrade

# {{ apt full-upgrade
# @cmd Same as 'dist-upgrade'
full-upgrade() {
    :;
}
# }} apt full-upgrade

# {{ apt held
# @cmd List all held packages
held() {
    :;
}
# }} apt held

# {{ apt hold
# @cmd Hold a package
# @arg pkg+[`_choice_installed_package`]
hold() {
    :;
}
# }} apt hold

# {{ apt install
# @cmd Install/upgrade packages
# @flag --reinstall                Reinstall package
# @flag --no-install-recommends    Do not consider recommended packages as a dependency for installin.
# @arg pkg+[`_choice_package`]
install() {
    :;
}
# }} apt install

# {{ apt list
# @cmd List packages based on package names
# @flag --installed       Installed packages
# @flag --upgradable      Upgradable packages
# @flag --all-versions    Show all versions of any package
# @arg pattrn!
list() {
    :;
}
# }} apt list

# {{ apt policy
# @cmd Show policy settings
# @arg pkg+[`_choice_package`]
policy() {
    :;
}
# }} apt policy

# {{ apt purge
# @cmd Remove packages and their configuration files
# @arg pkg+[`_choice_installed_package`]
purge() {
    :;
}
# }} apt purge

# {{ apt recommends
# @cmd List missing recommended packages for a particular package
# @arg pkg!
recommends() {
    :;
}
# }} apt recommends

# {{ apt rdepends
# @cmd Show reverse dependency information for a package
# @arg pkg+[`_choice_package`]
rdepends() {
    :;
}
# }} apt rdepends

# {{ apt reinstall
# @cmd Download and (possibly) reinstall a currently installed package
# @arg pkg+[`_choice_installed_package`]
reinstall() {
    :;
}
# }} apt reinstall

# {{ apt remove
# @cmd Remove packages
# @arg pkg+[`_choice_installed_package`]
remove() {
    :;
}
# }} apt remove

# {{ apt search
# @cmd Search for a package by name and/or expression
# @arg pattern!
search() {
    :;
}
# }} apt search

# {{ apt show
# @cmd Display detailed information about a package
# @arg pkg+[`_choice_package`]
show() {
    :;
}
# }} apt show

# {{ apt showhold
# @cmd Same as 'held'
showhold() {
    :;
}
# }} apt showhold

# {{ apt showsrc
# @cmd Display all the source package records that match the given package name
# @arg pkg+[`_choice_package`]
showsrc() {
    :;
}
# }} apt showsrc

# {{ apt source
# @cmd Download source archives
# @arg pkg+[`_choice_package`]
source() {
    :;
}
# }} apt source

# {{ apt sources
# @cmd Same as 'edit-sources'
sources() {
    :;
}
# }} apt sources

# {{ apt unhold
# @cmd Unhold a package
# @arg pkg+[`_choice_hold_package`]
unhold() {
    :;
}
# }} apt unhold

# {{ apt update
# @cmd Download lists of new/upgradable packages
update() {
    :;
}
# }} apt update

# {{ apt upgrade
# @cmd Perform a safe upgrade
# @flag --with-new-pkgs    Allow installing new packages
# @arg pkg*[`_choice_upgradable_package`]
upgrade() {
    :;
}
# }} apt upgrade

# {{ apt version
# @cmd Show the installed version of a package
version() {
    :;
}
# }} apt version

_choice_option() {
    apt-config dump | gawk '{print $1}'
}

_choice_target() {
    printf "%s\n" stable testing unstable
}

_choice_build() {
    printf "%s\n" ull source binary any all
}

_choice_package() {
    apt-cache --no-generate pkgnames
}

_choice_installed_package() {
    dpkg --get-selections | gawk '{if (match($2, /(install|hold)/)) { print $1}}'
}

_choice_hold_package() {
    apt held
}

_choice_upgradable_package() {
    apt list --upgradable "$ARGC_CWORD*" | gawk -F/ '{if (NR>1) {print $1}}'
}

command eval "$(argc --argc-eval "$0" "$@")"