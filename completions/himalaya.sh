#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version

# {{ himalaya completion
# @cmd Generates the completion script for the given shell
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg shell![bash|elvish|fish|powershell|zsh]
completion() {
    :;
}
# }} himalaya completion

# {{ himalaya man
# @cmd Generate all man pages to the given directory
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg dir!                                Represents the directory where all man files of all commands and subcommands should be generated in.
man() {
    :;
}
# }} himalaya man

# {{ himalaya accounts
# @cmd Manage accounts
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
accounts() {
    :;
}

# {{{ himalaya accounts list
# @cmd List all accounts from the config file
# @option -c --config <PATH>               Set a custom configuration file path
# @option -w --max-width <INT>             Defines a maximum width for the table
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
accounts::list() {
    :;
}
# }}} himalaya accounts list

# {{{ himalaya accounts sync
# @cmd Synchronize the given account locally
# @flag -A --all-folders                   Synchronize all folders
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @option -F --include-folder* <FOLDER>    Synchronize only the given folders
# @flag --disable-cache                    Disable any sort of cache.
# @option -x --exclude-folder* <FOLDER>    Synchronize all folders except the given ones
# @flag -d --dry-run                       Do not apply changes of the synchronization.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
accounts::sync() {
    :;
}
# }}} himalaya accounts sync

# {{{ himalaya accounts configure
# @cmd Configure the current selected account
# @option -c --config <PATH>               Set a custom configuration file path
# @flag -r --reset                         Reset the configuration
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
accounts::configure() {
    :;
}
# }}} himalaya accounts configure
# }} himalaya accounts

# {{ himalaya folders
# @cmd Manage folders
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
folders() {
    :;
}

# {{{ himalaya folders expunge
# @cmd Delete emails marked for deletion
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
folders::expunge() {
    :;
}
# }}} himalaya folders expunge

# {{{ himalaya folders create
# @cmd Create a new folder
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
folders::create() {
    :;
}
# }}} himalaya folders create

# {{{ himalaya folders list
# @cmd List folders
# @option -c --config <PATH>               Set a custom configuration file path
# @option -w --max-width <INT>             Defines a maximum width for the table
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
folders::list() {
    :;
}
# }}} himalaya folders list

# {{{ himalaya folders delete
# @cmd Delete a folder with all its emails
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
folders::delete() {
    :;
}
# }}} himalaya folders delete
# }} himalaya folders

# {{ himalaya flags
# @cmd Handles email flags
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
flags() {
    :;
}

# {{{ himalaya flags add
# @cmd Adds flags to an email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg ids+                                Email ids
# @arg flags+                              The list of flags.
flags::add() {
    :;
}
# }}} himalaya flags add

# {{{ himalaya flags remove
# @cmd Removes flags from an email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg ids+                                Email ids
# @arg flags+                              The list of flags.
flags::remove() {
    :;
}
# }}} himalaya flags remove

# {{{ himalaya flags set
# @cmd Sets flags of an email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg ids+                                Email ids
# @arg flags+                              The list of flags.
flags::set() {
    :;
}
# }}} himalaya flags set
# }} himalaya flags

# {{ himalaya template
# @cmd Handles email templates
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
template() {
    :;
}

# {{{ himalaya template forward
# @cmd Generates a template for forwarding an email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -H --header <KEY:VAL>            Overrides a specific header
# @option -a --account <STRING>            Set the account
# @option -B --body <STRING>               Overrides the body
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg id!                                 Specifies the target email
template::forward() {
    :;
}
# }}} himalaya template forward

# {{{ himalaya template reply
# @cmd Generates a template for replying to an email
# @flag -A --all                           Include all recipients
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @option -H --header <KEY:VAL>            Overrides a specific header
# @option -B --body <STRING>               Overrides the body
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg id!                                 Specifies the target email
template::reply() {
    :;
}
# }}} himalaya template reply

# {{{ himalaya template save
# @cmd Compiles the template into a valid email then saves it
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg template*
template::save() {
    :;
}
# }}} himalaya template save

# {{{ himalaya template send
# @cmd Compiles the template into a valid email then sends it
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg template*
template::send() {
    :;
}
# }}} himalaya template send

# {{{ himalaya template write
# @cmd Generates a template for writing a new email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -H --header <KEY:VAL>            Overrides a specific header
# @option -a --account <STRING>            Set the account
# @option -B --body <STRING>               Overrides the body
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
template::write() {
    :;
}
# }}} himalaya template write
# }} himalaya template

# {{ himalaya attachments
# @cmd Downloads all emails attachments
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg ids+                                Email ids
attachments() {
    :;
}
# }} himalaya attachments

# {{ himalaya list
# @cmd List envelopes
# @option -c --config <PATH>               Set a custom configuration file path
# @option -s --page-size <INT>             Page size
# @option -a --account <STRING>            Set the account
# @option -p --page <INT>                  Page number
# @flag --disable-cache                    Disable any sort of cache.
# @option -w --max-width <INT>             Defines a maximum width for the table
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
list() {
    :;
}
# }} himalaya list

