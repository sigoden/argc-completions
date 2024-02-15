_patch_help() {
    $@ --help 2>/dev/null | \
    sed \
        -e 's/^\t\(\S\)/\1/' \
        -e '/^\s*-/ s/\[--[^[]*\]//' \
        -e '/^\s*-/ s/\s\+\[yes|no\]/ {yes|no}    /' \

}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--channel(<value>)' \
            '--email(<value>)' \
            '--filter(<value>)' \
            '--infile(<file>)' \
            '--invite-code(<value>)' \
            '--key(<file>)' \
            '--message(<value>)' \
            '--outfile(<file>)' \
            '--paperkey(<value>)' \
            '--phone(<value>)' \
            '--relative-time(<value>)' \
            '--reltime(<value>)' \
            '--signed-by(<value>)' \
            '--team(<value>)' \
            '--team-name(<value>)' \
            '--time(<value>)' \
            '--token(<value>)' \
            '--type(<value>)' \
            '--user(<value>)' \
            '--username(<value>)' \
            '-m(<value>)' \
    )"

    if [[ "$*" == "keybase chat delete-history" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--age(<value>)' \
        
    elif [[ "$*" == "keybase chat forward-message" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--dst-channel(<value>)' \
            '--src-channel(<value>)' \

    elif [[ "$*" == "keybase chat upload" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--title(<value>)' \

    elif [[ "$*" == "keybase decrypt" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--encryptor-outfile(<file>)' \

    elif [[ "$*" == "keybase fs reset" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--id(<value>)' \

    elif [[ "$*" == "keybase git lfs-config" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--path(<path>)' \
            '--repo(<value>)' \

    elif [[ "$*" == "keybase log send" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--feedback(<value>)' \

    elif [[ "$*" == "keybase login" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--devicename(<value>)' \

    elif [[ "$*" == "keybase pgp gen" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--pgp-uid(<value>)' \

    elif [[ "$*" == "keybase signup" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--invite-code(<value>)' \
            '--set-password(<value>)' \

    elif [[ "$*" == "keybase team add-members-bulk" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--admins(<value>...)' \
            '--bots(<value>...)' \
            '--owners(<value>...)' \
            '--readers(<value>...)' \
            '--writers(<value>...)' \

    elif [[ "$*" == "keybase team generate-invite-token" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--fullname(<value>)' \
            '--number(<value>)' \

    elif [[ "$*" == "keybase team remove-member" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--invite-id(<value>)' \

    elif [[ "$*" == "keybase team settings" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--description(<value>)' \

    elif [[ "$*" == "keybase version" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--format(<value>)' \

    elif [[ "$*" == "keybase service" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--auto-forked(<value>)' \
            '--chdir(<dir>)' \
            '--label(<value>)' \
            '--oneshot-paperkey(<value>)' \
            '--oneshot-username(<value>)' \
            '--watchdog-forked(<value>)' \

    else
        echo "$table"
    fi

}
