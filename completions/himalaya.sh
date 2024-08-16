#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version

# {{ himalaya account
# @cmd Manage accounts
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
account() {
    :;
}

# {{{ himalaya account check-up
# @cmd Check up the given account
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg account                                The name of the account.
account::check-up() {
    :;
}
# }}} himalaya account check-up

# {{{ himalaya account configure
# @cmd Configure an account
# @flag -r --reset                            Reset keyring passwords.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg account!                               The name of the account.
account::configure() {
    :;
}
# }}} himalaya account configure

# {{{ himalaya account list
# @cmd List all accounts
# @option -w --max-width <PIXELS>             The maximum width the table should not exceed.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
account::list() {
    :;
}
# }}} himalaya account list

# {{{ himalaya account sync
# @cmd Synchronize an account
# @flag -d --dry-run                          Run the synchronization without applying any changes.
# @option -f --include-folder <FOLDER>        Synchronize only specific folders.
# @option -x --exclude-folder <FOLDER>        Omit specific folders from the synchronization.
# @flag -A --all-folders                      Synchronize all exsting folders
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg account                                The name of the account.
account::sync() {
    :;
}
# }}} himalaya account sync
# }} himalaya account

# {{ himalaya folder
# @cmd Manage folders [aliases: mailbox]
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
folder() {
    :;
}

# {{{ himalaya folder add
# @cmd Create a new folder [aliases: create]
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg folder!                                The name of the folder
folder::add() {
    :;
}
# }}} himalaya folder add

# {{{ himalaya folder list
# @cmd List all folders
# @option -w --max-width <PIXELS>             The maximum width the table should not exceed.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
folder::list() {
    :;
}
# }}} himalaya folder list

# {{{ himalaya folder expunge
# @cmd Expunge a folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg folder!                                The name of the folder
folder::expunge() {
    :;
}
# }}} himalaya folder expunge

# {{{ himalaya folder purge
# @cmd Purge a folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg folder!                                The name of the folder
folder::purge() {
    :;
}
# }}} himalaya folder purge

# {{{ himalaya folder delete
# @cmd Delete a folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg folder!                                The name of the folder
folder::delete() {
    :;
}
# }}} himalaya folder delete
# }} himalaya folder

# {{ himalaya envelope
# @cmd Manage envelopes
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
envelope() {
    :;
}

# {{{ himalaya envelope list
# @cmd List all envelopes
# @option -f --folder <NAME>                  The name of the folder
# @option -p --page <NUMBER>                  The page number.
# @option -s --page-size <NUMBER>             The page size.
# @option -w --max-width <PIXELS>             The maximum width the table should not exceed.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg query*                                 The list envelopes filter and sort query.
envelope::list() {
    :;
}
# }}} himalaya envelope list

# {{{ himalaya envelope watch
# @cmd Watch envelopes for changes
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
envelope::watch() {
    :;
}
# }}} himalaya envelope watch
# }} himalaya envelope

# {{ himalaya flag
# @cmd Manage flags
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
flag() {
    :;
}

# {{{ himalaya flag add
# @cmd Add flag(s) to an envelope
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id-or-flag+                            The list of ids and/or flags.
flag::add() {
    :;
}
# }}} himalaya flag add

# {{{ himalaya flag set
# @cmd Replace flag(s) of an envelope
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id-or-flag+                            The list of ids and/or flags.
flag::set() {
    :;
}
# }}} himalaya flag set

# {{{ himalaya flag remove
# @cmd Remove flag(s) from an envelope
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id-or-flag+                            The list of ids and/or flags.
flag::remove() {
    :;
}
# }}} himalaya flag remove
# }} himalaya flag

# {{ himalaya message
# @cmd Manage messages
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
message() {
    :;
}

# {{{ himalaya message read
# @cmd Read a message
# @option -f --folder <NAME>                  The name of the folder
# @flag -p --preview                          Read the message without applying the "seen" flag to its corresponding envelope
# @flag -r --raw                              Read the raw version of the given message.
# @flag --html                                Read only body of text/html parts.
# @flag --no-headers                          Read only the body of the message.
# @option -H --header <NAME>                  List of headers that should be visible at the top of the message.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id+                                    The list of envelopes ids
message::read() {
    :;
}
# }}} himalaya message read

# {{{ himalaya message write
# @cmd Write a new message
# @option -H --header <KEY:VAL>               Prefill the template with custom headers.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg body*                                  Prefill the template with a custom body
message::write() {
    :;
}
# }}} himalaya message write

# {{{ himalaya message reply
# @cmd Reply to a message
# @option -f --folder <NAME>                  The name of the folder
# @flag -A --all                              Reply to all recipients.
# @option -H --header <KEY:VAL>               Prefill the template with custom headers.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id!                                    The envelope id
# @arg body*                                  Prefill the template with a custom body
message::reply() {
    :;
}
# }}} himalaya message reply

