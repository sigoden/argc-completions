_patch_help() {
    if [[ "$*" == "keepassxc-cli open" ]]; then
        :;
    else
        $@ --help 2>&1 | sed '/^Available commands:/,/^\s*$/ s/^\(\S\+\)  /  \1  /'
    fi
}
