_patch_help() { 
    if [[ "$*" == "ifconfig" ]]; then
        _patch_help_run_man $@ | \
        sed \
            -e '/^\s*interface$/ i\\nCOMMANDS' \
            -e 's/^\(\s*\)\[-\]/\1/' \

    else
        :;
    fi
}