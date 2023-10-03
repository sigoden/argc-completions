#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option -o <OUTFILE>    Output to the file given.
# @option -e <OUTEXT>     Output to a file with the given extension.

# {{ plutil -p
# @cmd Prints the plists in a human-readable form (GNUstep ASCII).
-p() {
    :;
}
# }} plutil -p

# {{ plutil -lint
# @cmd Verifies the plist can be parsed.
-lint() {
    :;
}
# }} plutil -lint

# {{ plutil -convert
# @cmd Converts the plist to another format.
# @arg fmt[`_choice_fmt`]
-convert() {
    :;
}
# }} plutil -convert

# {{ plutil -insert
# @cmd Insert KEY=VALUE to the object at PATH.
# @arg path
# @arg key
# @arg value
-insert() {
    :;
}
# }} plutil -insert

# {{ plutil -replace
# @cmd Replace KEY=VALUE for the object at PATH.
# @arg path
# @arg key
# @arg value
-replace() {
    :;
}
# }} plutil -replace

# {{ plutil -remove
# @cmd Remove KEY from the object at PATH.
# @arg path
# @arg key
-remove() {
    :;
}
# }} plutil -remove

# {{ plutil -extract
# @cmd Extract the KEY from the object at PATH.
# @arg path
# @arg key
-extract() {
    :;
}
# }} plutil -extract

_choice_fmt() {
    printf "%s\n" xml1 binary1 json swift obj
}

command eval "$(argc --argc-eval "$0" "$@")"