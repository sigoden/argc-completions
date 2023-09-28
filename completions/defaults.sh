#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ defaults read
# @cmd shows defaults for given domain, key
# @arg domain[`_choice_domain`]
# @arg key
read() {
    :;
}
# }} defaults read

# {{ defaults read-type
# @cmd shows the type for the given domain, key
# @arg domain![`_choice_domain`]
# @arg key!
read-type() {
    :;
}
# }} defaults read-type

# {{ defaults write
# @cmd writes key for domain
# @option -string <string_value>      String as the value for the given key
# @option -data <hex_digits>          Raw data bytes for given key
# @option -int <integer_value>        Integer as the value for the given key
# @option -float <float_value>        Floating point number as the value for the given key
# @option -bool[true|false|yes|no]    Boolean as the value for the given key
# @option -date <date_rep>            Date as the value for the given key
# @option -array~ <value>             Array as the value for the given key
# @option -array-add~ <value>         Add new elements to the end of an array
# @option -dict~ <value>              Add a dictionary to domain
# @option -dict-add~ <value>          Add new key/value pairs to a dictionary
# @arg domain![`_choice_domain`]
# @arg key!
# @arg value
write() {
    :;
}
# }} defaults write

# {{ defaults rename
# @cmd renames old_key to new_key
# @arg domain![`_choice_domain`]
# @arg old_key!
# @arg new_key!
rename() {
    :;
}
# }} defaults rename

# {{ defaults delete
# @cmd deletes domain or key in domain
# @arg domain![`_choice_domain`]
# @arg key
delete() {
    :;
}
# }} defaults delete

# {{ defaults import
# @cmd writes the plist at path to domain
# @arg domain![`_choice_domain`]
# @arg path-to-plist <path to plist>
import() {
    :;
}
# }} defaults import

# {{ defaults export
# @cmd saves domain as a binary plist to path
# @arg domain![`_choice_domain`]
# @arg path-to-plist <path to plist>
export() {
    :;
}
# }} defaults export

# {{ defaults domains
# @cmd lists all domains
domains() {
    :;
}
# }} defaults domains

# {{ defaults find
# @cmd lists all entries containing word
# @arg word!
find() {
    :;
}
# }} defaults find

_choice_domain() {
    defaults domains | sed 's/, /\n/g'
}

command eval "$(argc --argc-eval "$0" "$@")"