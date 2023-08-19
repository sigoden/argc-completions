_patch_table() { 
    _patch_table_edit_options \
        '--autostop;[`_choice_autostop`]' \
        '--disable-protocol;[`_choice_protocol`]' \
        '--elastic-mapping-filter;*,[`_choice_protocol`]' \
        '--enable-protocol;[`_choice_protocol`]' \
        '--export-objects;[`_choice_export_objects`]' \
        '--interface;[`_module_os_network_interface`]' \
        '--linktype;[`_choice_linktype`]' \
        '--read-file(<file>)' \
        '--ring-buffer;[`_choice_ring_buffer`]' \
        '-E;[`_choice_output_option`]' \
        '-F;[`_choice_file_type`]' \
        '-G;[`_choice_report`]' \
        '-K(<file>)' \
        '-X;[`_choice_extension_option`]' \
        '-d;[`_choice_decode`]' \
        '-z;*,[`_choice_statistic`]' \
    
}

_choice_linktype() {
    tshark $(_argc_util_param_select_options --network) -L 2>/dev/null | \
    sed -n 's/^  \(\S\+\) (\(.*\))$/\1 \t\2/p'
}

_choice_autostop() {
    cat <<-'EOF' | sed 's/:/:\x00\t/'
duration:stop after NUM seconds
filesize:stop this file after NUM KB
files:stop after NUM files
packets:stop after NUM packets
EOF
}

_choice_ring_buffer() {
    cat <<-'EOF' | sed 's/:/:\x00\t/'
duration:switch to next file after NUM secs
filesize:switch to next file after NUM KB
files:ringbuffer: replace after NUM files
packets:switch to next file after NUM packets
interval:switch to next file when the time is an exact multiple of NUM secs
EOF
}

_choice_decode() {
    _argc_util_comp_kv ==
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_selector | _argc_util_transform suffix=== nospace
    else
        _argc_util_mode_parts , "$argc__kv_filter"  "$argc__kv_prefix"
        if [[ -n "$argc__parts_local_prefix" ]]; then
            _choice_protocol
        fi
    fi
}

_choice_protocol() {
    tshark -G protocols | gawk -F'\t' '{if (NF>2) {value=$3} else {value=$2}; print value "\t" $1}'
}

_choice_file_type() {
    tshark -F 2>&1  | sed -e 's/    \(\S\+\) - /\1\t/p'
}

_choice_output_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
bom=y,n;;print a UTF-8 BOM
header=y,n;;switch headers on and off
separator=/t,/s;;select tab, space, printable character as separator
occurrence=f,l,a;;print first, last or all occurrences of each field
aggregator=/s;;select comma, space, printable character as aggregator
quote=d,s,n;;select double, single, no quotes for values
EOF
}

_choice_extension_option() {
    cat <<-'EOF' | _argc_util_comp_kv :
lua_script=__argc_value=file;;tells TShark to load the given script in addition to the default
read_format=`_choice_read_format`;;tells TShark to use the given file format to read in the file
EOF
}

_choice_statistic() {
    tshark -z help 2>&1 | tail -n +2 
}

_choice_export_objects() {
    printf "%s,\x00\n" dicom http imf smb tftp
}

_choice_report() {
    tshark -G help | sed -n '/^\s*-G/ s/^\s*-G \(\S\+\)\s*\(.*\)/\1\t\2/p'
}

_choice_read_format() {
    tshark -X read_format: 2>&1 | tail -n +3 | sed -e 's/ - /\t/' -e 's/^\s*//'
}

_choice_selector() {
    tshark -d . 2>&1 | sed -n 's/\t\(\S\+\) \(.*\)/\1\t\2/p'
}
