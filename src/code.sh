_patch_help() {
    code --help | sed 's/\[paths\.\.\.\]/ [paths...]/'
}