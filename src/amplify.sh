_patch_help() {
    if [[ "$*" == "amplify uninstall" ]]; then
        :;
    else
        $@ --help    
    fi
}
