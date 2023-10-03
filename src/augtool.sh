_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@
    else
        _patch_help_run_man $1 | \
        sed -n "/^COMMANDS/,/^[A-Z]/ {/^\s*$2\( \|$\)/p}" | \
        sed \
            -e "s/^\s*/Usage: $1 /" \
            
    fi
}
