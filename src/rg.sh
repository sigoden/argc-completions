_patch_help() {
    echo "Usage: rg [options] [paths]..."
    rg --help | sed -e '0,/^OPTIONS:/ c\OPTIONS:'
}