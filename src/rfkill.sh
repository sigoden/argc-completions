_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@
    fi
}

_patch_table() {
    if [[ "$*" == "rfkill" ]]; then
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--output;*,[`_choice_column`]' \
    
    elif [[ "$*" == "rfkill list" ]] \
      || [[ "$*" == "rfkill block" ]] \
      || [[ "$*" == "rfkill unblock" ]] \
      || [[ "$*" == "rfkill toggle" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'identifier;*[`_choice_identifier`]'

    else
        cat
    fi
}

_choice_column() {
    cat <<-'EOF'
DEVICE	kernel device name
ID	device identifier value
TYPE	device type name that can be used as identifier
TYPE-DESC	device type description
SOFT	status of software block
HARD	status of hardware block
EOF
}

_choice_identifier() {
    printf "%s\n" all wifi wlan bluetooth uwb ultrawideband wimax wwan gps fm
    rfkill list | sed -n 's/^\(\S\+\): \(\S\+\): \(.*\)$/\1\t\3/p'
}
