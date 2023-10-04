_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e 's/(\(since\|Keyword\)[^)]\+)//' \
        -e '/^\s*-/ s/ | --/, --/g' \

}

_patch_table() {
    _patch_table_dedup_options \
        ';;' \
        '--sslcertck' \
    | \
    _patch_table_edit_options \
        '--protocol;[`_choice_protocol`]' \
        '--sslproto;[`_choice_sslproto`]' \

}

_choice_protocol() {
    cat <<-'EOF'
AUTO;;Tries IMAP, POP3, and POP2 (skipping any of these for which support has not been compiled in).
POP2;;Post Office Protocol 2 (legacy, to be removed from future release)
POP3;;Post Office Protocol 3
APOP;;Use POP3 with old-fashioned MD5-challenge authentication.
RPOP;;Use POP3 with RPOP authentication.
KPOP;;Use POP3 with Kerberos V4 authentication on port 1109.
SDPS;;Use POP3 with Demon Internet's SDPS extensions.
IMAP;;IMAP2bis, IMAP4, or IMAP4rev1 (fetchmail automatically detects their capabilities).
ETRN;;Use the ESMTP ETRN option.
ODMR;;Use the On-Demand Mail Relay ESMTP profile.
EOF
}

_choice_sslproto() {
    printf "%s\n" TLS1.2+ auto ''  SSL23 SSL3 SSL3+ TLS1 TLS1+ TLS1.1 TLS1.1+ TLS1.2 TLS1.3 TLS1.3+
}
