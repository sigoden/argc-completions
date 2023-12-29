#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -y --yes                   Always answer yes to yes/no questions (default: false)
# @flag -c --clip                  Copy the password value into the clipboard (default: false)
# @flag -C --alsoclip              Copy the password and show everything (default: false)
# @flag --qr                       Print the password as a QR Code (default: false)
# @flag -u                         Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag -f                         Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag --unsafe                   Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag --force                    Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag -o --password              Display only the password.
# @option -r --revision <value>    Show a past revision.
# @flag -n --noparsing             Do not parse the output.
# @flag --nosync                   Disable auto-sync (default: false)
# @option --chars <value>          Print specific characters from the secret
# @flag -h --help                  show help
# @flag -v --version               print the version

# {{ gopass alias
# @cmd Print domain aliases
# @flag -h --help    show help
alias() {
    :;
}
# }} gopass alias

# {{ gopass audit
# @cmd Decrypt all secrets and scan for weak or leaked passwords
# @option --format <value>            Output format.
# @option -o --output-file <value>    Output filename.
# @option --template <value>          HTML template.
# @flag --failed                      Report only entries that failed validation.
# @flag -h --help                     show help
# @arg filter
audit() {
    :;
}
# }} gopass audit

# {{ gopass cat
# @cmd Decode and print content of a binary secret to stdout, or encode and insert from stdin
# @flag -h --help    show help
# @arg secret[`_choice_secret`]
cat_() {
    :;
}
# }} gopass cat

# {{ gopass clone
# @cmd Clone a password store from a git repository
# @option --path <value>       Path to clone the repo to
# @option --crypto <value>     Select crypto backend [age gpgcli plain]
# @option --storage <value>    Select storage backend [fossilfs gitfs]
# @flag --check-keys           Check for valid decryption keys.
# @flag -h --help              show help
# @arg git-repo
# @arg mount-point
clone() {
    :;
}
# }} gopass clone

# {{ gopass completion
# @cmd Bash and ZSH completion
# @flag -h --help    show help
completion() {
    :;
}

# {{{ gopass completion bash
# @cmd Source for auto completion in bash
# @flag -h --help    show help
completion::bash() {
    :;
}
# }}} gopass completion bash

# {{{ gopass completion zsh
# @cmd Source for auto completion in zsh
# @flag -h --help    show help
completion::zsh() {
    :;
}
# }}} gopass completion zsh

# {{{ gopass completion fish
# @cmd Source for auto completion in fish
# @flag -h --help    show help
completion::fish() {
    :;
}
# }}} gopass completion fish

# {{{ gopass completion openbsdksh
# @cmd Source for auto completion in OpenBSD's ksh
# @flag -h --help    show help
completion::openbsdksh() {
    :;
}
# }}} gopass completion openbsdksh
# }} gopass completion

# {{ gopass config
# @cmd Display and edit the configuration file
# @option --store <value>    Set options to a specific store
# @flag -h --help            show help
# @arg key
# @arg value
config() {
    :;
}
# }} gopass config

# {{ gopass copy
# @cmd Copy secrets from one location to another
# @alias cp
# @flag -f --force    Force to copy the secret and overwrite existing one (default: false)
# @flag -h --help     show help
# @arg from[`_choice_secret`]
# @arg to[`_choice_folder`]
copy() {
    :;
}
# }} gopass copy

# {{ gopass create
# @cmd Easy creation of new secrets
# @alias new
# @option -s --store <value>    Which store to use
# @flag -f --force              Force path selection (default: false)
# @flag -h --help               show help
# @arg secret[`_choice_secret`]
create() {
    :;
}
# }} gopass create

# {{ gopass delete
# @cmd Remove one or many secrets from the store
# @alias remove,rm
# @flag -r --recursive    Recursive delete files and folders (default: false)
# @flag -f --force        Force to delete the secret (default: false)
# @flag -h --help         show help
# @arg secret[`_choice_secret`]
# @arg key
delete() {
    :;
}
# }} gopass delete

