_patch_table() {
    _patch_table_edit_arguments ';;' 'service-type;[`_choice_service_type`]'
}

_choice_service_type() {
    mapfile -t serv < <(avahi-browse -bk)
    mapfile -t desc < <(avahi-browse -b)
    len="${#serv[@]}"
    for ((i=0; i < len; i++)); do
        echo -e "${serv[i]}\t${desc[i]}"
    done
}
