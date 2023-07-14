_patch_help() { 
    echo "Usage: bash [options] file args..."
    echo "Options:"
    _patch_help_run_man bash | sed -n '/^OPTIONS/,/ARGUMENTS/ {//!p}'
}
