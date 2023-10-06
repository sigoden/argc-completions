#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta inherit-flag-options
# @flag -p --pkg-cache                Select the file to store the package cache.
# @flag -s --src-cache                Select the file to store the source cache.
# @flag -q --quiet                    Quiet; produces output suitable for logging, omitting progress indicators.
# @flag -i --important                Print only important dependencies; for use with unmet and depends.
# @flag --no-pre-depends              Per default the depends and rdepends print all dependencies.
# @flag --no-depends                  Per default the depends and rdepends print all dependencies.
# @flag --no-recommends               Per default the depends and rdepends print all dependencies.
# @flag --no-suggests                 Per default the depends and rdepends print all dependencies.
# @flag --no-conflicts                Per default the depends and rdepends print all dependencies.
# @flag --no-breaks                   Per default the depends and rdepends print all dependencies.
# @flag --no-replaces                 Per default the depends and rdepends print all dependencies.
# @flag --no-enhances                 Per default the depends and rdepends print all dependencies.
# @flag --implicit                    Per default depends and rdepends print only dependencies explicitly expressed in the metadata.
# @flag -f --full                     Print full package records when searching.
# @flag -a --all-versions             Print full records for all available versions.
# @flag -g --generate                 Perform automatic package cache regeneration, rather than use the cache as it is.
# @flag -n --names-only               Only search on the package and provided package names, not the long descriptions.
# @flag --all-names                   Make pkgnames print all names, including virtual packages and missing dependencies.
# @flag --recurse                     Make depends and rdepends recursive so that all packages mentioned are printed once.
# @flag --installed                   Limit the output of depends and rdepends to packages which are currently installed.
# @option --with-source <filename>    Adds the given file as a source for metadata.
# @flag -h --help                     Show a short usage summary.
# @flag -v --version                  Show the program version.
# @flag -c --config-file              Configuration File; Specify a configuration file to use.
# @flag -o --option                   Set a Configuration Option; This will set an arbitrary configuration option.

# {{ apt-cache gencaches
# @cmd gencaches creates APT's package cache.
gencaches() {
    :;
}
# }} apt-cache gencaches

# {{ apt-cache showpkg
# @cmd showpkg displays information about the packages listed on the command line.
# @arg pkg*[`_choice_package`]
showpkg() {
    :;
}
# }} apt-cache showpkg

# {{ apt-cache stats
# @cmd stats displays some statistics about the cache.
stats() {
    :;
}
# }} apt-cache stats

# {{ apt-cache showsrc
# @cmd showsrc displays all the source package records that match the given package names.
# @arg pkg*[`_choice_package`]
showsrc() {
    :;
}
# }} apt-cache showsrc

# {{ apt-cache dump
# @cmd dump shows a short listing of every package in the cache.
dump() {
    :;
}
# }} apt-cache dump

# {{ apt-cache dumpavail
# @cmd dumpavail prints out an available list to stdout.
dumpavail() {
    :;
}
# }} apt-cache dumpavail

# {{ apt-cache unmet
# @cmd unmet displays a summary of all unmet dependencies in the package cache.
unmet() {
    :;
}
# }} apt-cache unmet

# {{ apt-cache show
# @cmd show performs a function similar to dpkg --print-avail; it displays the package records for the named packages.
# @arg pkg*[`_choice_package`]
show() {
    :;
}
# }} apt-cache show

# {{ apt-cache search
# @cmd search performs a full text search on all available package lists for the POSIX regex pattern given, see regex(7).
# @arg regex*
search() {
    :;
}
# }} apt-cache search

# {{ apt-cache depends
# @cmd depends shows a listing of each dependency a package has and all the possible other packages that can fulfill that dependency.
# @arg pkg*[`_choice_package`]
depends() {
    :;
}
# }} apt-cache depends

# {{ apt-cache rdepends
# @cmd rdepends shows a listing of each reverse dependency a package has.
# @arg pkg*[`_choice_package`]
rdepends() {
    :;
}
# }} apt-cache rdepends

# {{ apt-cache pkgnames
# @cmd This command prints the name of each package APT knows.
# @arg prefix
pkgnames() {
    :;
}
# }} apt-cache pkgnames

# {{ apt-cache dotty
# @cmd dotty takes a list of packages on the command line and generates output suitable for use by dotty from the GraphViz[1] package.
# @arg pkg*[`_choice_package`]
dotty() {
    :;
}
# }} apt-cache dotty

# {{ apt-cache xvcg
# @cmd The same as dotty, only for xvcg from the VCG tool[2].
# @arg pkg*[`_choice_package`]
xvcg() {
    :;
}
# }} apt-cache xvcg

# {{ apt-cache policy
# @cmd policy is meant to help debug issues relating to the preferences file.
# @arg pkg*[`_choice_package`]
policy() {
    :;
}
# }} apt-cache policy

# {{ apt-cache madison
# @cmd apt-cache's madison command attempts to mimic the output format and a subset of the functionality of the Debian archive management tool, madison.
# @arg pkg*[`_choice_package`]
madison() {
    :;
}
# }} apt-cache madison

_choice_package() {
    apt-cache --no-generate pkgnames
}

command eval "$(argc --argc-eval "$0" "$@")"