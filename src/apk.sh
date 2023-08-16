_patch_help() {
    if [[ "$*" == "apk cache"* ]]; then
        cat <<-'EOF' | _patch_help_embed_help $@
# cache% --
## clean - Removing older packages
## download [DEPENDENCY...] - Download missing packages
## sync [DEPENDENCY...] - Delete and download in one step
EOF

        if [[ "$*" == "apk cache" ]]; then
            $@ --help
        fi
    else
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "apk add" ]] \
    || [[ "$*" == "apk info" ]] \
    || [[ "$*" == "apk dot" ]] \
    || [[ "$*" == "apk policy" ]] \
    || [[ "$*" == "apk index" ]] \
    || [[ "$*" == "apk fetch" ]] \
    ; then
        _patch_table_edit_arguments 'packages;[`_choice_package`]'

    elif [[ "$*" == "apk del" ]] \
      || [[ "$*" == "apk fix" ]] \
      || [[ "$*" == "apk upgrade" ]] \
      || [[ "$*" == "apk manifest" ]] \
      || [[ "$*" == "apk version" ]] \
    ; then
        _patch_table_edit_arguments 'packages;[`_choice_installed_package`]'

    elif [[ "$*" == "apk cache"* ]]; then
        _patch_table_edit_arguments 'dependency;[`_choice_package`]'

    else
        cat
    fi
}

_choice_package() {
    apk search -q
}

_choice_installed_package() {
    apk info -q
}