# {{ himalaya search
# @cmd Filter envelopes matching the given query
# @option -c --config <PATH>               Set a custom configuration file path
# @option -s --page-size <INT>             Page size
# @option -a --account <STRING>            Set the account
# @option -p --page <INT>                  Page number
# @flag --disable-cache                    Disable any sort of cache.
# @option -w --max-width <INT>             Defines a maximum width for the table
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg query+                              The query system depends on the backend, see the wiki for more details
search() {
    :;
}
# }} himalaya search

# {{ himalaya sort
# @cmd Sort envelopes by the given criteria and matching the given query
# @option -c --config <PATH>               Set a custom configuration file path
# @option -s --page-size <INT>             Page size
# @option -a --account <STRING>            Set the account
# @option -p --page <INT>                  Page number
# @flag --disable-cache                    Disable any sort of cache.
# @option -w --max-width <INT>             Defines a maximum width for the table
# @option --criterion[arrival|arrival:asc|arrival:desc|cc|cc:asc|cc:desc|date|date:asc|date:desc|from|from:asc|from:desc|size|size:asc|size:desc|subject|subject:asc|subject:desc|to|to:asc|to:desc] <CRITERION:ORDER>  Email sorting preferences
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg query+                              The query system depends on the backend, see the wiki for more details
sort() {
    :;
}
# }} himalaya sort

# {{ himalaya write
# @cmd Write a new email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -H --header <KEY:VAL>            Overrides a specific header
# @option -a --account <STRING>            Set the account
# @option -B --body <STRING>               Overrides the body
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
write() {
    :;
}
# }} himalaya write

# {{ himalaya send
# @cmd Send a raw email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg raw*
send() {
    :;
}
# }} himalaya send

# {{ himalaya save
# @cmd Save a raw email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg raw*
save() {
    :;
}
# }} himalaya save

# {{ himalaya read
# @cmd Read text bodies of emails
# @option -c --config <PATH>                   Set a custom configuration file path
# @option -t --mime-type[plain|html] <MIME>    MIME type to use
# @option -a --account <STRING>                Set the account
# @flag -r --raw                               Returns raw version of email
# @flag --disable-cache                        Disable any sort of cache.
# @option -H --header <STRING>                 Shows additional headers with the email
# @option -o --output[plain|json] <FMT>        Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>                 Set the source folder
# @flag -h --help                              Print help (see a summary with '-h')
# @flag -V --version                           Print version
# @arg ids+                                    Email ids
read() {
    :;
}
# }} himalaya read

# {{ himalaya reply
# @cmd Answer to an email
# @flag -A --all                           Include all recipients
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @option -H --header <KEY:VAL>            Overrides a specific header
# @option -B --body <STRING>               Overrides the body
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg id!                                 Specifies the target email
reply() {
    :;
}
# }} himalaya reply

# {{ himalaya forward
# @cmd Forward an email
# @option -c --config <PATH>               Set a custom configuration file path
# @option -H --header <KEY:VAL>            Overrides a specific header
# @option -a --account <STRING>            Set the account
# @option -B --body <STRING>               Overrides the body
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg id!                                 Specifies the target email
forward() {
    :;
}
# }} himalaya forward

# {{ himalaya copy
# @cmd Copy emails to the given folder
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg target!                             Specifies the target folder
# @arg ids+                                Email ids
copy() {
    :;
}
# }} himalaya copy

# {{ himalaya move
# @cmd Move emails to the given folder
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg target!                             Specifies the target folder
# @arg ids+                                Email ids
move() {
    :;
}
# }} himalaya move

# {{ himalaya delete
# @cmd Delete emails
# @option -c --config <PATH>               Set a custom configuration file path
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
# @arg ids+                                Email ids
delete() {
    :;
}
# }} himalaya delete

# {{ himalaya notify
# @cmd Notifies when new messages arrive in the given folder
# @option -c --config <PATH>               Set a custom configuration file path
# @option -k --keepalive <SECS>            Specifies the keepalive duration.
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
notify() {
    :;
}
# }} himalaya notify

# {{ himalaya watch
# @cmd Watches IMAP server changes
# @option -c --config <PATH>               Set a custom configuration file path
# @option -k --keepalive <SECS>            Specifies the keepalive duration.
# @option -a --account <STRING>            Set the account
# @flag --disable-cache                    Disable any sort of cache.
# @option -o --output[plain|json] <FMT>    Set the output format
# @option -C --color[never|auto|always|ansi] <WHEN>  This flag controls when to use colors.
# @option -f --folder <SOURCE>             Set the source folder
# @flag -h --help                          Print help (see a summary with '-h')
# @flag -V --version                       Print version
watch() {
    :;
}
# }} himalaya watch

command eval "$(argc --argc-eval "$0" "$@")"