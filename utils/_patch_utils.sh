_patch_utils_extract_subcmd() {
    awk -v v1="^$1 " -v v2="^$*" '$0 ~ v1 { x = 0; } $0 ~ v2 { x=1; print "Usage: " $0 } /^(options:|\s+-)/ && x == 1 { print $0 }'
}