#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ keybase account
# @cmd Modify your account
account() {
    :;
}

# {{{ keybase account contact-settings
# @cmd Manage contact privacy settings
account::contact-settings() {
    :;
}

# {{{{ keybase account contact-settings api
# @cmd JSON API
# @flag -p --pretty              Output pretty (indented) JSON.
# @option -m <value>             Specify JSON as string instead of stdin
# @option -i --infile <file>     Specify JSON input file (stdin default)
# @option -o --outfile <file>    Specify output file (stdout default)
account::contact-settings::api() {
    :;
}
# }}}} keybase account contact-settings api
# }}} keybase account contact-settings

# {{{ keybase account delete
# @cmd Permanently delete account
account::delete() {
    :;
}
# }}} keybase account delete

# {{{ keybase account email
# @cmd Manage your emails
account::email() {
    :;
}

# {{{{ keybase account email add
# @cmd Add email to your Keybase account
# @arg email!
# @arg private-public! <private|public>
account::email::add() {
    :;
}
# }}}} keybase account email add

# {{{{ keybase account email edit
# @cmd Edit a email
# @arg old-email! <old email>
# @arg new-email! <new email>
# @arg private-public-visibility-for-new-email! <private|public (visibility for new email)>
account::email::edit() {
    :;
}
# }}}} keybase account email edit

# {{{{ keybase account email delete
# @cmd Delete email from your Keybase account
# @arg email!
account::email::delete() {
    :;
}
# }}}} keybase account email delete

# {{{{ keybase account email list
# @cmd List emails attached to your account
# @flag -j --json    Output as JSON
account::email::list() {
    :;
}
# }}}} keybase account email list

# {{{{ keybase account email set-visibility
# @cmd Allow or disallow Keybase users from looking you up by your email.
# @arg email-all! <email|'all'>
# @arg private-public! <private|public>
account::email::set-visibility() {
    :;
}
# }}}} keybase account email set-visibility

# {{{{ keybase account email set-primary
# @cmd Set an email as the primary to receive notifications from Keybase
# @arg email!
account::email::set-primary() {
    :;
}
# }}}} keybase account email set-primary

# {{{{ keybase account email send-verification-email
# @cmd Send a verification email to an email address.
# @arg email!
account::email::send-verification-email() {
    :;
}
# }}}} keybase account email send-verification-email
# }}} keybase account email

# {{{ keybase account lockdown
# @cmd Manage account lockdown mode
# @flag --enable      Enable account lockdown mode.
# @flag --disable     Disable account lockdown mode.
# @flag --history     Print history of lockdown mode changes.
# @flag -f --force    Don't prompt.
account::lockdown() {
    :;
}
# }}} keybase account lockdown

# {{{ keybase account recover-username
# @cmd Recover username via email or SMS.
# @option --email <value>    Email associated with the account.
# @option --phone <value>    Phone number associated with the account including country code, e.g. +12344567890
account::recover-username() {
    :;
}
# }}} keybase account recover-username

# {{{ keybase account upload-avatar
# @cmd Upload avatar for user or team
# @option --team <value>          Uploads avatar for given team instead of user.
# @flag -s --skip-chat-message    skip chat message when changing avatar for a team
# @arg filename!
account::upload-avatar() {
    :;
}
# }}} keybase account upload-avatar
# }} keybase account

# {{ keybase blocks
# @cmd Manage user and team blocks
blocks() {
    :;
}

# {{{ keybase blocks list-users
# @cmd Show blocked users.
blocks::list-users() {
    :;
}
# }}} keybase blocks list-users

# {{{ keybase blocks list-teams
# @cmd Show blocked teams.
blocks::list-teams() {
    :;
}
# }}} keybase blocks list-teams
# }} keybase blocks

# {{ keybase bot
# @cmd Manage bot accounts
bot() {
    :;
}

# {{{ keybase bot signup
# @cmd Signup a bot that will have a paper key but no device
# @option -c --invite-code <value>    Specify an invite code (optional)
# @option -e --email <value>          Specify an account email (optional)
# @option -u --username <value>       Specify a username.
# @option -t --token <value>          Specify a bot token
bot::signup() {
    :;
}
# }}} keybase bot signup

# {{{ keybase bot token
# @cmd Manage bot tokens
bot::token() {
    :;
}

# {{{{ keybase bot token create
# @cmd Create a new bot token to sign up bots
bot::token::create() {
    :;
}
# }}}} keybase bot token create

# {{{{ keybase bot token list
# @cmd List bot tokens associated with this account
bot::token::list() {
    :;
}
# }}}} keybase bot token list

# {{{{ keybase bot token delete
# @cmd Delete a bot token
# @option -t --token <value>    Specify a bot token
bot::token::delete() {
    :;
}
# }}}} keybase bot token delete
# }}} keybase bot token
# }} keybase bot

# {{ keybase chat
# @cmd Chat securely with keybase users
chat() {
    :;
}

# {{{ keybase chat add-bot-member
# @cmd Add a bot or a restricted bot to a conversation.
# @option --topic-type <"chat">           Specify topic type of the conversation.
# @flag --public                          Only select public conversations.
# @flag --private                         Only select private conversations.
# @option --channel <value>               Specify the conversation channel.
# @flag --allow-commands                  Restricted bots will receive messages that begin with commands they support.
# @flag --allow-mentions                  Restricted bots will receive messages when they are @-mentioned.
# @flag --allow-trigger                   Restricted bots will receive messages that match the given text.
# @flag --allow-conversation              Restricted bots will only be able to send/receive messages in the given conversations.
# @option -u --user <value>               username
# @option -r --role[bot|restrictedbot]    team role
# @arg conversation
chat::add-bot-member() {
    :;
}
# }}} keybase chat add-bot-member

# {{{ keybase chat add-to-channel
# @cmd Add one or more users to a channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team!
# @arg channel!
# @arg usernames+
chat::add-to-channel() {
    :;
}
# }}} keybase chat add-to-channel

# {{{ keybase chat api
# @cmd JSON API
# @flag -p --pretty              Output pretty (indented) JSON.
# @option -m <value>             Specify JSON as string instead of stdin
# @option -i --infile <file>     Specify JSON input file (stdin default)
# @option -o --outfile <file>    Specify output file (stdout default)
chat::api() {
    :;
}
# }}} keybase chat api

# {{{ keybase chat api-listen
# @cmd Listen and print incoming chat actions in JSON format
# @flag --local              Show local messages (skipped by default)
# @flag --hide-exploding     Hide exploding messages
# @flag --convs              Subscribe to notifications of new conversations
# @flag --dev                Subscribe to notifications for chat dev channels
# @flag --wallet             Subscribe to notifications for wallet events
# @flag --filter-channel     Only show notifications for specified (one) channel.
# @flag --filter-channels    Only show notifications for specified list of channels.
chat::api-listen() {
    :;
}
# }}} keybase chat api-listen

# {{{ keybase chat bot-member-settings
# @cmd View or modify a restricted bot's isolation settings.
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @flag --allow-commands           Restricted bots will receive messages that begin with commands they support.
# @flag --allow-mentions           Restricted bots will receive messages when they are @-mentioned.
# @flag --allow-trigger            Restricted bots will receive messages that match the given text.
# @flag --allow-conversation       Restricted bots will only be able to send/receive messages in the given conversations.
# @option -u --user <value>        username
# @arg conversation
chat::bot-member-settings() {
    :;
}
# }}} keybase chat bot-member-settings

