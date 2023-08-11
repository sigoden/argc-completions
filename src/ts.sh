_patch_help() { 
    cat <<-'EOF'
Usage: ts [options] [format]
Options:
    -r  convert existing timestamps to relative times
    -i  print incremental timestamps since ast timestamp
    -s  print incremental timestamps since start of program
    -m  use monotonic clock
EOF
}
