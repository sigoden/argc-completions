_patch_help() {
    if [[ "$*" == "diskutil" ]] \
    || [[ "$*" == "diskutil appleRAID" ]] \
    || [[ "$*" == "diskutil coreStorage" ]] \
    || [[ "$*" == "diskutil apfs" ]] \
    || [[ "$*" == "diskutil image" ]] \
    ; then
        $@ 2>&1 | \
        sed \
            -e '/^Usage:/,+1 c\Commands:' \
            -e '/^     \S/ s/(\(.*\))/\1/' \
            -e '/^     \S/ s/\[\w\+\]//' \

    elif [[ "$*" == "diskutil list" ]]; then
        cat <<-'EOF'
    -plist  Return a property list
EOF

    elif [[ "$*" == "diskutil info" ]]; then
        cat <<-'EOF'
    -plist  Return a property list
    -all    Process all disks
EOF

    fi
}
