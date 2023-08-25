#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --daemon                             run in daemon mode (background)
# @flag --server                             run in server mode (foreground)
# @flag --supervised                         run in supervised mode
# @flag -v --verbose                         verbose
# @flag -q --quiet                           be somewhat more quiet
# @flag -s --sh                              sh-style command output
# @flag -c --csh                             csh-style command output
# @option --options <FILE>                   read options from FILE
# @flag --no-detach                          do not detach from the console
# @flag --log-file                           use a log file for the server
# @option --pinentry-program <PGM>           use PGM as the PIN-Entry program
# @option --scdaemon-program <PGM>           use PGM as the SCdaemon program
# @flag --disable-scdaemon                   do not use the SCdaemon
# @option --extra-socket <NAME>              accept some commands via NAME
# @flag --keep-tty                           ignore requests to change the TTY
# @flag --keep-display                       ignore requests to change the X display
# @option --default-cache-ttl <N>            expire cached PINs after N seconds
# @flag --ignore-cache-for-signing           do not use the PIN cache when signing
# @flag --no-allow-external-cache            disallow the use of an external password cache
# @flag --no-allow-mark-trusted              disallow clients to mark keys as "trusted"
# @flag --allow-preset-passphrase            allow presetting passphrase
# @flag --no-allow-loopback-pinentry         disallow caller to override the pinentry
# @flag --allow-emacs-pinentry               allow passphrase to be prompted through Emacs
# @flag --enable-ssh-support                 enable ssh support
# @option --ssh-fingerprint-digest <ALGO>    use ALGO to show ssh fingerprints

command eval "$(argc --argc-eval "$0" "$@")"