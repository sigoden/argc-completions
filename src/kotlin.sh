_patch_help() {
    $@ -help | \
    sed \
        -e '/^\s*-/ s/(\(-\S\+\))/\1/' \
        -e '/^\s*-/ s/^\(\s*-[A-Z]\)/\1 /' \

}

_patch_table() {
    _patch_table_edit_options \
        '-D;-*' \
        '-J;-*' \
        '-X;-*' \
        '-classpath;*:[`_choice_class_path`]' \
        '-howtorun;[guess|classfile|jar|script]' \
    | \
    _patch_table_edit_arguments ';;'
}

_choice_class_path() {
    _argc_util_comp_path exts=.jar,.zip
}
