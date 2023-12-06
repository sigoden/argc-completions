#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug-info    Displays debugging information.
# @flag -h --help       Displays help on commandline options.
# @flag --help-all      Displays help including Qt specific options.
# @flag -v --version    Displays version information.

# {{ keepassxc-cli add
# @cmd Add a new entry to a database.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @option -u --username <username>        Username for the entry.
# @option --url                           URL for the entry.
# @option --notes <Notes>                 Notes for the entry.
# @flag -p --password-prompt              Prompt for the entry's password.
# @flag -g --generate                     Generate a password for the entry.
# @option -L --length <length>            Length of the generated password
# @flag -l --lower                        Use lowercase characters
# @flag -U --upper                        Use uppercase characters
# @flag -n --numeric                      Use numbers
# @flag -s --special                      Use special characters
# @flag -e --extended                     Use extended ASCII
# @option -x --exclude <chars>            Exclude character set
# @flag --exclude-similar                 Exclude similar looking characters
# @flag --every-group                     Include characters from every selected group
# @option -c --custom <chars>             Use custom character set
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry to add.
add() {
    :;
}
# }} keepassxc-cli add

# {{ keepassxc-cli analyze
# @cmd Analyze passwords for weaknesses and problems.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @option -H --hibp <FILENAME>            Check if any passwords have been publicly leaked.
# @option --okon <okon-cli>               Path to okon-cli to search a formatted HIBP file
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
analyze() {
    :;
}
# }} keepassxc-cli analyze

# {{ keepassxc-cli attachment-export
# @cmd Export an attachment of an entry.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag --stdout
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry with the target attachment.
# @arg attachment-name                    Name of the attachment to be exported.
# @arg export-file                        Path to which the attachment should be exported.
attachment-export() {
    :;
}
# }} keepassxc-cli attachment-export

# {{ keepassxc-cli attachment-import
# @cmd Imports an attachment to an entry.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -f --force                        Overwrite existing attachments.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry.
# @arg attachment-name                    Name of the attachment to be added.
# @arg import-file                        Path of the attachment to be imported.
attachment-import() {
    :;
}
# }} keepassxc-cli attachment-import

# {{ keepassxc-cli attachment-rm
# @cmd Remove an attachment of an entry.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry with the target attachment.
# @arg name                               Name of the attachment to be removed.
attachment-rm() {
    :;
}
# }} keepassxc-cli attachment-rm

# {{ keepassxc-cli clip
# @cmd Copy an entry's attribute to the clipboard.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @option -a --attribute <attr>           Copy the given attribute to the clipboard.
# @flag -t --totp                         Copy the current TOTP to the clipboard (equivalent to "-a totp").
# @flag -b --best-match                   Must match only one entry, otherwise a list of possible matches is shown.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry to clip.
# @arg timeout                            Timeout before clearing the clipboard (default is 10 seconds, set to 0 for unlimited).
clip() {
    :;
}
# }} keepassxc-cli clip

# {{ keepassxc-cli close
# @cmd Close the currently opened database.
close() {
    :;
}
# }} keepassxc-cli close

# {{ keepassxc-cli db-create
# @cmd Create a new database.
# @flag -q --quiet                       Silence password prompt and other secondary outputs.
# @option --set-key-file <path>          Set the key file for the database.
# @option -k <path>                      Set the key file for the database.
# @flag -p --set-password                Set a password for the database.
# @option -t --decryption-time <time>    Target decryption time in MS for the database.
# @flag -h --help                        Display this help.
# @arg database                          Path of the database.
db-create() {
    :;
}
# }} keepassxc-cli db-create

# {{ keepassxc-cli db-edit
# @cmd Edit a database.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @option --set-key-file <path>           Set the key file for the database.
# @flag -p --set-password                 Set a password for the database.
# @flag --unset-key-file                  Unset the key file for the database.
# @flag --unset-password                  Unset the password for the database.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
db-edit() {
    :;
}
# }} keepassxc-cli db-edit

# {{ keepassxc-cli db-info
# @cmd Show a database's information.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
db-info() {
    :;
}
# }} keepassxc-cli db-info

# {{ keepassxc-cli diceware
# @cmd Generate a new random diceware passphrase.
# @flag -q --quiet                 Silence password prompt and other secondary outputs.
# @option -W --words <count>       Word count for the diceware passphrase.
# @option -w --word-list <path>    Wordlist for the diceware generator.
# @flag -h --help                  Display this help.
diceware() {
    :;
}
# }} keepassxc-cli diceware

# {{ keepassxc-cli edit
# @cmd Edit an entry.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @option -u --username <username>        Username for the entry.
# @option --url                           URL for the entry.
# @option --notes <Notes>                 Notes for the entry.
# @flag -p --password-prompt              Prompt for the entry's password.
# @option -t --title <title>              Title for the entry.
# @flag -g --generate                     Generate a password for the entry.
# @option -L --length <length>            Length of the generated password
# @flag -l --lower                        Use lowercase characters
# @flag -U --upper                        Use uppercase characters
# @flag -n --numeric                      Use numbers
# @flag -s --special                      Use special characters
# @flag -e --extended                     Use extended ASCII
# @option -x --exclude <chars>            Exclude character set
# @flag --exclude-similar                 Exclude similar looking characters
# @flag --every-group                     Include characters from every selected group
# @option -c --custom <chars>             Use custom character set
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry to edit.
edit() {
    :;
}
# }} keepassxc-cli edit

