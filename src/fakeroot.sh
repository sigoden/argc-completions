_patch_help() { 
    echo "Usage: fakeroot [options] files..."
    echo "Options:"
    man fakeroot | sed -n '/^OPTIONS/,/^EXAMPLES/ {//!p}'
}