# {{{ keybase chat clear-commands
# @cmd Clear any advertised commands for the logged-in user.
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @option --team-name <value>      Specify a team
# @option --type <value>           Specify an advertisement type.
chat::clear-commands() {
    :;
}
# }}} keybase chat clear-commands

# {{{ keybase chat conv-info
# @cmd Get information about a conversation
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @arg conversation
chat::conv-info() {
    :;
}
# }}} keybase chat conv-info

# {{{ keybase chat create-channel
# @cmd Create a channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team-name! <team name>
# @arg channel-name! <channel name>
chat::create-channel() {
    :;
}
# }}} keybase chat create-channel

# {{{ keybase chat default-channels
# @cmd Set or get the default channels of a team
# @option --channel <value>    Set the given channel name to be a default channels.
# @arg team
chat::default-channels() {
    :;
}
# }}} keybase chat default-channels

# {{{ keybase chat delete-channel
# @cmd Delete a channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team-name! <team name>
# @arg channel-name! <channel name>
chat::delete-channel() {
    :;
}
# }}} keybase chat delete-channel

# {{{ keybase chat delete-history
# @cmd Delete chat history in a conversation
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @option --age <value>            Only delete messages older than e.g. 2h, 3d, 1w
# @arg conversation
chat::delete-history() {
    :;
}
# }}} keybase chat delete-history

# {{{ keybase chat download
# @cmd Download an attachment from a conversation
# @flag -p --preview               Download preview
# @option -o --outfile <file>      Specify output file (stdout default)
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @arg conversation!
# @arg attachment-id! <attachment id>
chat::download() {
    :;
}
# }}} keybase chat download

# {{{ keybase chat edit-bot-member
# @cmd Edit the role bot or a restricted bot in a conversation.
# @option --topic-type <"chat">           Specify topic type of the conversation.
# @flag --public                          Only select public conversations.
# @flag --private                         Only select private conversations.
# @option --channel <value>               Specify the conversation channel.
# @flag --allow-commands                  Restricted bots will receive messages that begin with commands they support.
# @flag --allow-mentions                  Restricted bots will receive messages when they are @-mentioned.
# @flag --allow-trigger                   Restricted bots will receive messages that match the given text.
# @flag --allow-conversation              Restricted bots will only be able to send/receive messages in the given conversations.
# @option -u --user <value>               username
# @option -r --role[bot|restrictedbot]    team role
# @arg conversation
chat::edit-bot-member() {
    :;
}
# }}} keybase chat edit-bot-member

# {{{ keybase chat emoji-add
# @cmd Add an emoji
# @flag --allow-overwrite    Allow editing of an existing emoji.
# @arg conversation!
# @arg alias!
# @arg filename-or-url! <filename or url>
chat::emoji-add() {
    :;
}
# }}} keybase chat emoji-add

# {{{ keybase chat emoji-addalias
# @cmd Add an alias to an existing emoji
# @arg conversation!
# @arg existing-alias! <existing alias>
# @arg new-alias! <new alias>
chat::emoji-addalias() {
    :;
}
# }}} keybase chat emoji-addalias

# {{{ keybase chat emoji-list
# @cmd List all sendable emojis
chat::emoji-list() {
    :;
}
# }}} keybase chat emoji-list

# {{{ keybase chat emoji-remove
# @cmd Remove an emoji
# @arg conversation!
# @arg alias!
chat::emoji-remove() {
    :;
}
# }}} keybase chat emoji-remove

# {{{ keybase chat featured-bots
# @cmd List featured chat bots available on Keybase.
# @option -n --number <"10">    Number of bots to display, defaults to 10
# @option -p --page <"0">       page
chat::featured-bots() {
    :;
}
# }}} keybase chat featured-bots

# {{{ keybase chat forward-message
# @cmd forward a message from one conversation to another
# @option --src-channel <value>    Specify the source conversation channel.
# @option --dst-channel <value>    Specify the destination conversation channel.
# @arg src-conversation!
# @arg dst-conversation!
# @arg message-id!
chat::forward-message() {
    :;
}
# }}} keybase chat forward-message

# {{{ keybase chat hide
# @cmd Hide or block a conversation.
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @flag -b --block                 Block the conversation (instead of hiding until next activity)
# @flag -u --unhide                Unhide/unblock the conversation
# @arg conversation
chat::hide() {
    :;
}
# }}} keybase chat hide

# {{{ keybase chat join-channel
# @cmd Join a conversation channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team-name! <team name>
# @arg channel-name! <channel name>
chat::join-channel() {
    :;
}
# }}} keybase chat join-channel

# {{{ keybase chat leave-channel
# @cmd Leave a channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team-name! <team name>
# @arg channel-name! <channel name>
chat::leave-channel() {
    :;
}
# }}} keybase chat leave-channel

# {{{ keybase chat list
# @cmd List conversations, sorted by activity.
# @alias ls
# @option -n --number <"15">       Limit number of items
# @option --time <value>           Only show updates after certain time.
# @option --since <value>          Only show updates after certain time.
# @flag --include-hidden           Include hidden conversations
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
chat::list() {
    :;
}
# }}} keybase chat list

# {{{ keybase chat list-channels
# @cmd List of channels on a team
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag -j --json                  Output channels as JSON
# @arg team-name! <team name>
chat::list-channels() {
    :;
}
# }}} keybase chat list-channels

# {{{ keybase chat list-members
# @cmd List members of a chat conversation
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag -j --json                  Output memberships as JSON
# @arg conversation
# @arg channel-name <channel name>
chat::list-members() {
    :;
}
# }}} keybase chat list-members

# {{{ keybase chat list-unread
# @cmd List conversations, with unread messages at the top.
# @alias lsur
# @option --at-least <"5">         Show at least this number of items, assuming they exist.
# @option --at-most <"100">        Show at most this number of items.
# @option --time <value>           Only show updates after certain time.
# @option --since <value>          Only show updates after certain time.
# @flag --show-device-name         Show device name next to author username
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
chat::list-unread() {
    :;
}
# }}} keybase chat list-unread

# {{{ keybase chat mark-as-read
# @cmd Mark a conversation or entire team as read.
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @arg conversation
chat::mark-as-read() {
    :;
}
# }}} keybase chat mark-as-read

# {{{ keybase chat min-writer-role
# @cmd Manage the minimum role required to write to a conversation
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @option -r --role[owner|admin|writer|reader|none]  team role
# @arg conversation
chat::min-writer-role() {
    :;
}
# }}} keybase chat min-writer-role

# {{{ keybase chat mute
# @cmd Mute or unmute a conversation.
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @flag -u --unmute                Unmute the conversation
# @arg conversation
chat::mute() {
    :;
}
# }}} keybase chat mute

# {{{ keybase chat notification-settings
# @cmd Manage personal notification settings
# @flag --new-messages            Show notifications for new messages
# @flag --plaintext-mobile        Show plaintext notifications on mobile devices
# @flag --plaintext-desktop       Show plaintext notifications on desktop devices
# @flag --default-sound-mobile    Use the default system sound on mobile devices
# @flag --disable-typing          Disable sending/receiving typing notifications
chat::notification-settings() {
    :;
}
# }}} keybase chat notification-settings

# {{{ keybase chat read
# @cmd Show new messages in a conversation and mark them as read.
# @option --at-least <"5">         Show at least this number of items, assuming they exist.
# @option --at-most <"100">        Show at most this number of items.
# @option --time <value>           Only show updates after certain time.
# @option --since <value>          Only show updates after certain time.
# @flag --show-device-name         Show device name next to author username
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @arg conversation!
chat::read() {
    :;
}
# }}} keybase chat read

