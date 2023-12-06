#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --create                      Create the archive.
# @option -i --generate-index <FILE>     Generate index information for the specified jar archives
# @flag -t --list                        List the table of contents for the archive
# @flag -u --update                      Update an existing jar archive
# @flag -x --extract                     Extract named (or all) files from the archive
# @flag -d --describe-module             Print the module descriptor, or automatic module name
# @flag --validate                       Validate the contents of the jar archive.
# @option -C <DIR>                       Change to the specified directory and include the following file
# @option -f --file                      The archive file name.
# @option --release <VERSION>            Places all following files in a versioned directory of the jar (i.e.
# @flag -v --verbose                     Generate verbose output on standard output
# @option -e --main-class <CLASSNAME>    The application entry point for stand-alone applications bundled into a modular, or executable, jar archive
# @option -m --manifest <FILE>           Include the manifest information from the given manifest file
# @flag -M --no-manifest                 Do not create a manifest file for the entries
# @option --module-version <VERSION>     The module version, when creating a modular jar, or updating a non-modular jar
# @option --hash-modules <PATTERN>       Compute and record the hashes of modules matched by the given pattern and that depend upon directly or indirectly on a modular jar being created or a non-modular jar being updated
# @flag -p --module-path                 Location of module dependence for generating the hash
# @flag -0 --no-compress                 Store only; use no ZIP compression
# @option --date <TIMESTAMP>             The timestamp in ISO-8601 extended offset date-time with optional time-zone format, to use for the timestamps of entries, e.g. "2022-02-12T12:30:00-05:00"
# @option -h --help <:compat>            Give this, or optionally the compatibility, help
# @flag --help-extra                     Give help on extra options
# @flag --version                        Print program version

command eval "$(argc --argc-eval "$0" "$@")"