# {{ keepassxc-cli estimate
# @cmd Estimate the entropy of a password.
# @flag -q --quiet       Silence password prompt and other secondary outputs.
# @flag -a --advanced    Perform advanced analysis on the password.
# @flag -h --help        Display this help.
# @arg password          Password for which to estimate the entropy.
estimate() {
    :;
}
# }} keepassxc-cli estimate

# {{ keepassxc-cli export
# @cmd Exports the content of a database to standard output in the specified format.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @option -f --format <xml|csv>           Format to use when exporting.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
export() {
    :;
}
# }} keepassxc-cli export

# {{ keepassxc-cli generate
# @cmd Generate a new random password.
# @flag -q --quiet                Silence password prompt and other secondary outputs.
# @option -L --length <length>    Length of the generated password
# @flag -l --lower                Use lowercase characters
# @flag -U --upper                Use uppercase characters
# @flag -n --numeric              Use numbers
# @flag -s --special              Use special characters
# @flag -e --extended             Use extended ASCII
# @option -x --exclude <chars>    Exclude character set
# @flag --exclude-similar         Exclude similar looking characters
# @flag --every-group             Include characters from every selected group
# @option -c --custom <chars>     Use custom character set
# @flag -h --help                 Display this help.
generate() {
    :;
}
# }} keepassxc-cli generate

# {{ keepassxc-cli import
# @cmd Import the contents of an XML database.
# @flag -q --quiet                       Silence password prompt and other secondary outputs.
# @option --set-key-file <path>          Set the key file for the database.
# @option -k <path>                      Set the key file for the database.
# @flag -p --set-password                Set a password for the database.
# @option -t --decryption-time <time>    Target decryption time in MS for the database.
# @flag -h --help                        Display this help.
# @arg xml                               Path of the XML database export.
# @arg database                          Path of the new database.
import() {
    :;
}
# }} keepassxc-cli import

# {{ keepassxc-cli ls
# @cmd List database entries.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -R --recursive                    Recursively list the elements of the group.
# @flag -f --flatten                      Flattens the output to single lines.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg group                              Path of the group to list.
ls() {
    :;
}
# }} keepassxc-cli ls

# {{ keepassxc-cli merge
# @cmd Merge two databases.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -s --same-credentials             Use the same credentials for both database files.
# @option --key-file-from <path>          Key file of the database to merge from.
# @flag --no-password-from                Deactivate password key for the database to merge from.
# @flag --dry-run                         Only print the changes detected by the merge operation.
# @option --yubikey-from <slot>           Yubikey slot for the second database.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg database2                          Path of the database to merge from.
merge() {
    :;
}
# }} keepassxc-cli merge

# {{ keepassxc-cli mkdir
# @cmd Adds a new group to a database.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg group                              Path of the group to add.
mkdir() {
    :;
}
# }} keepassxc-cli mkdir

# {{ keepassxc-cli mv
# @cmd Moves an entry to a new group.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry to move.
# @arg group                              Path of the destination group.
mv() {
    :;
}
# }} keepassxc-cli mv

# {{ keepassxc-cli open
# @cmd Open a database.
open() {
    :;
}
# }} keepassxc-cli open

# {{ keepassxc-cli rm
# @cmd Remove an entry from the database.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Path of the entry to remove.
rm() {
    :;
}
# }} keepassxc-cli rm

# {{ keepassxc-cli rmdir
# @cmd Removes a group from a database.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg group                              Path of the group to remove.
rmdir() {
    :;
}
# }} keepassxc-cli rmdir

# {{ keepassxc-cli search
# @cmd Find entries quickly.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg term                               Search term.
search() {
    :;
}
# }} keepassxc-cli search

# {{ keepassxc-cli show
# @cmd Show an entry's information.
# @flag -q --quiet                        Silence password prompt and other secondary outputs.
# @option -k --key-file <path>            Key file of the database.
# @flag --no-password                     Deactivate password key for the database.
# @option -y --yubikey <slot[:serial]>    Yubikey slot and optional serial used to access the database (e.g., 1:7370001).
# @flag -t --totp                         Show the entry's current TOTP.
# @option -a --attributes <attribute>     Names of the attributes to show.
# @flag -s --show-protected               Show the protected attributes in clear text.
# @flag --all                             Show all the attributes of the entry.
# @flag --show-attachments                Show the attachments of the entry.
# @flag -h --help                         Display this help.
# @arg database                           Path of the database.
# @arg entry                              Name of the entry to show.
show() {
    :;
}
# }} keepassxc-cli show

command eval "$(argc --argc-eval "$0" "$@")"