_patch_help() {
    cat <<-'EOF'
    -e <value>  Specify eye string
    -f <value>  Specify cow file
    -h          Display help and exit
    -l          List all cowfiles
    -n          No word wrapping
    -T          Specify tongue string
    -W <num>    Column width
    -b          Borg cow
    -d          Dead cow
    -g          Greedy cow
    -p          Paranoid cow
    -s          Stoned cow
    -t          Tired cow
    -w          Wired cow
    -y          Young cow
EOF
}

_patch_table() {
    _patch_table_edit_options \
        '-f;[`_choice_cow_file`]' \

}

_choice_cow_file() {
    cowsay -l | tail -n +2 | sed 's/ /\n/g'
}
