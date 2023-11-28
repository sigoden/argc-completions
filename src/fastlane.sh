_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help 2>/dev/null | \
        _patch_help_fix_wrap | \
        sed \
            -e 's/: (\* default)//' \
            -e 's/\* Run/  Run/' \
            -e '/Aliases:/,/^\s*$/ d' \

    else
        $@ --help 2>/dev/null | \
        sed \
            -e '/^\s*-/ s/\(-\S\+\) \([A-Z]\{2,\}\S\+\) \([A-Z][a-z]\|[a-z]\)/\1 \2  \3/' \

    fi
}

_patch_table() {
    if [[ "$*" == "fastlane" ]]; then
        _patch_table_edit_arguments ';;' 'lane;[`_choice_lane`]'

    elif [[ "$*" == "fastlane actions" ]]; then
        _patch_table_edit_options \
            '--platform;[ios|android|mac]' \

    elif [[ "$*" == "fastlane trigger" ]]; then
        _patch_table_edit_arguments 'lane;[`_choice_lane`]'

    else
        cat
    fi
}

_choice_lane() {
    if [[ -e "Fastfile" ]]; then
        file="Fastfile"
    elif [[ -e "fastlane/Fastfile" ]]; then
        file="fastlane/Fastfile"
    elif [[ -e ".fastlane/Fastfile" ]]; then
        file=".fastlane/Fastfile"
    else
        return
    fi
    sed -n 's/^  lane \+:\(\S\+\).*$/\1/p' "$file"
}
