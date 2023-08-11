_patch_help() { 
    echo "usage: less [option] files..."
    $@ --help | \
    sed -n -e 's/.\x08//g' -e '/^\s*-?/,/--------/ p' | \
    sed \
        -e 's/-" //' \
        -e 's/ \.\+  //' \
        -e 's/\(\S\)  -/\1 -/g' \
        -e 's/^\s*-/  -/' \

}
