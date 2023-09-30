_patch_help() {
    if [[ "$*" == "expo" ]]; then
        $@ --help | \
        sed \
            -e 's/^  //' \
            -e '/^Commands/,/^\s*$/ s/, /\n  /g' \

    else
        $@ --help | \
        sed \
            -e 's/^  //' \

    fi
}

_patch_table() {
    if [[ "$*" == "expo start" ]]; then
        _patch_table_edit_options \
            '--host;[`_choice_host`]' \

    else
        cat    
    fi
}

_choice_host() {
    cat <<-'EOF'
lan	Use the local network
tunnel	Use any network by tunnel through ngrok
localhost	Connect to the dev server over localhost
EOF
}
