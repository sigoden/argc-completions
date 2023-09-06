_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# list - display a list of all supported applications.
# backup - sync your conf files to your synced storage, use this the 1st time you use Mackup.
# restore - link the conf files already in your synced storage on your system, use it on any new system you use.
# show <application> - Show the current configuration
# uninstall - reset everything as it was before using Mackup.
EOF
    if [[ $# -eq 1 ]]; then
        $@ --help | sed -n '/^Options:/,/^\s*$/ p'    
    fi
}

_patch_table() {
    if [[ "$*" == "mackup" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    elif [[ "$*" == "mackup show" ]]; then
        _patch_table_edit_arguments 'application;[`_choice_application`]'

    else
        cat
    fi
}

_choice_application() {
    mackup list | sed -n 's/^ - \(.*\)$/\1/p'
}
