#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ plutil -lint
# @cmd check the property list files for syntax errors
-lint() {
    :;
}
# }} plutil -lint

# {{ plutil -convert
# @cmd rewrite property list files in format fmt is one of: xml1 binary1 json swift objc note: objc can additionally create a header by adding -header
# @flag -s                  be silent on success
# @option -o <path>         specify alternate file path name for result; the -o option is used with -convert, and is only useful with one file argument (last file overwrites); the path '-' means stdout
# @option -e <extension>    specify alternate extension for converted files
# @flag -r                  if writing JSON, output in human-readable form
# @flag -n                  prevent printing a terminating newline if it is not part of the format, such as with raw
# @arg fmt[`_choice_fmt`]
-convert() {
    :;
}
# }} plutil -convert

# {{ plutil -insert
# @cmd keypath -type value  insert a value into the property list before writing it out keypath is a key-value coding key path, with one extension: a numerical path component applied to an array will act on the object at that index in the array or insert it into the array if the numerical path component is the last one in the key path type is one of: bool, integer, float, date, string, data, xml, json
# @flag -s                  be silent on success
# @option -o <path>         specify alternate file path name for result; the -o option is used with -convert, and is only useful with one file argument (last file overwrites); the path '-' means stdout
# @option -e <extension>    specify alternate extension for converted files
# @flag -r                  if writing JSON, output in human-readable form
# @flag -n                  prevent printing a terminating newline if it is not part of the format, such as with raw
# @arg keypath
# @arg type[`_choice_type`]
# @arg value
-insert() {
    :;
}
# }} plutil -insert

# {{ plutil -replace
# @cmd keypath -type value  same as -insert, but it will overwrite an existing value
# @flag -s                  be silent on success
# @option -o <path>         specify alternate file path name for result; the -o option is used with -convert, and is only useful with one file argument (last file overwrites); the path '-' means stdout
# @option -e <extension>    specify alternate extension for converted files
# @flag -r                  if writing JSON, output in human-readable form
# @flag -n                  prevent printing a terminating newline if it is not part of the format, such as with raw
# @arg keypath
# @arg type[`_choice_type`]
# @arg value
-replace() {
    :;
}
# }} plutil -replace

# {{ plutil -remove
# @cmd removes the value at 'keypath' from the property list before writing it out
# @flag -s                  be silent on success
# @option -o <path>         specify alternate file path name for result; the -o option is used with -convert, and is only useful with one file argument (last file overwrites); the path '-' means stdout
# @option -e <extension>    specify alternate extension for converted files
# @flag -r                  if writing JSON, output in human-readable form
# @flag -n                  prevent printing a terminating newline if it is not part of the format, such as with raw
# @arg keypath
-remove() {
    :;
}
# }} plutil -remove

# {{ plutil -extract
# @cmd outputs the value at 'keypath' in the property list as a new plist of type 'fmt' fmt is one of: xml1 binary1 json raw an additional "-expect type" option can be provided to test that the value at the specified keypath is of the specified "type", which can be one of: bool, integer, float, string, date, data, dictionary, array
# @flag -s                  be silent on success
# @option -o <path>         specify alternate file path name for result; the -o option is used with -convert, and is only useful with one file argument (last file overwrites); the path '-' means stdout
# @option -e <extension>    specify alternate extension for converted files
# @flag -r                  if writing JSON, output in human-readable form
# @flag -n                  prevent printing a terminating newline if it is not part of the format, such as with raw
# @arg keypath
# @arg fmt[`_choice_fmt`]
-extract() {
    :;
}
# }} plutil -extract

# {{ plutil -type
# @cmd outputs the type of the value at 'keypath' in the property list can be one of: bool, integer, float, string, date, data, dictionary, array
# @arg keypath
-type() {
    :;
}
# }} plutil -type

# {{ plutil -create
# @cmd creates an empty plist of the specified format file may be '-' for stdout
# @arg fmt[`_choice_fmt`]
-create() {
    :;
}
# }} plutil -create

# {{ plutil -p
# @cmd print property list in a human-readable fashion (not for machine parsing! this 'format' is not stable)
-p() {
    :;
}
# }} plutil -p

_choice_fmt() {
    printf "%s\n" xml1 binary1 json
}

_choice_type() {
    cat <<-'EOF'
-bool	YES if passed "YES" or "true", otherwise NO
-integer	any valid 64 bit integer
-float	any valid 64 bit float
-string	UTF8 encoded string
-date	a date in XML property list format, not supported if outputting JSON
-data	a base-64 encoded string
-xml	an XML property list, useful for inserting compound values
-json	a JSON fragment, useful for inserting compound values
-dictionary	inserts an empty dictionary, does not use value
-array	inserts an empty array, does not use value
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"