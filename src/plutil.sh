_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
  -o OUTFILE    Output to the file given.
  -e OUTEXT     Output to a file with the given extension.
# -p - Prints the plists in a human-readable form (GNUstep ASCII).
# -lint - Verifies the plist can be parsed.
# -convert FMT - Converts the plist to another format.
# -insert PATH KEY VALUE - Insert KEY=VALUE to the object at PATH.
# -replace PATH KEY VALUE - Replace KEY=VALUE for the object at PATH.
# -remove PATH KEY - Remove KEY from the object at PATH.
# -extract PATH KEY - Extract the KEY from the object at PATH.
EOF
}

_patch_table() {
    if [[ "$*" == "plutil" ]]; then
        _patch_table_add_metadata inherit-flag-options

    elif [[ "$*" == "plutil -convert" ]]; then
        _patch_table_edit_arguments \
            'fmt;[`_choice_fmt`]' \

    else
        cat
    fi
}

_choice_fmt() {
    printf "%s\n" xml1 binary1 json swift obj
}
