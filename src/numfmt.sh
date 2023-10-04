_patch_help() {
    $@ --help | \
    sed '/^UNIT options:/,$ d'
}

_patch_table() {
    _patch_table_edit_options \
        '--from;[`_choice_unit`]' \
        '--invalid;[abort|fail|warn|ignore]' \
        '--round;[up|down|from-zero|towards-zero|nearest]' \
        '--to;[`_choice_unit`]' \

}

_choice_unit() {
    cat <<-'EOF'
none	no auto-scaling is done; suffixes will trigger an error
auto	accept optional single/two letter suffix
si	accept optional single letter suffix
iec	accept optional single letter suffix
iec-i	accept optional two-letter suffix
EOF
}
