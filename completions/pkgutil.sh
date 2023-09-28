#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                                     Show this usage guide
# @flag -v --verbose                               Show contextual information and format for easy reading
# @flag -f --force                                 Perform all operations without asking for confirmation
# @option --volume <PATH>                          Perform all operations on the specified volume
# @option --edit-pkg[`_choice_pkgid`] <PKGID>      Adjust properties of package PKGID using --learn PATH
# @flag --only-files                               List only files (not directories) in --files listing
# @flag --only-dirs                                List only directories (not files) in --files listing
# @flag --regexp                                   Try all PKGID arguments as regular expressions
# @flag --pkgs-plist                               List all package IDs on --volume in plist format
# @option --pkgs <REGEXP>                          List package IDs on --volume that match REGEXP
# @flag --groups                                   List all GROUPIDs on --volume
# @flag --groups-plist                             List all GROUPIDs on --volume in plist format
# @option --group-pkgs[`_choice_group`] <GROUPID>  List all PKGIDs in GROUPID
# @option --files[`_choice_pkgid`] <PKGID>         List files installed by the specified package
# @option --lsbom[`_choice_pkgid`] <PKGID>         List files in the same format as 'lsbom -s'
# @option --pkg-groups[`_choice_pkgid`] <PKGID>    List all GROUPIDs that PKGID is a member of
# @option --export-plist[`_choice_pkgid`] <PKGID>  Print all info about PKGID in plist format
# @option --pkg-info[`_choice_pkgid`] <PKGID>      Show metadata about PKGID
# @flag --pkg-info-plist                           PKGID Show metadata about PKGID in plist format
# @option --file-info <PATH>                       Show metadata known about PATH
# @flag --file-info-plist                          PATH Show metadata known about PATH in plist format
# @option --forget[`_choice_pkgid`] <PKGID>        Discard receipt data for the specified package
# @option --learn <PATH>                           Update --edit-pkg PKGID with actual metadata from PATH
# @option --expand <PKG> <DIR>                     Expand the flat package PKG to DIR
# @option --flatten <DIR> <PKG>                    Flatten the files at DIR as PKG
# @option --bom <PATH>                             Extract any Bom files from the pkg at PATH into /tmp
# @option --payload-files <PATH>                   List the paths archived within the (m)pkg at PATH
# @flag --check-signature                          PATH Validate the signature of the pkg at PATH and print certificate information

_choice_pkgid() {
    pkgutil --pkgs
}

_choice_group() {
    pkgutil --groups
}

command eval "$(argc --argc-eval "$0" "$@")"