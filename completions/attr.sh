#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta inherit-flag-options
# @flag -q    quiet output
# @flag -L    dereference symbolic links
# @flag -R    operator in the root attribute namespace

# {{ attr -s
# @cmd set value
# @option -V <value>
# @arg attrname
# @arg pathname
-s() {
    :;
}
# }} attr -s

# {{ attr -g
# @cmd get value
# @arg attrname
# @arg pathname
-g() {
    :;
}
# }} attr -g

# {{ attr -r
# @cmd remove value
# @arg attrname
# @arg pathname
-r() {
    :;
}
# }} attr -r

# {{ attr -l
# @cmd
# @arg pathname
-l() {
    :;
}
# }} attr -l

command eval "$(argc --argc-eval "$0" "$@")"