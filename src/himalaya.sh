_patch_help() {
    if [[ "$*" == "himalaya sort" ]]; then
        $@ --help | sed 's/-c, --criterion/   --criterion/'
    else
        $@ --help
    fi
}
