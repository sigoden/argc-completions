_patch_help() { 
    echo "Usage: bash [options] file args..."
    echo "Options:"
    man bash | sed -n '/^OPTIONS/,/ARGUMENTS/ {//!p}'
}
