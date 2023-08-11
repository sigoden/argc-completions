_patch_help() {
    if [[ "$*" == "apk cache" ]]; then
        $@ --help | sed '/^usage:/,/^$/ d'
        cat <<-'EOF'
Commands:
    clean       Removing older packages
    download    Download missing packages
    sync        Delete and download in one step
EOF
    elif [[ "$*" == "apk cache "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@
apk cache download [DEPENDENCY...]
apk cache sync [DEPENDENCY...]
EOF
    else
        $@ --help
    fi
}

_patch_table() { 
   if [[ "$*" == "apk add" ]] \
   || [[ "$*" == "apk dot" ]] \
   || [[ "$*" == "apk fetch" ]] \
   || [[ "$*" == "apk index" ]] \
   || [[ "$*" == "apk info" ]] \
   || [[ "$*" == "apk policy" ]] \
   ; then
        _patch_table_edit_arguments 'packages;[`_choice_package`]'

   elif [[ "$*" == "apk cache"* ]]; then
        _patch_table_edit_arguments 'dependency;[`_choice_package`]'

   elif [[ "$*" == "apk del" ]] \
     || [[ "$*" == "apk fix" ]] \
     || [[ "$*" == "apk manifest" ]] \
     || [[ "$*" == "apk upgrade" ]] \
     || [[ "$*" == "apk version" ]] \
   ; then
        _patch_table_edit_arguments 'packages;[`_choice_installed_package`]'

    else
        cat
   fi
}

_choice_installed_package() {
    apk info -q
}

_choice_package() {
    apk search -q
}