# {{ gopass edit
# @cmd Edit new or existing secrets
# @alias set
# @option -e --editor <value>    Use this editor binary
# @flag -c --create              Create a new secret if none found (default: false)
# @flag -h --help                show help
# @arg secret[`_choice_secret`]
edit() {
    :;
}
# }} gopass edit

# {{ gopass find
# @cmd Search for secrets
# @alias search
# @flag -u           In the case of an exact match, display the password even if safecontent is enabled (default: false)
# @flag -f           In the case of an exact match, display the password even if safecontent is enabled (default: false)
# @flag --unsafe     In the case of an exact match, display the password even if safecontent is enabled (default: false)
# @flag --force      In the case of an exact match, display the password even if safecontent is enabled (default: false)
# @flag -h --help    show help
# @arg pattern!
find() {
    :;
}
# }} gopass find

# {{ gopass fsck
# @cmd Check store integrity, clean up artifacts and possibly re-write secrets
# @flag --decrypt            Decrypt and reencrypt during fsck.
# @option --store <value>    Limit fsck to this mount point
# @flag -h --help            show help
# @arg filter
fsck() {
    :;
}
# }} gopass fsck

# {{ gopass fscopy
# @cmd Copy files from or to the password store
# @flag -h --help    show help
# @arg from-file[`_choice_secret`]
# @arg to-file[`_choice_folder`]
fscopy() {
    :;
}
# }} gopass fscopy

# {{ gopass fsmove
# @cmd Move files from or to the password store
# @flag -h --help    show help
# @arg from-file[`_choice_secret`]
# @arg to-file[`_choice_folder`]
fsmove() {
    :;
}
# }} gopass fsmove

# {{ gopass generate
# @cmd Generate a new password
# @flag -c --clip                                Copy the generated password to the clipboard (default: false)
# @flag -p --print                               Print the generated password to the terminal (default: false)
# @flag -f --force                               Force to overwrite existing password (default: false)
# @flag -e --edit                                Open secret for editing after generating a password (default: false)
# @flag -s --symbols                             Use symbols in the password (default: false)
# @option -g --generator <value>                 Choose a password generator, use one of: cryptic, memorable, xkcd or external.
# @flag --strict                                 Require strict character class rules (default: false)
# @flag -t --force-regen                         Force full re-generation, incl.
# @option --sep <value>                          Word separator for generated passwords.
# @option --xkcdsep <value>                      Word separator for generated passwords.
# @option --xs <value>                           Word separator for generated passwords.
# @option --lang[english|default] <value>        Language to generate password from, currently only en or de are supported (default: "en")
# @option --xkcdlang[english|default] <value>    Language to generate password from, currently only en or de are supported (default: "en")
# @option --xl[english|default] <value>          Language to generate password from, currently only en or de are supported (default: "en")
# @flag -h --help                                show help
# @arg secret-key-length-length <secret [key [length]|length]>
generate() {
    :;
}
# }} gopass generate

# {{ gopass grep
# @cmd Search for secrets files containing search-string when decrypted.
# @flag -r --regexp    Interpret pattern as RE2 regular expression (default: false)
# @flag -h --help      show help
# @arg needle
grep() {
    :;
}
# }} gopass grep

# {{ gopass history
# @cmd Show password history
# @alias hist
# @flag -p --password    Include passwords in output (default: false)
# @flag -h --help        show help
# @arg secret[`_choice_secret`]
history() {
    :;
}
# }} gopass history

# {{ gopass init
# @cmd Initialize new password store.
# @option -p --path <value>     Set the sub-store path to operate on
# @option -s --store <value>    Set the name of the sub-store
# @option --crypto <value>      Select crypto backend [age gpgcli plain] (default: "gpgcli")
# @option --storage <value>     Select storage backend [fossilfs fs gitfs] (default: "gitfs")
# @flag -h --help               show help
# @arg gpg-id
init() {
    :;
}
# }} gopass init

