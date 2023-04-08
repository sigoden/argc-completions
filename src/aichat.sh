_patch_table() {
    sed \
        -e '/-m, --model/ s/$/ # [`_choice_model`]/' \
        -e '/-r, --role/ s/$/ # [`_choice_role`]/'
}

_choice_role() {
    aichat --list-roles
}

_choice_model() {
    aichat --list-models
}