# {{{ keybase chat readd-member
# @cmd Re-add a member to chat after they reset account
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg conversation!
# @arg username!
chat::readd-member() {
    :;
}
# }}} keybase chat readd-member

# {{{ keybase chat remove-bot-member
# @cmd Remove a bot or a restricted bot from a conversation
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @option -u --user <value>        username
# @arg conversation
chat::remove-bot-member() {
    :;
}
# }}} keybase chat remove-bot-member

# {{{ keybase chat remove-from-channel
# @cmd Remove one or more users from a channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team!
# @arg channel!
# @arg usernames+
chat::remove-from-channel() {
    :;
}
# }}} keybase chat remove-from-channel

# {{{ keybase chat rename-channel
# @cmd Rename a channel
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @arg team-name! <team name>
# @arg old-channel-name! <old channel name>
# @arg new-channel-name! <new channel name>
chat::rename-channel() {
    :;
}
# }}} keybase chat rename-channel

# {{{ keybase chat report
# @cmd Report a conversation (also blocks it)
# @option --topic-type <"chat">    Specify topic type of the conversation.
# @flag --public                   Only select public conversations.
# @flag --private                  Only select private conversations.
# @option --channel <value>        Specify the conversation channel.
# @arg conversation
chat::report() {
    :;
}
# }}} keybase chat report

# {{{ keybase chat retention-policy
# @cmd Manage the chat retention policy for a conversation or team
# @option --topic-type <"chat">               Specify topic type of the conversation.
# @flag --public                              Only select public conversations.
# @flag --private                             Only select private conversations.
# @option --channel <value>                   Specify the conversation channel.
# @flag --keep                                Keep messages indefinitely
# @option --expire[1d|1w|30d|3m|1y]           Delete messages after one of
# @option --explode[30s|5m|1h|6h|1d|3d|1w]    Require all messages to be exploding with a maximum lifetime of one of
# @flag --inherit                             Use the team's policy for a channel
# @arg conversation
chat::retention-policy() {
    :;
}
# }}} keybase chat retention-policy

# {{{ keybase chat search
# @cmd Search full inbox
# @option --topic-type <"chat">         Specify topic type of the conversation.
# @flag --public                        Only select public conversations.
# @flag --private                       Only select private conversations.
# @option --channel <value>             Specify the conversation channel.
# @option --max-hits <"10">             Specify the maximum number of search hits to get.
# @flag --sent-to                       Filter search results to @ mentions of the given username
# @flag --sent-by                       Filter search results by the username of the sender.
# @flag --sent-before                   Filter search results by the message creation time.
# @flag --sent-after                    Filter search results by the message creation time.
# @option -B --before-context <"0">     Print number messages of leading context before each match.
# @option -A --after-context <"0">      Print number of messages of trailing context after each match.
# @option -C --context <"2">            Print number of messages of leading and trailing context surrounding each match.
# @flag --conv                          Limit the search to a single conversation.
# @flag --force-reindex                 Ensure inbox is fully indexed before executing the search.
# @option --max-convs-searched <"0">    Specify the maximum number of conversations to search.
# @option --max-convs-hit <"0">         Specify the maximum number conversations to return search hits from.
# @flag --names-only                    Search only the names of conversations
# @arg query!
chat::search() {
    :;
}
# }}} keybase chat search

# {{{ keybase chat search-bots
# @cmd Search chat bots available on Keybase.
# @option -n --number <"10">    Number of bots to display, defaults to 10
# @arg query!
chat::search-bots() {
    :;
}
# }}} keybase chat search-bots

# {{{ keybase chat search-regexp
# @cmd Search via regex within a conversation
# @option --topic-type <"chat">        Specify topic type of the conversation.
# @flag --public                       Only select public conversations.
# @flag --private                      Only select private conversations.
# @option --channel <value>            Specify the conversation channel.
# @option --max-hits <"10">            Specify the maximum number of search hits to get.
# @flag --sent-to                      Filter search results to @ mentions of the given username
# @flag --sent-by                      Filter search results by the username of the sender.
# @flag --sent-before                  Filter search results by the message creation time.
# @flag --sent-after                   Filter search results by the message creation time.
# @option -B --before-context <"0">    Print number messages of leading context before each match.
# @option -A --after-context <"0">     Print number of messages of trailing context after each match.
# @option -C --context <"2">           Print number of messages of leading and trailing context surrounding each match.
# @flag -r --regex                     Make the given query a regex
# @option --max-messages <"10000">     Specify the maximum number of messages to search.
# @arg conversation!
# @arg query!
chat::search-regexp() {
    :;
}
# }}} keybase chat search-regexp

# {{{ keybase chat send
# @cmd Send a message to a conversation
# @option --topic-type <"chat">          Specify topic type of the conversation.
# @flag --public                         Only select public conversations.
# @flag --private                        Only select private conversations.
# @option --channel <value>              Specify the conversation channel.
# @flag --set-headline                   Set the headline for the conversation
# @flag --clear-headline                 Clear the headline for the conversation
# @flag --nonblock                       Send message without success confirmation
# @option --exploding-lifetime <"0s">    Make this message an exploding message and set the lifetime for the given duration.
# @arg conversation
# @arg message
chat::send() {
    :;
}
# }}} keybase chat send

# {{{ keybase chat upload
# @cmd Upload an attachment to a conversation
# @option --title <value>                Title of attachment (defaults to filename)
# @option --topic-type <"chat">          Specify topic type of the conversation.
# @flag --public                         Only select public conversations.
# @flag --private                        Only select private conversations.
# @option --channel <value>              Specify the conversation channel.
# @option --exploding-lifetime <"0s">    Make this message an exploding message and set the lifetime for the given duration.
# @arg conversation!
# @arg filename!
chat::upload() {
    :;
}
# }}} keybase chat upload
# }} keybase chat

# {{ keybase ctl
# @cmd Control the background keybase service
ctl() {
    :;
}

# {{{ keybase ctl start
# @cmd Start the background keybase service
ctl::start() {
    :;
}
# }}} keybase ctl start

# {{{ keybase ctl stop
# @cmd Stop Keybase
# @flag --shutdown    Only shutdown the background service
ctl::stop() {
    :;
}
# }}} keybase ctl stop

# {{{ keybase ctl reload
# @cmd Reload config file
ctl::reload() {
    :;
}
# }}} keybase ctl reload

# {{{ keybase ctl restart
# @cmd Restart the background keybase service
ctl::restart() {
    :;
}
# }}} keybase ctl restart

# {{{ keybase ctl log-rotate
# @cmd Close and open the keybase service's log file
ctl::log-rotate() {
    :;
}
# }}} keybase ctl log-rotate

# {{{ keybase ctl watchdog
# @cmd Start and monitor background services
# @alias watchdog2
ctl::watchdog() {
    :;
}
# }}} keybase ctl watchdog

# {{{ keybase ctl app-exit
# @cmd Exit the Keybase app
ctl::app-exit() {
    :;
}
# }}} keybase ctl app-exit

# {{{ keybase ctl wait
# @cmd Waits for the keybase service to start up
# @option -d --duration <"10s">    How long to wait before timing out
# @flag --include-kbfs             Wait on kbfs to start for an additional same amount of time
ctl::wait() {
    :;
}
# }}} keybase ctl wait

