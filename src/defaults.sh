_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# read [domain] [key] - shows defaults for given domain, key
# read-type <domain> <key> - shows the type for the given domain, key
# write <domain> <key> [value] - writes key for domain
# rename <domain> <old_key> <new_key> - renames old_key to new_key
# delete <domain> [key] - deletes domain or key in domain
# import <domain> [path to plist] - writes the plist at path to domain
# export <domain> [path to plist] - saves domain as a binary plist to path
# domains - lists all domains
# find <word> - lists all entries containing word
# help - print this help
EOF
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'domain;[`_choice_domain`]' \
    )"

    if [[ "$*" == "defaults write" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            ';;' \
            '-string(<string_value>);;String as the value for the given key' \
            '-data(<hex_digits>);;Raw data bytes for given key' \
            '-int(<integer_value>);;Integer as the value for the given key' \
            '-float(<float_value>);;Floating point number as the value for the given key' \
            '-bool;[true|false|yes|no];Boolean as the value for the given key' \
            '-date(<date_rep>);;Date as the value for the given key' \
            '-array(<value>);~;Array as the value for the given key' \
            '-array-add(<value>);~;Add new elements to the end of an array' \
            '-dict(<value>);~;Add a dictionary to domain' \
            '-dict-add(<value>);~;Add new key/value pairs to a dictionary' \

    else
        echo "$table"
    fi

}

_choice_domain() {
    defaults domains | sed 's/, /\n/g'
}
