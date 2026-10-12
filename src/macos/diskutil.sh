_patch_help() {
    if [[ "$*" == "diskutil" ]] \
    || [[ "$*" == "diskutil apfs" ]] \
    || [[ "$*" == "diskutil appleRAID" ]] \
    || [[ "$*" == "diskutil coreStorage" ]] \
    || [[ "$*" == "diskutil image" ]] \
    ; then
        $@ 2>&1 | \
        sed \
            -e '/^Usage:/,+1 c\Commands:' \
            -e '/^     \S/ s/(\(.*\))/\1/' \
            -e '/^     \S/ s/\[\w\+\]//' \

    elif [[ "$*" == "diskutil info" ]]; then
        cat <<-'EOF'
    -plist  Return a property list
    -all    Process all disks
EOF

    elif [[ "$*" == "diskutil list" ]]; then
        cat <<-'EOF'
    -plist  Return a property list
EOF

    fi
}