# {{{ keybase ctl autostart
# @cmd Configure autostart settings via the XDG autostart standard.
# @flag --enable     Toggle on Keybase, KBFS, and GUI autostart on startup.
# @flag --disable    Toggle off Keybase, KBFS, and GUI autostart on startup.
ctl::autostart() {
    :;
}
# }}} keybase ctl autostart
# }} keybase ctl

# {{ keybase currency
# @cmd Manage cryptocurrency addresses
currency() {
    :;
}

# {{{ keybase currency add
# @cmd Sign a cryptocurrency (bitcoin or zcash) address into your identity
# @flag -f --force             Overwrite an existing address.
# @option -t --type <value>    assert a type of address ('bitcoin' or 'zcash')
# @arg address!
currency::add() {
    :;
}
# }}} keybase currency add
# }} keybase currency

# {{ keybase decrypt
# @cmd Decrypt messages or files for keybase users
# @option -i --infile <file>            Specify an input file.
# @option -m --message <value>          Provide the message on the command line.
# @option -o --outfile <file>           Specify an outfile (stdout by default).
# @flag --interactive                   Interactive prompt for decryption after sender verification
# @flag -f --force                      Force unprompted decryption, even on an identify failure
# @option --paperkey <value>            Use a paper key for decryption
# @option --encryptor-outfile <file>    Write the Keybase name of the encryptor to this file
decrypt() {
    :;
}
# }} keybase decrypt

# {{ keybase deprovision
# @cmd Revoke the current device, log out, and delete local state.
deprovision() {
    :;
}
# }} keybase deprovision

# {{ keybase device
# @cmd Manage your devices
device() {
    :;
}

# {{{ keybase device remove
# @cmd Remove a device
# @flag --force-self    Force removal of the current device.
# @flag --force-last    Force removal of the last device in your account.
# @arg id-name! <id|name>
device::remove() {
    :;
}
# }}} keybase device remove

# {{{ keybase device list
# @cmd List devices
device::list() {
    :;
}
# }}} keybase device list

# {{{ keybase device add
# @cmd Authorize a new device
device::add() {
    :;
}
# }}} keybase device add
# }} keybase device

# {{ keybase encrypt
# @cmd Encrypt messages or files for keybase users and teams
# @option --team <value>              Encrypt for a team.
# @flag -b --binary                   Output in binary (rather than ASCII/armored).
# @option -i --infile <file>          Specify an input file.
# @option -m --message <value>        Provide the message on the command line.
# @option -o --outfile <file>         Specify an outfile (stdout by default).
# @flag --no-entity-keys              Do not use per user/per team keys for encryption.
# @flag --no-device-keys              Do not use the device keys of all the user recipients for encryption.
# @flag --no-paper-keys               Do not use the paper keys of all the user recipients for encryption.
# @flag --no-self-encrypt             Don't encrypt for yourself.
# @flag --include-device-keys         Use the device keys of all the user recipients and members of recipient teams for encryption.
# @flag --include-paper-keys          Use the paper keys of all the user recipients and members of recipient teams for encryption.
# @flag --include-self-encrypt        Do encrypt for yourself.
# @option --auth-type <"signed">      How to guarantee sender authenticity: signed|repudiable|anonymous.
# @option --saltpack-version <"0">    Force a specific saltpack version
# @arg usernames+
encrypt() {
    :;
}
# }} keybase encrypt

# {{ keybase follow
# @cmd Verify a user's authenticity and optionally follow them
# @alias track
# @flag -l --local               Only follow locally, don't send a public statement to the server.
# @flag -y                       Approve remote following without prompting.
# @flag -s --skip-proof-cache    Skip cached proofs, force re-check
# @arg username!
follow() {
    :;
}
# }} keybase follow

# {{ keybase fs
# @cmd Perform filesystem operations
fs() {
    :;
}

# {{{ keybase fs ls
# @cmd list directory contents
# @flag --rec                        recurse into subdirectories
# @flag --recursive                  recurse into subdirectories
# @flag --nocolor                    remove color formatting
# @flag -1 --one                     one entry per line
# @flag -a --all                     include entries starting with '.'
# @flag -l --long                    long listing
# @flag -r --sort-reverse            reverse any sorting
# @flag -t --sort-time               sort entries by modify time
# @flag -s --sort-size               sort entries by size
# @flag -w --windows                 windows style dir
# @option --rev <"0">                a revision number for the KBFS folder
# @option --time <value>             a time for the KBFS folder (eg "2018-07-27 22:05")
# @option --reltime <value>          a relative time for the KBFS folder (eg "5m")
# @option --relative-time <value>    a relative time for the KBFS folder (eg "5m")
# @arg path!
fs::ls() {
    :;
}
# }}} keybase fs ls

# {{{ keybase fs cp
# @cmd copy one or more directory elements to dest
# @flag -r --recursive               Recurse into subdirectories
# @flag -i --interactive             Prompt before overwrite
# @flag -f --force                   force overwrite
# @option --rev <"0">                a revision number for the KBFS folder of the source paths
# @option --time <value>             a time for the KBFS folder of the source paths (eg "2018-07-27 22:05")
# @option --reltime <value>          a relative time for the KBFS folder of the source paths (eg "5m")
# @option --relative-time <value>    a relative time for the KBFS folder of the source paths (eg "5m")
# @arg source
# @arg dest!
fs::cp() {
    :;
}
# }}} keybase fs cp

# {{{ keybase fs mv
# @cmd move one or more directory elements to dest
# @flag -i --interactive    Prompt before overwrite
# @flag -f --force          force overwrite
# @arg source
# @arg dest!
fs::mv() {
    :;
}
# }}} keybase fs mv

# {{{ keybase fs ln
# @cmd create a symlink from link to target
# @arg target!
# @arg link!
fs::ln() {
    :;
}
# }}} keybase fs ln

# {{{ keybase fs read
# @cmd output file contents to standard output
# @option -b --buffersize <"1600">    read buffer size
# @option --rev <"0">                 a revision number for the KBFS folder
# @option --time <value>              a time for the KBFS folder (eg "2018-07-27 22:05")
# @option --reltime <value>           a relative time for the KBFS folder (eg "5m")
# @option --relative-time <value>     a relative time for the KBFS folder (eg "5m")
# @arg path!
fs::read() {
    :;
}
# }}} keybase fs read

# {{{ keybase fs rm
# @cmd remove one or more directory elements
# @flag -r --recursive    Recursively delete everything in a directory
# @arg path*
fs::rm() {
    :;
}
# }}} keybase fs rm

# {{{ keybase fs mkdir
# @cmd create directory
# @arg path!
fs::mkdir() {
    :;
}
# }}} keybase fs mkdir

# {{{ keybase fs stat
# @cmd stat directory element
# @option --rev <"0">                a revision number for the KBFS folder
# @option --time <value>             a time for the KBFS folder (eg "2018-07-27 22:05")
# @option --reltime <value>          a relative time for the KBFS folder (eg "5m")
# @option --relative-time <value>    a relative time for the KBFS folder (eg "5m")
# @flag --show-archived              shows stats for several previous revisions
# @flag --show-last-archived         shows stats for sequential previous revisions
# @arg path!
fs::stat() {
    :;
}
# }}} keybase fs stat

# {{{ keybase fs get-status
# @cmd get status of pending operation
# @arg opid!
fs::get-status() {
    :;
}
# }}} keybase fs get-status

