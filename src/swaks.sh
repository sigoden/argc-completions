_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e 's/ (Arg-Required, From-Prompt)//' \
        -e 's/\[ 1 | 2 | 3 \]/{1|2|3}/' \
        -e 's/--h-<header> <data>/--h-<header-data>/' \
        -e 's/^           -/      -/' \

}

_patch_table() {
    _patch_table_dedup_options \
        ';;' \
        '-g' \
    | \
    _patch_table_edit_options \
        '--auth;[`_choice_auth`]' \
        '--auth-optional;[`_choice_auth`]' \
        '--auth-optional-strict;[`_choice_auth`]' \
        '--port;[25|465|587]' \
        '--protocol;[`_choice_protocol`]' \
        '--quit-after;[`_choice_quit_after`]' \
        '--tls-protocol;[sslv2|sslv3|tlsv1|tlsv1_1|tlsv1_2]' \

}

_choice_quit_after() {
    cat <<-'EOF'
CONNECT	Terminate the session after receiving the greeting banner from the target.
BANNER	Terminate the session after receiving the greeting banner from the target.
FIRST-HELO	In a STARTTLS (but not tls-on-connect) session, terminate the transaction after the first of two HELOs.
FIRST-EHLO	In a STARTTLS (but not tls-on-connect) session, terminate the transaction after the first of two HELOs.
FIRST-LHLO	In a STARTTLS (but not tls-on-connect) session, terminate the transaction after the first of two HELOs.
XCLIENT	Quit after XCLIENT is sent.
STARTTLS	Quit the transaction immediately following TLS negotiation.
TLS	Quit the transaction immediately following TLS negotiation.
HELO	In a STARTTLS or XCLIENT session, quit after the second HELO.
EHLO	In a STARTTLS or XCLIENT session, quit after the second HELO.
LHLO	In a STARTTLS or XCLIENT session, quit after the second HELO.
AUTH	Quit after authentication.
MAIL	Quit after MAIL FROM: is sent.
FROM	Quit after MAIL FROM: is sent.
RCPT	Quit after RCPT TO: is sent.
TO	Quit after RCPT TO: is sent.
EOF
}

_choice_protocol() {
    cat <<-'EOF'
SMTP	HELO 25
SSMTP	EHLO 465
SSMTPA	EHLO 465 authenticated
SMTPS	HELO 465
ESMTP	EHLO 25
ESMTPA	EHLO 25 authenticated
ESMTPS	EHLO STARTTLS 25
ESMTPSA	EHLO STARTTLS 25 authenticated
EOF
}

_choice_auth() {
    printf "%s\n" LOGIN PLAIN CRAM-MD5 DIGEST-MD5 CRAM-SHA1 NTLM SPA MSN
}
