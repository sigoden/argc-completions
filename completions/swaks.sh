#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --config <config-file>                   This option provides a path to a specific configuration file to be used.
# @option -s --server <<target-server>[:<port>]>   Explicitly tell Swaks to use network sockets and specify the hostname or IP address to which to connect, or prompt if no argument is given.
# @option -p --port[25|465|587] <port>             Specify which TCP port on the target is to be used, or prompt if no argument is listed.
# @option -li <<local-interface>[:<port>]>         Use argument as the local interface for the outgoing SMTP connection, or prompt user if no argument given.
# @option --local-interface <<local-interface>[:<port>]>  Use argument as the local interface for the outgoing SMTP connection, or prompt user if no argument given.
# @option -lp <port>                               Specify the outgoing port from which to originate the transaction.
# @option --local-port <port>                      Specify the outgoing port from which to originate the transaction.
# @option --lport <port>                           Specify the outgoing port from which to originate the transaction.
# @option --copy-routing <domain>                  The argument is interpreted as the domain part of an email address and it is used to find the target server using the same logic that would be used to look up the target server for a recipient email address.
# @flag -4                                         Force IPv4 or IPv6.
# @flag -6                                         Force IPv4 or IPv6.
# @option --socket <socket-file>                   This option takes as its argument a UNIX-domain socket file.
# @option --pipe <command-and-arguments>           Provide a process name and arguments to the process.
# @option -t --to <<email-address>[,<email-address>[,...]]>  Tells Swaks to use argument(s) as the envelope-recipient for the email, or prompt for recipient if no argument provided.
# @option -f --from <email-address>                Use argument as envelope-sender for email, or prompt user if no argument specified.
# @option -h <helo-string>                         String to use as argument to HELO/EHLO/LHLO command, or prompt user if no argument is specified.
# @option --ehlo <helo-string>                     String to use as argument to HELO/EHLO/LHLO command, or prompt user if no argument is specified.
# @option --lhlo <helo-string>                     String to use as argument to HELO/EHLO/LHLO command, or prompt user if no argument is specified.
# @option --helo <helo-string>                     String to use as argument to HELO/EHLO/LHLO command, or prompt user if no argument is specified.
# @option -q[`_choice_quit_after`] <stop-point>    Point at which the transaction should be stopped.
# @option --quit[`_choice_quit_after`] <stop-point>  Point at which the transaction should be stopped.
# @option --quit-after[`_choice_quit_after`] <stop-point>  Point at which the transaction should be stopped.
# @option --da <stop-point>                        The option is similar to "--quit-after", but instead of trying to cleanly shut down the session it simply terminates the session.
# @option --drop-after <stop-point>                The option is similar to "--quit-after", but instead of trying to cleanly shut down the session it simply terminates the session.
# @option --das <stop-point>                       This option is similar to "--drop-after", but instead of dropping the connection after reading a response to the stop-point, it drops the connection immediately after sending stop-point.
# @option --drop-after-send <stop-point>           This option is similar to "--drop-after", but instead of dropping the connection after reading a response to the stop-point, it drops the connection immediately after sending stop-point.
# @option --timeout <time>                         Use argument as the SMTP transaction timeout, or prompt user if no argument given.
# @option --protocol[`_choice_protocol`] <protocol>  Specify which protocol to use in the transaction.
# @flag --pipeline                                 If the remote server supports it, attempt SMTP PIPELINING (RFC 2920).
# @flag --prdr                                     If the server supports it, attempt Per-Recipient Data Response (PRDR) (<https://tools.ietf.org/html/draft-hall-prdr-00.txt>).
# @flag --force-getpwuid                           Tell Swaks to use the getpwuid method of finding the default sender local-part instead of trying $LOGNAME first.
# @flag -tls                                       Require connection to use STARTTLS.
# @flag -tlso                                      Attempt to use STARTTLS if available, continue with normal transaction if TLS was unable to be negotiated for any reason.
# @flag --tls-optional                             Attempt to use STARTTLS if available, continue with normal transaction if TLS was unable to be negotiated for any reason.
# @flag -tlsos                                     Attempt to use STARTTLS if available.
# @flag --tls-optional-strict                      Attempt to use STARTTLS if available.
# @flag -tlsc                                      Initiate a TLS connection immediately on connection.
# @flag --tls-on-connect                           Initiate a TLS connection immediately on connection.
# @option -tlsp[sslv2|sslv3|tlsv1|tlsv1_1|tlsv1_2] <tls-version-specification>  Specify which protocols to use (or not use) when negotiating TLS.
# @option --tls-protocol[sslv2|sslv3|tlsv1|tlsv1_1|tlsv1_2] <tls-version-specification>  Specify which protocols to use (or not use) when negotiating TLS.
# @option --tls-cipher <cipher-string>             The argument to this option is passed to the underlying OpenSSL library to set the list of acceptable ciphers to the be used for the connection.
# @flag --tls-verify                               Tell Swaks to attempt to verify the server's certificate.
# @option --tls-ca-path <ca-location>              Specify an alternate location for CA information for verifying server certificates.
# @option --tls-cert <cert-file>                   Provide a path to a file containing the local certificate Swaks should use if TLS is negotiated.
# @option --tls-key <key-file>                     Provide a path to a file containing the local private key Swaks should use if TLS is negotiated.
# @option --tls-get-peer-cert <output-file>        Get a copy of the TLS peer's certificate.
# @option --tls-sni <sni-string>                   Specify the Server Name Indication field to send when the TLS connection is initiated.
# @option -a --auth[`_choice_auth`] <<auth-type>[,<auth-type>[,...]]>  Require Swaks to authenticate.
# @option -ao[`_choice_auth`] <<auth-type>[,<auth-type>[,...]]>  This option behaves identically to "--auth" except that it requests authentication rather than requiring it.
# @option --auth-optional[`_choice_auth`] <<auth-type>[,<auth-type>[,...]]>  This option behaves identically to "--auth" except that it requests authentication rather than requiring it.
# @option -aos[`_choice_auth`] <<auth-type>[,<auth-type>[,...]]>  This option is a compromise between "--auth" and "--auth-optional".
# @option --auth-optional-strict[`_choice_auth`] <<auth-type>[,<auth-type>[,...]]>  This option is a compromise between "--auth" and "--auth-optional".
# @option -au <username>                           Provide the username to be used for authentication.
# @option --auth-user <username>                   Provide the username to be used for authentication.
# @option -ap[Arg-Required|From-Prompt|Sensitive] <password>  Provide the password to be used for authentication.
# @option --auth-password[Arg-Required|From-Prompt|Sensitive] <password>  Provide the password to be used for authentication.
# @option -ae <<key-value-pair>[,<key-value-pair>[,...]]>  Some of the authentication types allow extra information to be included in the authentication process.
# @option --auth-extra <<key-value-pair>[,<key-value-pair>[,...]]>  Some of the authentication types allow extra information to be included in the authentication process.
# @option -am <<key-value-pair>[,<key-value-pair>[,...]]>  Provides a way to map alternate names onto base authentication types.
# @option --auth-map <<key-value-pair>[,<key-value-pair>[,...]]>  Provides a way to map alternate names onto base authentication types.
# @flag -apt                                       Instead of showing AUTH strings base64 encoded as they are transmitted, translate them to plaintext before printing on screen.
# @flag --auth-plaintext                           Instead of showing AUTH strings base64 encoded as they are transmitted, translate them to plaintext before printing on screen.
# @option -ahp <replacement-string>                If this option is specified, any time a readable password would be printed to the terminal (specifically AUTH PLAIN and AUTH LOGIN) the password is replaced with the string 'PROVIDED_BUT_REMOVED' (or the contents of <replacement-string> if provided).
# @option --auth-hide-password <replacement-string>  If this option is specified, any time a readable password would be printed to the terminal (specifically AUTH PLAIN and AUTH LOGIN) the password is replaced with the string 'PROVIDED_BUT_REMOVED' (or the contents of <replacement-string> if provided).
# @option --xclient-addr <string>
# @option --xclient-name <string>
# @option --xclient-port <string>
# @option --xclient-proto <string>
# @option --xclient-destaddr <string>
# @option --xclient-destport <string>
# @option --xclient-helo <string>
# @option --xclient-login <string>
# @option --xclient-reverse-name <string>          These options specify XCLIENT attributes that should be sent to the target server.
# @flag --xclient-delim                            When this option is specified, it indicates a break in XCLIENT attributes to be sent.
# @option --xclient <string>                       This is the "free form" XCLIENT option.
# @flag --xclient-no-verify                        Do not enforce the requirement that an XCLIENT attribute must be advertised by the server in order for Swaks to send it in an XCLIENT command.
# @flag --xclient-before-starttls                  If Swaks is configured to attempt both XCLIENT and STARTTLS, it will do STARTTLS first.
# @flag --xclient-optional
# @flag --xclient-optional-strict                  In normal operation, setting one of the "--xclient*" options will require a successful XCLIENT transaction to take place in order to proceed (that is, XCLIENT needs to be advertised, all the user-requested attributes need to have been advertised, and the server needs to have accepted Swaks' XCLIENT request).
# @option --proxy-version <1 | 2>                  Whether to use version 1 (human readable) or version 2 (binary) of the Proxy protocol.
# @option --proxy <string>                         If this option is used, its argument is passed unchanged after the "PROXY " portion (or the 12-byte protocol header for version 2) of the Proxy exchange.
# @option --proxy-family <string>                  For version 1, specifies both the address family and transport protocol.
# @option --proxy-protocol <string>                For version 2, specifies the transport protocol.
# @option --proxy-command <string>                 For version 2, specifies the transport protocol.
# @option --proxy-source <string>                  Specify the source address of the proxied connection.
# @option --proxy-source-port <string>             Specify the source port of the proxied connection.
# @option --proxy-dest <string>                    Specify the destination address of the proxied connection.
# @option --proxy-dest-port <string>               Specify the destination port of the proxied connection.
# @option -d --data <data-portion>                 Use argument as the entire contents of DATA.
# @option -dab <<section>[,<section>[,...]]>       If "--dump-as-body" is used and no other option is used to change the default body of the message, the body is replaced with output similar to the output of what is provided by "--dump".
# @option --dump-as-body <<section>[,<section>[,...]]>  If "--dump-as-body" is used and no other option is used to change the default body of the message, the body is replaced with output similar to the output of what is provided by "--dump".
# @flag -dabsp                                     Cause "--dump-as-body" to include plaintext passwords.
# @flag --dump-as-body-shows-password              Cause "--dump-as-body" to include plaintext passwords.
# @option --body[Arg-Required|From-Prompt|From-File] <body-specification>  Specify the body of the email.
# @option --attach[Arg-Required|From-File] <attachment-specification>  When one or more "--attach" option is supplied, the message is changed into a multipart/mixed MIME message.
# @option --attach-body[Arg-Required|From-File] <body-specification>  This is a variation on "--attach" that is specifically for the body part of the email.
# @option --attach-type <mime-type>                By default, content that gets MIME attached to a message with the "--attach" option is encoded as application/octet-stream (except for the body, which is text/plain by default).
# @option --attach-name <name>                     This option sets the filename that will be included in the MIME part created for the next "--attach" option.
# @option -ah <header>                             This option allows headers to be added to the DATA.
# @option --add-header <header>                    This option allows headers to be added to the DATA.
# @option --header <header-data>                   These options allow a way to change headers that already exist in the DATA.
# @option --h- <header-data>                       These options allow a way to change headers that already exist in the DATA.
# @option -g[Arg-None|Deprecated]                  This option is a direct alias to "--data -" (read DATA from "STDIN").
# @flag --no-data-fixup                            This option forces Swaks to do no massaging of the DATA portion of the email.
# @flag -ndf                                       This option forces Swaks to do no massaging of the DATA portion of the email.
# @flag --no-strip-from                            Don't strip the From_ line from the DATA portion, if present.
# @flag -nsf                                       Don't strip the From_ line from the DATA portion, if present.
# @flag -n --suppress-data                         Summarizes the DATA portion of the SMTP transaction instead of printing every line.
# @option -stl <i>                                 Display time lapse between send/receive pairs.
# @option --show-time-lapse <i>                    Display time lapse between send/receive pairs.
# @flag -nih                                       Don't display the transaction hint for informational transactions.
# @flag --no-info-hints                            Don't display the transaction hint for informational transactions.
# @flag -nsh
# @flag --no-send-hints
# @flag -nrh
# @flag --no-receive-hints
# @flag -nth                                       "--no-send-hints" and "--no-receive-hints" suppress the transaction hints from send and receive lines, respectively.
# @flag --no-hints                                 "--no-send-hints" and "--no-receive-hints" suppress the transaction hints from send and receive lines, respectively.
# @flag -raw                                       This option will print a hex dump of raw data sent and received by Swaks.
# @flag --show-raw-text                            This option will print a hex dump of raw data sent and received by Swaks.
# @option --output <file-path>
# @option --output-file <file-path>
# @option --output-file-stdout <file-path>
# @option --output-file-stderr <file-path>         These options allow the user to send output to files instead of "STDOUT"/"STDERR".
# @flag -pp                                        Don't echo user input on prompts that are potentially sensitive (right now only authentication password).
# @flag --protect-prompt                           Don't echo user input on prompts that are potentially sensitive (right now only authentication password).
# @flag -hr                                        Don't display lines sent from the remote server being received by Swaks.
# @flag --hide-receive                             Don't display lines sent from the remote server being received by Swaks.
# @flag -hs                                        Don't display lines being sent by Swaks to the remote server.
# @flag --hide-send                                Don't display lines being sent by Swaks to the remote server.
# @flag -hi                                        Don't display non-error informational lines from Swaks itself.
# @flag --hide-informational                       Don't display non-error informational lines from Swaks itself.
# @flag -ha                                        Do not display any content to the terminal.
# @flag --hide-all                                 Do not display any content to the terminal.
# @option -S --silent[1|2|3]                       Cause Swaks to be silent.
# @flag --support                                  Print capabilities and exit.
# @flag --dump-mail                                Cause Swaks to process all options to generate the message it would send, then print that message to "STDOUT" instead of sending it.
# @option --dump <<section>[,<section>[,...]]>     This option causes Swaks to print the results of option processing, immediately before mail would have been sent.
# @flag --help                                     Display this help information and exit.
# @flag --version                                  Display version information and exit.

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

command eval "$(argc --argc-eval "$0" "$@")"