# {{{ keybase fs kill
# @cmd kill operation
# @arg opid!
fs::kill() {
    :;
}
# }}} keybase fs kill

# {{{ keybase fs ps
# @cmd list running operations
fs::ps() {
    :;
}
# }}} keybase fs ps

# {{{ keybase fs write
# @cmd write input to file
# @flag -a --append                   add to existing file
# @option -b --buffersize <"1600">    write buffer size
# @arg path!
fs::write() {
    :;
}
# }}} keybase fs write

# {{{ keybase fs debug
# @cmd Debug utilities
fs::debug() {
    :;
}

# {{{{ keybase fs debug dump
# @cmd Dump debugging info to the file system log
fs::debug::dump() {
    :;
}
# }}}} keybase fs debug dump

# {{{{ keybase fs debug obfuscate
# @cmd Returns the obfuscated path for a given keybase path
# @arg path!
# @arg path2-path3 <<path2> <path3>...>
fs::debug::obfuscate() {
    :;
}
# }}}} keybase fs debug obfuscate

# {{{{ keybase fs debug deobfuscate
# @cmd Returns the possible plaintext paths for a given keybase path
# @arg path!
# @arg path2-path3 <<path2> <path3>...>
fs::debug::deobfuscate() {
    :;
}
# }}}} keybase fs debug deobfuscate
# }}} keybase fs debug

# {{{ keybase fs set-debug-level
# @cmd Changes the amount of debug logging done by the file system
# @arg integer_level!
fs::set-debug-level() {
    :;
}
# }}} keybase fs set-debug-level

# {{{ keybase fs history
# @cmd output the edit history for a user or folder
# @flag -d --deletes    Show the recently-deleted files
# @arg path-to-folder
fs::history() {
    :;
}
# }}} keybase fs history

# {{{ keybase fs quota
# @cmd show quota usage for logged-in user or a team
# @flag --git               show git usage
# @flag --bytes             show all data in units of bytes
# @flag --archived          show archived usage
# @flag --json              show output in json format
# @option --team <value>    print quota usage for a team, instead of the logged-in user
fs::quota() {
    :;
}
# }}} keybase fs quota

# {{{ keybase fs recover
# @cmd recovers the given files or directories from a past revision
# @option --rev <"0">                a revision number for the KBFS recovery folder
# @option --time <value>             a time for the KBFS recovery folder (eg "2018-07-27 22:05")
# @option --reltime <value>          a relative time for the KBFS recovery folder (eg "5m")
# @option --relative-time <value>    a relative time for the KBFS recovery folder (eg "5m")
# @arg path!
# @arg path2-path3 <<path2> <path3>...>
fs::recover() {
    :;
}
# }}} keybase fs recover

# {{{ keybase fs reset
# @cmd resets the given TLF after asking for confirmation
# @option --id <value>    the ID to which to reset the folder (experts only!)
# @arg path-to-folder
fs::reset() {
    :;
}
# }}} keybase fs reset

# {{{ keybase fs clear-conflicts
# @cmd moves the conflict state of the given folder out of the way
# @arg path-to-folder!
fs::clear-conflicts() {
    :;
}
# }}} keybase fs clear-conflicts

# {{{ keybase fs finish-resolving-conflicts
# @cmd indicate that a conflict has been resolved and its local state may be cleaned
# @arg path-to-folder!
fs::finish-resolving-conflicts() {
    :;
}
# }}} keybase fs finish-resolving-conflicts

# {{{ keybase fs sync
# @cmd Manages the per-folder syncing state
fs::sync() {
    :;
}

# {{{{ keybase fs sync enable
# @cmd syncs the given folder to local storage, for offline access
# @arg path-to-sync
fs::sync::enable() {
    :;
}
# }}}} keybase fs sync enable

# {{{{ keybase fs sync disable
# @cmd Stops syncing the given folder to local storage
# @arg path-to-folder
fs::sync::disable() {
    :;
}
# }}}} keybase fs sync disable

# {{{{ keybase fs sync show
# @cmd shows the sync configuration and status for the given folder, or all folders if none is specified
# @arg path-to-folder!
fs::sync::show() {
    :;
}
# }}}} keybase fs sync show
# }}} keybase fs sync

# {{{ keybase fs uploads
# @cmd list current uploads
# @flag -a --all    include entries starting with '.'
fs::uploads() {
    :;
}
# }}} keybase fs uploads

# {{{ keybase fs cancel-uploads
# @cmd cancel all outstanding uploads in a folder
# @flag -a --all    display entries starting with '.' (does not affect what is canceled)
# @arg path-to-folder
fs::cancel-uploads() {
    :;
}
# }}} keybase fs cancel-uploads

# {{{ keybase fs search
# @cmd [disabled] search locally-synced folders
# @option -n --num-results <"10">    how many results to return
# @option -s --start-from <"0">      what number result to start from (for paging)
# @arg query!
fs::search() {
    :;
}
# }}} keybase fs search

# {{{ keybase fs reset-index
# @cmd [disabled] delete all local index storage, and resets the indexer
fs::reset-index() {
    :;
}
# }}} keybase fs reset-index

# {{{ keybase fs index-progress
# @cmd [disabled] print the current progress of the indexer
fs::index-progress() {
    :;
}
# }}} keybase fs index-progress
# }} keybase fs

# {{ keybase git
# @cmd Manage git repos
git() {
    :;
}

# {{{ keybase git create
# @cmd Create a personal or team git repository.
# @option --team <value>    keybase team name (optional)
# @flag --skip-notify       skip posting new repo notifications for team members
# @arg repo-name! <repo name>
git::create() {
    :;
}
# }}} keybase git create

# {{{ keybase git delete
# @cmd Delete a personal or team git repository.
# @option --team <value>    keybase team name (optional)
# @flag -f --force          skip confirmation
# @arg repo-name! <repo name>
git::delete() {
    :;
}
# }}} keybase git delete

# {{{ keybase git gc
# @cmd Run garbage collection on a personal or team git repository.
# @option --team <value>    keybase team name (optional)
# @flag --force             force garbage collection, even if not needed
# @arg repo-name! <repo name>
git::gc() {
    :;
}
# }}} keybase git gc

# {{{ keybase git lfs-config
# @cmd Configures a keybase git checkout to use LFS
# @option --path <path>     Location of local git checkout (default: current working dir)
# @option --repo <value>    Keybase repo URL (default: first keybase remote URL in checkout)
git::lfs-config() {
    :;
}
# }}} keybase git lfs-config

# {{{ keybase git list
# @cmd List the personal and team git repositories you have access to.
git::list() {
    :;
}
# }}} keybase git list

# {{{ keybase git settings
# @cmd View and change team repo settings
# @option --channel <value>    chat channel where git push notifications will be sent
# @flag --disable-chat         disable chat notifications for git pushes
# @arg repo-name! <repo name>
# @arg team-name! <team name>
git::settings() {
    :;
}
# }}} keybase git settings
# }} keybase git

# {{ keybase id
# @cmd Identify a user and check their signature chain
# @flag -j --json                Output requests as JSON
# @flag -s --skip-proof-cache    Skip cached proofs, force re-check
# @arg username
id() {
    :;
}
# }} keybase id

# {{ keybase kvstore
# @cmd Manage a simple cleartext key to encrypted value store
kvstore() {
    :;
}

