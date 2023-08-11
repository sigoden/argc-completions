_patch_help() { 
    echo "Usage: fakeroot [options] files..."
    echo "Options:"
    _patch_help_run_man fakeroot | sed -n '/^OPTIONS/,/^EXAMPLES/ {//!p}'
}
