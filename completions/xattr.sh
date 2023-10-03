#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h    print this help
# @flag -s    act on symbolic links themselves rather than their targets
# @flag -l    print long format (attr_name: attr_value)
# @flag -z    compress or decompress (if compressed) attribute value in zip format

# {{ xattr -p
# @cmd prints the value of the xattr attr_name.
# @arg attr_name
# @arg file*
-p() {
    :;
}
# }} xattr -p

# {{ xattr -w
# @cmd sets the value of the xattr attr_name to attr_value.
# @arg attr_name
# @arg attrvalue
# @arg file*
-w() {
    :;
}
# }} xattr -w

# {{ xattr -d
# @cmd deletes the xattr attr_name.
# @arg attr_name
# @arg file*
-d() {
    :;
}
# }} xattr -d

# {{ xattr -c
# @cmd clear all xattr
# @arg file*
-c() {
    :;
}
# }} xattr -c

command eval "$(argc --argc-eval "$0" "$@")"