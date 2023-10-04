_patch_help() {
    $@ --more-help
}

_patch_table() {
    _patch_table_edit_options \
        '--app-proto;[`_choice_proto`]' \
        '--starttls-proto;[`_choice_proto`]' \

}

_choice_proto() {
    printf "%s\n" https ftp smtp imap ldap xmpp lmtp pop3 nntp sieve postgres
}
