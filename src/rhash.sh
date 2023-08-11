_patch_help() { 
    $@ --help | sed '/^\s*-/ s/,\s\{2,\}-/, -/'
}