# {{{ himalaya message forward
# @cmd Forward a message
# @option -f --folder <NAME>                  The name of the folder
# @option -H --header <KEY:VAL>               Prefill the template with custom headers.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id!                                    The envelope id
# @arg body*                                  Prefill the template with a custom body
message::forward() {
    :;
}
# }}} himalaya message forward

# {{{ himalaya message mailto
# @cmd Parse and edit a message from a mailto URL string
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg url!                                   The mailto url
message::mailto() {
    :;
}
# }}} himalaya message mailto

# {{{ himalaya message save
# @cmd Save a message to a folder
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg message*                               The raw message, including headers and body
message::save() {
    :;
}
# }}} himalaya message save

# {{{ himalaya message send
# @cmd Send a message
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg message*                               The raw message, including headers and body
message::send() {
    :;
}
# }}} himalaya message send

# {{{ himalaya message copy
# @cmd Copy a message from a source folder to a target folder
# @option -f --folder <SOURCE>                The name of the source folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg target!                                The name of the target folder
# @arg id+                                    The list of envelopes ids
message::copy() {
    :;
}
# }}} himalaya message copy

# {{{ himalaya message move
# @cmd Move a message from a source folder to a target folder
# @option -f --folder <SOURCE>                The name of the source folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg target!                                The name of the target folder
# @arg id+                                    The list of envelopes ids
message::move() {
    :;
}
# }}} himalaya message move

# {{{ himalaya message delete
# @cmd Mark as deleted a message from a folder
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id+                                    The list of envelopes ids
message::delete() {
    :;
}
# }}} himalaya message delete
# }} himalaya message

# {{ himalaya attachment
# @cmd Manage attachments
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
attachment() {
    :;
}

# {{{ himalaya attachment download
# @cmd Download all attachments for the given message
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id+                                    The list of envelopes ids
attachment::download() {
    :;
}
# }}} himalaya attachment download
# }} himalaya attachment

# {{ himalaya template
# @cmd Manage templates
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
template() {
    :;
}

# {{{ himalaya template write
# @cmd Generate a template for writing a new message from scratch
# @option -H --header <KEY:VAL>               Prefill the template with custom headers.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg body*                                  Prefill the template with a custom MML body
template::write() {
    :;
}
# }}} himalaya template write

# {{{ himalaya template reply
# @cmd Generate a template for replying to a message
# @option -f --folder <NAME>                  The name of the folder
# @flag -A --all                              Reply to all recipients.
# @option -H --header <KEY:VAL>               Prefill the template with custom headers.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id!                                    The envelope id
# @arg body*                                  Prefill the template with a custom body
template::reply() {
    :;
}
# }}} himalaya template reply

# {{{ himalaya template forward
# @cmd Generate a template for forwarding a message
# @option -f --folder <NAME>                  The name of the folder
# @option -H --header <KEY:VAL>               Prefill the template with custom headers.
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg id!                                    The envelope id
# @arg body*                                  Prefill the template with a custom body
template::forward() {
    :;
}
# }}} himalaya template forward

# {{{ himalaya template save
# @cmd Save a template to a folder
# @option -f --folder <NAME>                  The name of the folder
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg template*                              The raw template, including headers and MML body
template::save() {
    :;
}
# }}} himalaya template save

# {{{ himalaya template send
# @cmd Send a template
# @flag --disable-cache                       Disable any sort of cache.
# @option -a --account <NAME>                 Override the default account.
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg template*                              The raw template, including headers and MML body
template::send() {
    :;
}
# }}} himalaya template send
# }} himalaya template

# {{ himalaya manual
# @cmd Generate manual pages to a directory
# @option -c --config <PATH>                  Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>    Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                               Enable logs with spantrace.
# @flag --trace                               Enable verbose logs with backtrace.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg dir!                                   Directory where man files should be generated in
manual() {
    :;
}
# }} himalaya manual

# {{ himalaya completion
# @cmd Print completion script for a shell to stdout
# @option -c --config <PATH>                      Override the default configuration file path.
# @option -o --output[plain|json] <FORMAT>        Customize the output format.
# @option -C --color[never|always|ansi|auto] <MODE>  Control when to use colors
# @flag --debug                                   Enable logs with spantrace.
# @flag --trace                                   Enable verbose logs with backtrace.
# @flag -h --help                                 Print help (see a summary with '-h')
# @flag -V --version                              Print version
# @arg shell![bash|elvish|fish|powershell|zsh]    Shell for which completion script should be generated for
completion() {
    :;
}
# }} himalaya completion

command eval "$(argc --argc-eval "$0" "$@")"