_patch_help() {
    if [[ "$*" == "keytool" ]]; then
        echo 'Commands:'
        $@ --help 2>&1 | sed -n '/^\s*-/ s/^\s*\(-\S\+\)\s\+\(.*\)/  \\\1 - \2/p'
    else
        $@ --help 2>&1
    fi
}
