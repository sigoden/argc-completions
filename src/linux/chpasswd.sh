_patch_table() {
    _patch_table_edit_options '--crypt-method;[`_choice_crypt_method`]'
}

_choice_crypt_method() {
    printf "%s\n" DES MD5 NONE SHA256 SHA512
}
