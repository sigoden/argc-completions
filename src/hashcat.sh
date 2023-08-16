_patch_help() { 
    $@ --help | \
    sed -n -e '/^- \[ Options \] -/,/^- \[/ {//!p}' | \
    sed -n '/^\s*-/ p' | \
    sed \
        -e 's/|[^\|]*$//' \
        -e 's/\s*|\s*|/   /' \
        -e 's/\s*|\s*\(\S\+\)\s*|/ <\1>   /' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--attack-mode;[`_choice_attack_mode`]' \
        '--brain-client-features;[`_choice_brain_client_features`]' \
        '--brain-host;[`_module_os_hostname`]' \
        '--debug-mode;[`_choice_debug_mode`]' \
        '--hash-type;[`_choice_hash_mode`]' \
        '--opencl-device-types;*,[`_choice_device_type`]' \
        '--outfile-format;*,[`_choice_outfile_format`]' \
        '--workload-profile;[`_choice_workload_profile`]' \

}

_choice_hash_mode() {
    _helper_extract_table "Hash modes"
}

_choice_attack_mode() {
    _helper_extract_table "Attack Modes"
}

_choice_outfile_format() {
    _helper_extract_table "Outfile Formats"
}

_choice_debug_mode() {
    _helper_extract_table "Rule Debugging Modes"
}

_choice_device_type() {
    _helper_extract_table "OpenCL Device Types"
}

_choice_workload_profile() {
    _helper_extract_table "Workload Profiles"
}

_choice_brain_client_features() {
    _helper_extract_table "Brain Client Features"
}

_helper_extract_table() {
    hashcat --help | \
    gawk -v "NAME=$1" '{
        if (index($0, "- [ ")) {
            if (index($0, NAME) > 0) {
                enterTable = 1
            } else {
                enterTable = 0
            }
        } else if (enterTable > 0) {
            if (enterTable == 1 && match($0, /=\+=/)) {
                enterTable = 2
            } else if (enterTable == 2 && !match($0, /^\s*$/)) {
                gsub(/^[[:space:]]+|[[:space:]]+$/,"", $0)
                sub(/\s*\|\s*/, "\t", $0)
                gsub(/\s*\|\s*/, " • ", $0)
                print $0
            }
        }
    }'
}
