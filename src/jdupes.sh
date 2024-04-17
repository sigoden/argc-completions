_patch_help() {
    $@ --help | \
    sed \
        -e '/^NOTES/,$ d' \
        -e 's/--recurse: /--recurse:-/' \

}

_patch_table() {
    _patch_table_edit_options \
        '--ext-filter;[`_choice_ext_filter`]' \
        '--order;[`_choice_order`]' \
        '--print;[`_choice_print`]' \

}

_choice_order() {
    cat <<-'EOF'
time	sort by modification time
name	sort by filename (default)
EOF
}

_choice_print() {
    cat <<-'EOF'
early	matches that pass early size/permission/link/etc. checks
partial	files whose partial hashes match 
fullhash	files whose full hashes match
EOF
}

_choice_ext_filter() {
    cat <<-'EOF' | _argc_util_comp_kv ':'
size+=;;match only if size is greater (+) than the specified number
size-=;;match only if size is less than (-) the specified number
noext=;;exclude files with certain extension(s), specified as a comma-separated list. Do not use a leading dot.
onlyext=;;only include files with certain extension(s), specified as a comma-separated list. Do not use a leading dot.
nostr=;;exclude all paths containing the substring text_string.
onlystr=;;require all paths to contain the substring text_string.
newer=;;only include files newer than specified date.
older=;;only include files older than specified date.
EOF
}
