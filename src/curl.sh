_patch_help() {
    curl --help all | sed \
        -e '/--curves/ s/<algorithm list> (EC)/<algorithm list>  (EC)/'
}