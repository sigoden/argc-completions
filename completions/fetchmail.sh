#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? --help                                Displays option help.
# @flag -V --version                             Displays the version information for your copy of fetchmail.
# @flag -c --check                               Return a status code to indicate whether there is mail waiting, without actually fetching or deleting mail (see EXIT CODES below).
# @flag -s --silent                              Silent mode.
# @flag -v --verbose                             Verbose mode.
# @flag --nosoftbounce                           Hard bounce mode.
# @flag --softbounce                             Soft bounce mode.
# @flag -a                                       Retrieve both old (seen) and new messages from the mail server.
# @flag --all                                    Retrieve both old (seen) and new messages from the mail server.
# @flag --fetchall                               Retrieve both old (seen) and new messages from the mail server.
# @flag -k --keep                                Keep retrieved messages on the remote mail server.
# @flag -K --nokeep                              Delete retrieved messages from the remote mail server.
# @flag -F --flush                               POP3/IMAP only.
# @flag --limitflush                             POP3/IMAP only, since version 6.3.0.
# @option -p[`_choice_protocol`] <proto>         Specify the protocol to use when communicating with the remote mail server.
# @option --proto[`_choice_protocol`] <proto>    Specify the protocol to use when communicating with the remote mail server.
# @option --protocol[`_choice_protocol`] <proto>  Specify the protocol to use when communicating with the remote mail server.
# @flag -U --uidl                                Force UIDL use (effective only with POP3).
# @flag --idle                                   Enable IDLE use (effective only with IMAP).
# @option -P --service <servicename>             Since version 6.3.0.
# @option --port <portnumber>                    Obsolete version of --service that does not take service names.
# @option --principal <principal>                The principal option permits you to specify a service principal for mutual authentication.
# @option -t --timeout <seconds>                 The timeout option allows you to set a server-non-response timeout in seconds.
# @option --plugin <command>                     The plugin option allows you to use an external program to establish the TCP connection.
# @option --plugout <command>                    Identical to the plugin option above, but this one is used for the SMTP connections.
# @option -r --folder <name>                     Causes a specified non-default mail folder on the mail server (or comma-separated list of folders) to be retrieved.
# @flag --tracepolls                             Tell fetchmail to poll trace information in the form 'polling account %s' and 'folder %s' to the Received line it generates, where the %s parts are replaced by the user's remote name, the poll label, and the folder (mailbox) where available (the Received header also normally includes the server's true name).
# @flag --ssl                                    Causes the connection to the mail server to be encrypted via SSL, by negotiating SSL directly after connecting (called SSL-wrapped mode, or Implicit TLS by RFC-8314).
# @option --sslcert <name>                       For certificate-based client authentication.
# @option --sslkey <name>                        Specifies the file name of the client side private SSL key.
# @option --sslproto[`_choice_sslproto`] <value>  This option has a dual use, out of historic fetchmail behaviour.
# @flag --sslcertck                              --sslcertck causes fetchmail to require that SSL/TLS be used and disconnect unless it can successfully negotiate SSL or TLS, or if it cannot successfully verify and validate the certificate and follow it to a trust anchor (or trusted root certificate).
# @flag --nosslcertck                            The opposite of --sslcertck, this is a discouraged option.
# @option --sslcertfile <file>                   Sets the file fetchmail uses to look up local certificates.
# @option --sslcertpath <directory>              Sets the directory fetchmail uses to look up local certificates.
# @option --sslcommonname <common name>          Use of this option is discouraged.
# @option --sslfingerprint <fingerprint>         Specify the fingerprint of the server key (an MD5 hash of the key) in hexadecimal notation with colons separating groups of two digits.
# @option -S --smtphost <hosts>                  Specify a hunt list of hosts to forward mail to (one or more host names, comma-separated).
# @option --fetchdomains <hosts>                 In ETRN or ODMR mode, this option specifies the list of domains the server should ship mail for once the connection is turned around.
# @option -D --smtpaddress <domain>              Specify the domain to be appended to addresses in RCPT TO lines shipped to SMTP.
# @option --smtpname <user@domain>               Specify the domain and user to be put in RCPT TO lines shipped to SMTP.
# @option -Z --antispam <nnn[ nnn]...>           Specifies the list of numeric SMTP errors that are to be interpreted as a spam-block response from the listener.
# @option -m --mda <command>                     This option lets fetchmail use a Message or Local Delivery Agent (MDA or LDA) directly, rather than forward via SMTP or LMTP.
# @flag --lmtp                                   Cause delivery via LMTP (Local Mail Transfer Protocol).
# @option --bsmtp <filename>                     Append fetched mail to a BSMTP file.
# @option --bad-header[reject|accept]            Specify how fetchmail is supposed to treat messages with bad headers, i.e., headers with bad syntax.
# @option -l --limit <maxbytes>                  Takes a maximum octet size argument, where 0 is the default and also the special value designating "no limit".
# @option -w --warnings <interval>               Takes an interval in seconds.
# @option -b --batchlimit <count>                Specify the maximum number of messages that will be shipped to an SMTP listener before the connection is deliberately torn down and rebuilt (defaults to 0, meaning no limit).
# @option -B --fetchlimit <number>               Limit the number of messages accepted from a given server in a single poll.
# @option --fetchsizelimit <number>              Limit the number of sizes of messages accepted from a given server in a single transaction.
# @option --fastuidl <number>                    Do a binary instead of linear search for the first unseen UID.
# @option -e --expunge <count>                   Arrange for deletions to be made final after a given number of messages.
# @option -u <name>                              Specifies the user identification to be used when logging in to the mail server.
# @option --user <name>                          Specifies the user identification to be used when logging in to the mail server.
# @option --username <name>                      Specifies the user identification to be used when logging in to the mail server.
# @option -I --interface <specification>         Require that a specific interface device be up and have a specific local or remote IPv4 (IPv6 is not supported by this option yet) address (or range) before polling.
# @option -M --monitor <interface>               Daemon mode can cause transient links which are automatically taken down after a period of inactivity (e.g., PPP links) to remain up indefinitely.
# @option --auth <type>                          This option permits you to specify an authentication type (see USER AUTHENTICATION below for details).
# @option -f --fetchmailrc <pathname>            Specify a non-default name for the ~/.fetchmailrc run control file.
# @option -i --idfile <pathname>                 Specify an alternate name for the .fetchids file used to save message UIDs.
# @option --pidfile <pathname>                   Override the default location of the PID file that is used as a lock file.
# @flag -n --norewrite                           Normally, fetchmail edits RFC-822 address headers (To, From, Cc, Bcc, and Reply-To) in fetched mail so that any mail IDs local to the server are expanded to full addresses (@ and the mail server host name are appended).
# @option -E --envelope <line>                   In the configuration file, an enhanced syntax is used: envelope [<count>] <line>
# @option -Q --qvirtual <prefix>                 The string prefix assigned to this option will be removed from the user name found in the header specified with the envelope option (before doing multidrop name mapping or localdomain checking, if either is applicable).
# @flag --configdump                             Parse the ~/.fetchmailrc file, interpret any command-line options specified, and dump a configuration report to standard output.
# @flag -y --yydebug                             Enables parser debugging, this option is meant to be used by developers only.
# @flag -T --netsec                              Removed before version 6.3.0, the required underlying inet6_apps library had been discontinued and is no longer available.
# @arg mailserver*

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

command eval "$(argc --argc-eval "$0" "$@")"