# {{{ keybase kvstore api
# @cmd JSON API
# @flag -p --pretty              Output pretty (indented) JSON.
# @option -m <value>             Specify JSON as string instead of stdin
# @option -i --infile <file>     Specify JSON input file (stdin default)
# @option -o --outfile <file>    Specify output file (stdout default)
kvstore::api() {
    :;
}
# }}} keybase kvstore api
# }} keybase kvstore

# {{ keybase list-followers
# @cmd List those who follow you
# @flag -v --verbose    A full dump, with more gory details.
# @arg username!
list-followers() {
    :;
}
# }} keybase list-followers

# {{ keybase list-following
# @cmd List who you or the given user is publicly following
# @option -f --filter <value>    Provide a regex filter.
# @flag -H --headers             Show column headers.
# @flag -j --json                Output as JSON (default is text).
# @flag -v --verbose             A full dump, with more gory details.
# @arg username!
list-following() {
    :;
}
# }} keybase list-following

# {{ keybase log
# @cmd Manage keybase logs
log() {
    :;
}

# {{{ keybase log send
# @cmd Send recent debug logs to keybase
# @option -n <"0">              Number of bytes in each log file to read
# @flag --no-confirm            Send logs without confirming
# @option --feedback <value>    Attach a feedback message to a log send
log::send() {
    :;
}
# }}} keybase log send
# }} keybase log

# {{ keybase login
# @cmd Establish a session with the keybase server
# @flag -s --switch               switch out the current user for another
# @option --paperkey <value>      DANGEROUS: automatically provision using this paper key
# @option --devicename <value>    Device name used in automated provisioning
# @arg username
login() {
    :;
}
# }} keybase login

# {{ keybase logout
# @cmd Logout and remove session information
# @flag -f --force    If there are any reasons not to logout right now, ignore them (potentially dangerous)
logout() {
    :;
}
# }} keybase logout

# {{ keybase oneshot
# @cmd Establish a oneshot device, as in logging into keybase from a disposable container
# @option --paperkey <value>       DANGEROUS: specify a paper key (or try the KEYBASE_PAPERKEY environment variable)
# @option -u --username <value>    specify a username (or try the KEYBASE_USERNAME environment variable)
oneshot() {
    :;
}
# }} keybase oneshot

# {{ keybase paperkey
# @cmd Generate paper keys for recovering your account
paperkey() {
    :;
}
# }} keybase paperkey

# {{ keybase passphrase
# @cmd Change or recover your keybase passphrase
passphrase() {
    :;
}

# {{{ keybase passphrase change
# @cmd Change your keybase account passphrase.
# @alias set
# @flag --force    Change password without entering the current one.
passphrase::change() {
    :;
}
# }}} keybase passphrase change

# {{{ keybase passphrase recover
# @cmd Recover your keybase account passphrase
# @arg username
passphrase::recover() {
    :;
}
# }}} keybase passphrase recover

# {{{ keybase passphrase remember
# @cmd Set whether your account passphrase should be remembered across restarts.
# @flag -j --json    If no new value is provided, output the current status as a JSON boolean
# @arg bool[true|false]
passphrase::remember() {
    :;
}
# }}} keybase passphrase remember

# {{{ keybase passphrase check
# @cmd Check account passphrase.
passphrase::check() {
    :;
}
# }}} keybase passphrase check
# }} keybase passphrase

# {{ keybase pgp
# @cmd Manage keybase PGP keys
pgp() {
    :;
}

# {{{ keybase pgp gen
# @cmd Generate a new PGP key and write to local secret keychain
# @flag -d --debug             Generate small keys for debugging.
# @option --pgp-uid <value>    Specify custom PGP uid(s).
# @flag --multi                Allow multiple PGP keys.
# @flag --no-export            Disable exporting of new keys to GPG keychain.
pgp::gen() {
    :;
}
# }}} keybase pgp gen

# {{{ keybase pgp pull
# @cmd Download the latest PGP keys for people you follow.
# @arg usernames*
pgp::pull() {
    :;
}
# }}} keybase pgp pull

# {{{ keybase pgp update
# @cmd Update your public PGP keys on keybase with those exported from the local GPG keyring
# @flag --all    Update all available keys.
# @arg fingerprints*
pgp::update() {
    :;
}
# }}} keybase pgp update

# {{{ keybase pgp select
# @cmd Select a key from GnuPG as your own and register the public half with Keybase
# @flag --multi         Allow multiple PGP keys.
# @flag --import        Import private key to the local Keybase keyring.
# @flag --no-publish    Only import to Keybase keyring, do not publish on user profile.
# @arg key-query <key query>
pgp::select_() {
    :;
}
# }}} keybase pgp select

# {{{ keybase pgp sign
# @cmd PGP sign a document.
# @flag -b --binary               Output binary message (default is armored).
# @flag -c --clearsign            Generate a clearsigned text signature.
# @flag -d --detached             Detached signature (default is attached).
# @option -i --infile <file>      Specify an input file.
# @option -k --key <file>         Specify a key to use for signing (otherwise most recent PGP key is used).
# @option -m --message <value>    Provide the message to sign on the command line.
# @option -o --outfile <file>     Specify an outfile (default is STDOUT).
# @flag -t --text                 Treat input data as text and canonicalize.
pgp::sign() {
    :;
}
# }}} keybase pgp sign

# {{{ keybase pgp encrypt
# @cmd PGP encrypt messages or files for keybase users
# @flag -b --binary               Output in binary (rather than ASCII/armored).
# @option -i --infile <file>      Specify an input file.
# @option -k --key <file>         Specify a key to use (otherwise most recent PGP key is used).
# @option -m --message <value>    Provide the message on the command line.
# @flag --no-self                 Don't encrypt for self.
# @option -o --outfile <file>     Specify an outfile (stdout by default).
# @flag -s --sign                 Sign in addition to encrypting.
# @arg usernames+
pgp::encrypt() {
    :;
}
# }}} keybase pgp encrypt

# {{{ keybase pgp decrypt
# @cmd PGP decrypt messages or files for keybase users
# @option -i --infile <file>        Specify an input file.
# @option -m --message <value>      Provide the message on the command line.
# @option -o --outfile <file>       Specify an outfile (stdout by default).
# @flag -s --signed                 Assert signed.
# @option -S --signed-by <value>    Assert signed by the given user (can use user assertion format).
pgp::decrypt() {
    :;
}
# }}} keybase pgp decrypt

# {{{ keybase pgp verify
# @cmd PGP verify message or file signatures for keybase users
# @flag -d --detached               Specify a detached signature file.
# @option -i --infile <file>        Specify an input file.
# @option -m --message <value>      Provide the message on the command line.
# @option -S --signed-by <value>    Assert signed by the given user (can use user assertion format).
pgp::verify() {
    :;
}
# }}} keybase pgp verify

# {{{ keybase pgp export
# @cmd Export a PGP key from keybase
# @option -o --outfile <file>    Specify an outfile (stdout by default).
# @flag -s --secret              Export secret key.
# @flag -q --query               Only export keys matching that query.
# @flag --unencrypted            When exporting private keys, do not protect with a passphrase.
pgp::export() {
    :;
}
# }}} keybase pgp export

# {{{ keybase pgp import
# @cmd Import a PGP key into keybase
# @option -i --infile <file>    Specify an infile (stdin by default).
# @flag --push-secret           Push an encrypted copy of the secret key to the server.
pgp::import() {
    :;
}
# }}} keybase pgp import

# {{{ keybase pgp drop
# @cmd Drop Keybase's use of a PGP key
# @arg key-id!
pgp::drop() {
    :;
}
# }}} keybase pgp drop

