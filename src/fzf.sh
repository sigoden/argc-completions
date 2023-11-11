_patch_help() {
    $@ --help | sed 's/+s, //' 
}

_patch_table() { 
    _patch_table_edit_options \
        '--border;[rounded|sharp|bold|block|thinblock|double|horizontal|vertical|top|bottom|left|right|none]' \
        '--color;[dark|light|16|bw]' \
        '--info;[default|right|hidden|inline|inline-right]' \
        ';;' \
        '+i;;Case-sensitive match' \
        '+s;;Do not sort the result' \

}
