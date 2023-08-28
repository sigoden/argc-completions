_patch_help() {
    _patch_help_run_man $@ | sed '/^\s*-/,+1 {N;s/\n\s\+-/, -/;}'
}