# {{ gopass insert
# @cmd Insert a new secret
# @flag -e --echo         Display secret while typing (default: false)
# @flag -m --multiline    Insert using $EDITOR (default: false)
# @flag -f --force        Overwrite any existing secret and do not prompt to confirm recipients (default: false)
# @flag -a --append       Append data read from STDIN to existing data (default: false)
# @flag -h --help         show help
# @arg secret[`_choice_secret`]
insert() {
    :;
}
# }} gopass insert

# {{ gopass list
# @cmd List existing secrets
# @alias ls
# @option -l --limit <value>    Display no more than this many levels of the tree (default: 0)
# @flag -f --flat               Print a flat list (default: false)
# @flag -d --folders            Print a flat list of folders (default: false)
# @flag -s --strip-prefix       Strip this prefix from filtered entries (default: false)
# @flag -h --help               show help
# @arg prefix[`_choice_folder`]
list() {
    :;
}
# }} gopass list

# {{ gopass merge
# @cmd Merge multiple secrets into one
# @flag -d --delete    Remove merged entries (default: true)
# @flag -f --force     Skip editor, merge entries unattended (default: false)
# @flag -h --help      show help
# @arg to[`_choice_folder`]
# @arg from*[`_choice_secret`]
merge() {
    :;
}
# }} gopass merge

# {{ gopass mounts
# @cmd Edit mounted stores
# @flag -h --help    show help
mounts() {
    :;
}

# {{{ gopass mounts add
# @cmd Mount a password store
# @alias mount
mounts::add() {
    :;
}
# }}} gopass mounts add

# {{{ gopass mounts remove
# @cmd Umount an mounted password store
# @alias rm,unmount,umount
mounts::remove() {
    :;
}
# }}} gopass mounts remove

# {{{ gopass mounts versions
# @cmd Display mount provider versions
# @alias version
mounts::versions() {
    :;
}
# }}} gopass mounts versions
# }} gopass mounts

# {{ gopass move
# @cmd Move secrets from one location to another
# @alias mv
# @flag -f --force    Force to move the secret and overwrite existing one (default: false)
# @flag -h --help     show help
# @arg from[`_choice_secret`]
# @arg to[`_choice_folder`]
move() {
    :;
}
# }} gopass move

# {{ gopass otp
# @cmd Generate time- or hmac-based tokens
# @alias totp,hotp
# @flag -c --clip            Copy the time-based token into the clipboard (default: false)
# @option -q --qr <value>    Write QR code to FILE
# @flag -o --password        Only display the token (default: false)
# @flag -s --snip            Scan screen content to insert a OTP QR code into provided entry (default: false)
# @flag -h --help            show help
# @arg secret[`_choice_secret`]
otp() {
    :;
}
# }} gopass otp

# {{ gopass process
# @cmd Process a template file
# @flag -h --help    show help
process() {
    :;
}
# }} gopass process

# {{ gopass pwgen
# @cmd Generate passwords
# @flag -0 --no-numerals                         Do not include numerals in the generated passwords.
# @flag -A --no-capitalize                       Do not include capital letter in the generated passwords.
# @flag -B --ambiguous                           Do not include characters that could be easily confused with each other, like '1' and 'l' or '0' and 'O' (default: false)
# @flag -y --symbols                             Include at least one symbol in the password.
# @flag -1 --one-per-line                        Print one password per line (default: false)
# @flag -x --xkcd                                Use multiple random english words combined to a password.
# @option --sep <value>                          Word separator for generated xkcd style password.
# @option --xkcdsep <value>                      Word separator for generated xkcd style password.
# @option --xs <value>                           Word separator for generated xkcd style password.
# @option --lang[english|default] <value>        Language to generate password from, currently only en or de are supported (default: "en")
# @option --xkcdlang[english|default] <value>    Language to generate password from, currently only en or de are supported (default: "en")
# @option --xl[english|default] <value>          Language to generate password from, currently only en or de are supported (default: "en")
# @flag --xkcdcapitalize                         Capitalize first letter of each word in generated xkcd style password.
# @flag --xc                                     Capitalize first letter of each word in generated xkcd style password.
# @flag --xkcdnumbers                            Add a random number to the end of the generated xkcd style password.
# @flag --xn                                     Add a random number to the end of the generated xkcd style password.
# @flag -h --help                                show help
# @arg length
pwgen() {
    :;
}
# }} gopass pwgen