# {{{ keybase pgp list
# @cmd List the active PGP keys in your account.
pgp::list() {
    :;
}
# }}} keybase pgp list

# {{{ keybase pgp purge
# @cmd Purge all PGP keys from Keybase keyring
# @flag -p --purge    After export, purge keys from keyring
pgp::purge() {
    :;
}
# }}} keybase pgp purge

# {{{ keybase pgp push-private
# @cmd Export PGP keys from GnuPG keychain, and write them to KBFS.
# @flag --all         push all PGP private keys currently proven in Keybase identity
# @flag -f --force    force push, and don't prompt for confirmation
# @arg fingerprints*
pgp::push-private() {
    :;
}
# }}} keybase pgp push-private

# {{{ keybase pgp pull-private
# @cmd Export PGP from KBFS and write them to the GnuPG keychain
# @flag --all         pull all PGP private keys currently proven in Keybase identity
# @flag -f --force    force pull, and don't prompt for confirmation
# @arg fingerprints*
pgp::pull-private() {
    :;
}
# }}} keybase pgp pull-private
# }} keybase pgp

# {{ keybase ping
# @cmd Ping the keybase API server
# @flag --gregor    ping the Gregor server
ping() {
    :;
}
# }} keybase ping

# {{ keybase prove
# @cmd Generate a new proof
# @flag -o --output           Output proof text to a file (rather than standard out).
# @flag -f --force            Don't prompt.
# @flag -l --list-services    List some available services
# @flag -a --all              List the full gamut of available services
# @arg service!
# @arg service-username <service username>
prove() {
    :;
}
# }} keybase prove

# {{ keybase rekey
# @cmd Rekey status and actions
rekey() {
    :;
}

# {{{ keybase rekey status
# @cmd Get pending rekey status
rekey::status() {
    :;
}
# }}} keybase rekey status

# {{{ keybase rekey paper
# @cmd Submit a paper key to help rekeying
rekey::paper() {
    :;
}
# }}} keybase rekey paper
# }} keybase rekey

# {{ keybase selfprovision
# @cmd Provision a new device if the current device is a clone.
# @arg newdevicename
selfprovision() {
    :;
}
# }} keybase selfprovision

# {{ keybase sign
# @cmd Sign a document
# @flag -b --binary                   Output binary message (default is armored).
# @flag -d --detached                 Detached signature (default is attached).
# @option -i --infile <file>          Specify an input file.
# @option -m --message <value>        Provide the message to sign on the command line.
# @option -o --outfile <file>         Specify an outfile (default is STDOUT).
# @option --saltpack-version <"0">    Force a specific saltpack version
sign() {
    :;
}
# }} keybase sign

# {{ keybase signup
# @cmd Signup for a new account
# @option -c --invite-code <value>    Specify an invite code.
# @option --email <value>             Specify an account email.
# @option --username <value>          Specify a username.
# @flag --no-email                    Do not signup with email.
# @option --set-password <value>      Ask for password (optional by default).
# @flag --force                       (dangerous) Ignore any reasons not to signup right now
signup() {
    :;
}
# }} keybase signup

# {{ keybase sigs
# @cmd Manage signatures
sigs() {
    :;
}

# {{{ keybase sigs list
# @cmd List signatures
# @flag -r --revoked             Include revoked signatures.
# @flag -j --json                Output as JSON (default is text).
# @flag -v --verbose             A full dump, with more gory details.
# @option -t --type <value>      Type of sig to output: follow, proof, cryptocurrency, self, all (default is all).
# @flag -a --all-keys            Show signatures from all (replaced) keys.
# @flag -H --headers             Show column headers.
# @option -f --filter <value>    Provide a regex filter.
# @arg username
sigs::list() {
    :;
}
# }}} keybase sigs list

# {{{ keybase sigs revoke
# @cmd revoke a signature by sig ID
# @arg sig-id!
sigs::revoke() {
    :;
}
# }}} keybase sigs revoke
# }} keybase sigs

# {{ keybase status
# @cmd Show information about current user
# @flag -j --json    Output status as JSON
status() {
    :;
}
# }} keybase status

# {{ keybase team
# @cmd Manage teams
team() {
    :;
}

# {{{ keybase team accept-invite
# @cmd Accept a team email invitation.
# @option --token <value>    token
team::accept-invite() {
    :;
}
# }}} keybase team accept-invite

# {{{ keybase team add-member
# @cmd Add a user to a team.
# @option -u --user <value>                    username
# @option -e --email <value>                   email address to invite
# @option -p --phone <value>                   phone number to invite
# @option -r --role[owner|admin|writer|reader|bot|restrictedbot]  team role [required]
# @flag -s --skip-chat-message                 skip chat welcome message
# @option -m --email-invite-message <value>    send a welcome message along with your email invitation
# @flag --allow-commands                       Restricted bots will receive messages that begin with commands they support.
# @flag --allow-mentions                       Restricted bots will receive messages when they are @-mentioned.
# @flag --allow-trigger                        Restricted bots will receive messages that match the given text.
# @flag --allow-conversation                   Restricted bots will only be able to send/receive messages in the given conversations.
# @arg team-name! <team name>
team::add-member() {
    :;
}
# }}} keybase team add-member

# {{{ keybase team add-members-bulk
# @cmd Add users to a team in bulk.
# @option -b --bots* <value>                   specify bots to add
# @option -r --readers* <value>                specify readers to add
# @option -w --writers* <value>                specify writers to add
# @option -a --admins* <value>                 specify admins to add
# @option -o --owners* <value>                 specify owners to add
# @flag -s --skip-chat-message                 skip chat welcome message
# @option -m --email-invite-message <value>    send a welcome message along with your email invitation
# @arg team-name! <team name>
team::add-members-bulk() {
    :;
}
# }}} keybase team add-members-bulk

# {{{ keybase team api
# @cmd JSON API
# @flag -p --pretty              Output pretty (indented) JSON.
# @option -m <value>             Specify JSON as string instead of stdin
# @option -i --infile <file>     Specify JSON input file (stdin default)
# @option -o --outfile <file>    Specify output file (stdout default)
team::api() {
    :;
}
# }}} keybase team api

# {{{ keybase team bot-settings
# @cmd Modify the bot settings of the given user.
# @flag --allow-commands        Restricted bots will receive messages that begin with commands they support.
# @flag --allow-mentions        Restricted bots will receive messages when they are @-mentioned.
# @flag --allow-trigger         Restricted bots will receive messages that match the given text.
# @flag --allow-conversation    Restricted bots will only be able to send/receive messages in the given conversations.
# @option -u --user <value>     username
# @arg team-name! <team name>
team::bot-settings() {
    :;
}
# }}} keybase team bot-settings

# {{{ keybase team create
# @cmd Create a team or a subteam.
# @flag -j --join-subteam    join subteam after creating it (off by default)
# @arg team-name! <team name>
team::create() {
    :;
}
# }}} keybase team create

# {{{ keybase team delete
# @cmd Delete a team.
# @arg team-name! <team name>
team::delete() {
    :;
}
# }}} keybase team delete

# {{{ keybase team edit-member
# @cmd Change a user's role on a team.
# @option -u --user <value>     username
# @option -r --role[owner|admin|writer|reader|bot|restrictedbot]  team role
# @flag --allow-commands        Restricted bots will receive messages that begin with commands they support.
# @flag --allow-mentions        Restricted bots will receive messages when they are @-mentioned.
# @flag --allow-trigger         Restricted bots will receive messages that match the given text.
# @flag --allow-conversation    Restricted bots will only be able to send/receive messages in the given conversations.
# @arg team-name! <team name>
team::edit-member() {
    :;
}
# }}} keybase team edit-member

