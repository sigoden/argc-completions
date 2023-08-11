_patch_table() { 
    _patch_table_edit_arguments  \
        'database;[`_choice_database`]' \

}

_choice_database() {
    printf "%s\n" ahosts ahostsv4 ahostsv6 aliases ethers group gshadow hosts \
        initgroup netgroup networks passwd protocols rpc services shadow 
}
