_patch_help() {
    $@ --help | \
    sed \
        -e 's%on/off%{on|off}%'

}

_patch_table() {
    _patch_table_dedup_options \
        ';;' \
        '--config' \
    | \
    _patch_table_edit_options \
        '--backend;[ascii|caca|chafa|jp2a|iterm2|off|sixel|tycat|w3m|kitty]' \
        '--caca;[`_choice_source`]' \
        '--chafa;[`_choice_source`]' \
        '--cpu_cores;[logical|physical|off]' \
        '--cpu_temp;[C|F|off]' \
        '--disable;[`_choice_infoname`]' \
        '--disk_show(<disk-path>...)' \
        '--disk_subtitle;[`_choice_disk_subtitle`]' \
        '--iterm2;[`_choice_source`]' \
        '--jp2a;[`_choice_source`]' \
        '--kitty;[`_choice_source`]' \
        '--memory_unit;[kib|mib|gib]' \
        '--pixterm;[`_choice_source`]' \
        '--pot;[`_choice_source`]' \
        '--sixel;[`_choice_source`]' \
        '--size;[auto|00px|00%|none]' \
        '--source;[`_choice_source`]' \
        '--speed_type;[current|min|max|bios|scaling_current|scaling_min|scaling_max]' \
        '--termpix;[`_choice_source`]' \
        '--tycat;[`_choice_source`]' \
        '--w3m;[`_choice_source`]' \
    | \
    _patch_table_edit_arguments ';;' 'func_name;[`_choice_infoname`]'
}

_choice_infoname() {
    printf "%s\n" os host kernel uptime packages shell term cpu gpu memory disk \
        battery resolution wm de theme wm_theme icons
}

_choice_disk_subtitle() {
    cat <<-'EOF'
name	shows the disk's name
mount	shows the disk's mount point
dir	shows the basename of the disks's path
none	shows only 'Disk' or the configured title
EOF
}

_choice_source() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" auto ascii wallpaper,
}