# {{{ keybase team generate-invite-token
# @cmd Generate an invite token that you can send via iMessage, or similar.
# @option -r --role[admin|writer|reader]    team role [required]
# @option --fullname <value>                invitee's name
# @option --number <value>                  invitee's phone number
# @arg team-name! <team name>
team::generate-invite-token() {
    :;
}
# }}} keybase team generate-invite-token

# {{{ keybase team ignore-request
# @cmd Ignore request to join a team.
# @option -u --user <value>    username
# @arg team-name! <team name>
team::ignore-request() {
    :;
}
# }}} keybase team ignore-request

# {{{ keybase team leave
# @cmd Leave a team.
# @flag -p --permanent    Prevent being re-added to team
# @arg team-name! <team name>
team::leave() {
    :;
}
# }}} keybase team leave

# {{{ keybase team list-memberships
# @cmd List your teams, or people on a team.
# @alias list-members
# @flag -j --json              Output memberships as JSON
# @option -u --user <value>    List memberships for a user assertion
# @flag --all                  Show all members of all teams you belong to
# @flag --show-invite-id       Show invite IDs
# @flag -v --verbose           Include more verbose output
# @arg team-name <team name>
team::list-memberships() {
    :;
}
# }}} keybase team list-memberships

# {{{ keybase team list-requests
# @cmd List requests to join teams.
# @flag -j --json              Output requests as JSON
# @option -t --team <value>    List request for specific team
team::list-requests() {
    :;
}
# }}} keybase team list-requests

# {{{ keybase team remove-member
# @cmd Remove a user from a team.
# @option -u --user <value>      keybase username or social assertion (e.g., foo@twitter)
# @option -e --email <value>     cancel a pending invite by email address
# @option -p --phone <value>     cancel a pending invite by phone number
# @option --invite-id <value>    cancel a pending invite by ID
# @flag -f --force               don't ask for confirmation
# @flag -r --recursive           recursively remove member from subtree as well; cannot be used with --invite-id
# @arg team-name! <team name>
team::remove-member() {
    :;
}
# }}} keybase team remove-member

# {{{ keybase team rename
# @cmd Change the name of a subteam.
# @arg team-name! <team name>
# @arg new-name! <new name>
team::rename() {
    :;
}
# }}} keybase team rename

# {{{ keybase team request-access
# @cmd Request access to a team.
# @arg team-name! <team name>
team::request-access() {
    :;
}
# }}} keybase team request-access

# {{{ keybase team search
# @cmd Search for open teams on Keybase.
# @option --limit <"3">    How many teams to return at most (default 3)
# @arg query!
team::search() {
    :;
}
# }}} keybase team search

# {{{ keybase team settings
# @cmd Edit team settings.
# @flag -p --print                             Print all your team settings
# @option --description <value>                Set the team description
# @option --open-team[reader|writer|off]       Set whether anyone can join without being invited and the role they become
# @option --profile-promote[yes|no]            Set whether your own profile should promote this team and its description
# @option --allow-profile-promote[yes|no]      Set whether non-admins are allowed to promote this team and its description on their profiles
# @option --showcase[yes|no]                   Set whether to promote this team and its description on keybase.io/popular-teams
# @option --disable-access-requests[yes|no]    Set whether it should be possible to access request to this team
# @arg team-name! <team name>
team::settings() {
    :;
}
# }}} keybase team settings

# {{{ keybase team show-tree
# @cmd Show a team's subteams.
# @arg team-name! <team name>
team::show-tree() {
    :;
}
# }}} keybase team show-tree
# }} keybase team

# {{ keybase unfollow
# @cmd Unfollow a user
# @alias untrack
# @arg username!
unfollow() {
    :;
}
# }} keybase unfollow

# {{ keybase update
# @cmd The updater
update() {
    :;
}

# {{{ keybase update check
# @cmd Check for update
update::check() {
    :;
}
# }}} keybase update check

# {{{ keybase update check-in-use
# @cmd Check if we are in use (safe for restart)
update::check-in-use() {
    :;
}
# }}} keybase update check-in-use

# {{{ keybase update notify
# @cmd Notify the service about an update event
# @flag -f --force    Force action
# @arg event!
update::notify() {
    :;
}
# }}} keybase update notify
# }} keybase update

# {{ keybase verify
# @cmd Verify message or file signatures for keybase users
# @flag -d --detached               Specify a detached signature file.
# @option -i --infile <file>        Specify an input file.
# @option -m --message <value>      Provide the message to verify on the command line.
# @flag --no-output                 Don't output the verified message.
# @option -o --outfile <file>       Specify an outfile (stdout by default).
# @option -S --signed-by <value>    Assert signed by the given user (can use user assertion format).
# @flag -f --force                  Output the verified message even if the sender's identity can't be verified
verify() {
    :;
}
# }} keybase verify

# {{ keybase version
# @cmd Print out version and build information
# @option -f --format <value>    Alternate format for version output.
# @flag -S --no-service          Don't report on the service's build information
# @flag --assert-matching        Return with a successful exit code iff the client binary, the service, KBFS, and the GUI (if they are running) all have matching versions.
version() {
    :;
}
# }} keybase version

# {{ keybase wallet
# @cmd Send and receive Stellar XLM
wallet() {
    :;
}

# {{{ keybase wallet balances
# @cmd Show account balances
# @alias list,accounts
wallet::balances() {
    :;
}
# }}} keybase wallet balances

# {{{ keybase wallet detail
# @cmd Show payment details
# @alias details
# @arg transaction-id! <transaction ID>
wallet::detail() {
    :;
}
# }}} keybase wallet detail

# {{{ keybase wallet export
# @cmd Export a stellar account's secret key
# @arg account-id <account ID>
wallet::export() {
    :;
}
# }}} keybase wallet export
# }} keybase wallet

# {{ keybase whoami
# @cmd Output the name of the current user; will exit with a non-zero status if none
# @flag --uid        Output the UID instead of the username
# @flag -j --json    Output as JSON
whoami() {
    :;
}
# }} keybase whoami

# {{ keybase service
# @cmd start the Keybase service to power all other CLI options
# @option --chdir <dir>                    Specify where to run as a daemon (via chdir)
# @option --label <value>                  Specifying a label can help identify services.
# @option --auto-forked <value>            Specify if this binary was auto-forked from the client
# @option --watchdog-forked <value>        Specify if this binary was started by the watchdog
# @option -u --oneshot-username <value>    In oneshot mode, startup with username
# @option -p --oneshot-paperkey <value>    In oneshot mode, startup with paperkey; DANGEROUS to pass paperkey as a parameter
service() {
    :;
}
# }} keybase service

# {{ keybase advanced
# @cmd Description of advanced global options
advanced() {
    :;
}
# }} keybase advanced

# {{ keybase gpg
# @cmd Description of how keybase interacts with GPG
gpg() {
    :;
}
# }} keybase gpg

# {{ keybase keyring
# @cmd Description of how keybase stores secret keys locally
keyring() {
    :;
}
# }} keybase keyring

# {{ keybase tor
# @cmd Description of how keybase works with Tor
tor() {
    :;
}
# }} keybase tor

command eval "$(argc --argc-eval "$0" "$@")"