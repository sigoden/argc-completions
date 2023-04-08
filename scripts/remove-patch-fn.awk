BEGIN {
    is_patch_fn = 0
}

{
    if (is_patch_fn > 0) {
        if (match($0, /^}/)) {
            is_patch_fn = 1
        } else if (is_patch_fn == 1 && match($0, /^\s*$/)) {
            is_patch_fn = 0
        }
    } else {
        if (match($0, /^_patch_\w+\(/)) {
            is_patch_fn = 2
        } else {
            print $0
        }
    }
}