_patch_help() { 
    echo "Usage: stty [options] FILE"
    $@ --help | sed -n '/Mandatory arguments to long/, /^$/ p'
}
