_patch_help() {
    $@ --help | sed 's/="\(<\S\+>\)"/=\1/'
}

_patch_table() {
    _patch_table_edit_options \
        '--voices;[`_choice_lang`]' \
        '-v;[`_choice_voice`]' \

}

_choice_voice() {
    espeak --voices | gawk '{if(NR>1){ print $4}}'
}

_choice_lang() {
    espeak --voices | gawk '{if(NR>1){ print $2}}'
}