# {{ gopass recipients
# @cmd Edit recipient permissions
# @flag --pretty     Pretty print recipients (default: true)
# @flag -h --help    show help
recipients() {
    :;
}

# {{{ gopass recipients ack
# @cmd Update recipients.hash
# @alias acknowledge
recipients::ack() {
    :;
}
# }}} gopass recipients ack

# {{{ gopass recipients add
# @cmd Add any number of Recipients to any store
# @alias authorize
recipients::add() {
    :;
}
# }}} gopass recipients add

# {{{ gopass recipients remove
# @cmd Remove any number of Recipients from any store
# @alias rm,deauthorize
recipients::remove() {
    :;
}
# }}} gopass recipients remove
# }} gopass recipients

# {{ gopass setup
# @cmd Initialize a new password store
# @option --remote <value>     URL to a git remote, will attempt to join this team
# @option --alias <value>      Local mount point for the given remote
# @option --create[false|i]    Create a new team (default: false, i.e.
# @option --name <value>       Firstname and Lastname for unattended GPG key generation
# @option --email <value>      EMail for unattended GPG key generation
# @option --crypto <value>     Select crypto backend [age gpgcli plain]
# @option --storage <value>    Select storage backend [fossilfs fs gitfs]
# @flag -h --help              show help
setup() {
    :;
}
# }} gopass setup

# {{ gopass show
# @cmd Display the content of a secret
# @flag -y --yes                   Always answer yes to yes/no questions (default: false)
# @flag -c --clip                  Copy the password value into the clipboard (default: false)
# @flag -C --alsoclip              Copy the password and show everything (default: false)
# @flag --qr                       Print the password as a QR Code (default: false)
# @flag -u                         Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag -f                         Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag --unsafe                   Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag --force                    Display unsafe content (e.g. the password) even if safecontent is enabled (default: false)
# @flag -o --password              Display only the password.
# @option -r --revision <value>    Show a past revision.
# @flag -n --noparsing             Do not parse the output.
# @flag --nosync                   Disable auto-sync (default: false)
# @option --chars <value>          Print specific characters from the secret
# @flag -h --help                  show help
# @arg secret[`_choice_secret`]
show() {
    :;
}
# }} gopass show

# {{ gopass sum
# @cmd Compute the SHA256 checksum
# @alias sha,sha256
# @flag -h --help    show help
# @arg secret[`_choice_secret`]
sum() {
    :;
}
# }} gopass sum

# {{ gopass sync
# @cmd Sync all local stores with their remotes
# @option -s --store <value>    Select the store to sync
# @flag -h --help               show help
sync() {
    :;
}
# }} gopass sync

# {{ gopass templates
# @cmd Edit templates
# @flag -h --help    show help
templates() {
    :;
}

# {{{ gopass templates show
# @cmd Show a secret template.
# @alias cat_
templates::show() {
    :;
}
# }}} gopass templates show

# {{{ gopass templates edit
# @cmd Edit secret templates.
# @alias create,new
templates::edit() {
    :;
}
# }}} gopass templates edit

# {{{ gopass templates remove
# @cmd Remove secret templates.
# @alias rm
templates::remove() {
    :;
}
# }}} gopass templates remove
# }} gopass templates

# {{ gopass update
# @cmd Check for updates
# @flag -h --help    show help
update() {
    :;
}
# }} gopass update

# {{ gopass version
# @cmd Display version
# @flag -h --help    show help
version() {
    :;
}
# }} gopass version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_secret() {
    gopass ls --flat
}

_choice_folder() {
    gopass ls --folders --flat | _argc_util_comp_parts /
}

command eval "$(argc --argc-eval "$0" "$@")"