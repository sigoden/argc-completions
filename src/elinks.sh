_patch_help() {
    $@ --help | \
    sed \
        's/\[0|1\]/{0|1}/' \

}

_patch_table() {
    _patch_table_edit_options \
        '-remote;[`_choice_remote`]' \
    | \
    _patch_table_edit_arguments 'url;*[`_choice_url`]'
}

_choice_remote() {
    printf "%s\n" ping openURL addBookmark infoBox reload search xfeDoCommand
}

_choice_url() {
    len="${#argc__positionals[@]}"
    if [[ "$len" -lt 2 ]] && [[ -n "$argc_remote" ]]; then
        _choice_remote
    else
        _choice_proto
        _choice_bookmark
    fi
}

_choice_bookmark() {
    bookmark_file="${argc_config_dir:-"$HOME/.elinks"}/bookmarks"
    if [[ -f "$bookmark_file" ]]; then
        cat ~/.elinks/bookmarks  | gawk -F'\t' '{print $2}'
    fi
}

_choice_proto() {
    printf "%s\n" https:// http:// ftp:// file://
}
