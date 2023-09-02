_patch_table() {
    _patch_table_edit_options \
        '--autostop;[`_choice_autostop`]' \
        '--disable-protocol;[`_choice_protocol`]' \
        '--enable-protocol;[`_choice_protocol`]' \
        '--interface;[`_module_os_network_interface`]' \
        '--ring-buffer;[`_choice_ring_buffer`]' \
        '-K(keytab-file);' \
        '-P;[`_choice_persconf`]' \
        '-d;[`_choice_decode`]' \
        '-t(<value>);[a|ad|adoy|d|dd|e|r|u|ud|udoy]' \
        '-u(<value>);[s|hms]' \
        '-z;*,[`_choice_statistic`]' \

}

_choice_autostop() {
    _argc_util_comp_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        cat <<-'EOF' | _argc_util_transform suffix=: nospace
duration	stop after NUM seconds
filesize	stop this file after NUM KB
files	stop after NUM files
packets	stop after NUM packets
EOF
        return
    fi
}

_choice_ring_buffer() {
    _argc_util_comp_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        cat <<-'EOF' | _argc_util_transform suffix=: nospace
duration	switch to next file after NUM secs
filesize	switch to next file after NUM KB
files	ringbuffer: replace after NUM files
packets	switch to next file after NUM packets
interval	switch to next file when the time is an exact multiple of NUM secs
EOF
        return
    fi
}

_choice_decode() {
    _argc_util_mode_kv ==
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_selector | _argc_util_transform suffix=== nospace
        return
    else
        _argc_util_mode_parts , "$argc__kv_filter" "$argc__kv_prefix"
        if [[ "$argc__parts_len" -lt 2 ]]; then
            return
        else
            _choice_protocol
        fi
    fi
}

_choice_protocol() {
    tshark -G protocols | gawk -F'\t' '{if (NF>2) {value=$3} else {value=$2}; print value "\t" $1}'
}

_choice_statistic() {
    tshark -z help 2>&1 | tail -n +2 
}

_choice_persconf() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        printf "%s:\0\n" persconf persdata
        return
    fi
    _argc_util_comp_path
}

_choice_selector() {
    tshark -d . 2>&1 | sed -n 's/\t\(\S\+\) \(.*\)/\1\t\2/p'
}
