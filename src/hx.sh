_patch_table() { 
    _patch_table_edit_options '--health;[`_choice_health`]'

}

_choice_health() {
    hx --health | gawk '{if ($1 == "Language" && $2 == "LSP") {p=1;next;}; if(p==1){print $1}}'
}
