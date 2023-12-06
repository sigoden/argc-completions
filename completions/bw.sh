#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --pretty                 Format output.
# @flag --raw                    Return raw output instead of a descriptive message.
# @flag --response               Return a JSON formatted version of response output.
# @flag --cleanexit              Exit with a success exit code (0) unless an error is thrown.
# @flag --quiet                  Don't return anything to stdout.
# @flag --nointeraction          Do not prompt for interactive user input.
# @option --session <session>    Pass session key instead of reading from env.
# @flag -v --version             output the version number
# @flag -h --help                display help for command

# {{ bw login
# @cmd Log into a user account.
# @option --method <method>                Two-step login method.
# @option --code <code>                    Two-step login code.
# @flag --sso                              Log in with Single-Sign On.
# @flag --apikey                           Log in with an Api Key.
# @option --passwordenv <passwordenv>      Environment variable storing your password
# @option --passwordfile <passwordfile>    Path to a file containing your password as its first line
# @flag --check                            Check login status.
# @flag -h --help                          display help for command
# @arg email
# @arg password
login() {
    :;
}
# }} bw login

# {{ bw logout
# @cmd Log out of the current user account.
# @flag -h --help    display help for command
logout() {
    :;
}
# }} bw logout

# {{ bw lock
# @cmd Lock the vault and destroy active session keys.
# @flag -h --help    display help for command
lock() {
    :;
}
# }} bw lock

# {{ bw unlock
# @cmd Unlock the vault and return a new session key.
# @flag --check                            Check lock status.
# @option --passwordenv <passwordenv>      Environment variable storing your password
# @option --passwordfile <passwordfile>    Path to a file containing your password as its first line
# @flag -h --help                          display help for command
# @arg password
unlock() {
    :;
}
# }} bw unlock

# {{ bw sync
# @cmd Pull the latest vault data from server.
# @flag -f --force    Force a full sync.
# @flag --last        Get the last sync date.
# @flag -h --help     display help for command
sync() {
    :;
}
# }} bw sync

# {{ bw generate
# @cmd Generate a password/passphrase.
# @flag -u --uppercase               Include uppercase characters.
# @flag -l --lowercase               Include lowercase characters.
# @flag -n --number                  Include numeric characters.
# @flag -s --special                 Include special characters.
# @flag -p --passphrase              Generate a passphrase.
# @option --length <length>          Length of the password.
# @option --words <words>            Number of words.
# @option --minNumber <count>        Minimum number of numeric characters.
# @option --minSpecial <count>       Minimum number of special characters.
# @option --separator <separator>    Word separator.
# @flag -c --capitalize              Title case passphrase.
# @flag --includeNumber              Passphrase includes number.
# @flag --ambiguous                  Avoid ambiguous characters.
# @flag -h --help                    display help for command
generate() {
    :;
}
# }} bw generate

# {{ bw encode
# @cmd Base 64 encode stdin.
# @flag -h --help    display help for command
encode() {
    :;
}
# }} bw encode

# {{ bw config
# @cmd Configure CLI settings.
# @option --web-vault <url>        Provides a custom web vault URL that differs from the base URL.
# @option --api <url>              Provides a custom API URL that differs from the base URL.
# @option --identity <url>         Provides a custom identity URL that differs from the base URL.
# @option --icons <url>            Provides a custom icons service URL that differs from the base URL.
# @option --notifications <url>    Provides a custom notifications URL that differs from the base URL.
# @option --events <url>           Provides a custom events URL that differs from the base URL.
# @option --key-connector <url>    Provides the URL for your Key Connector server.
# @flag -h --help                  display help for command
# @arg setting!
# @arg value
config() {
    :;
}
# }} bw config

# {{ bw update
# @cmd Check for updates.
# @flag -h --help    display help for command
update() {
    :;
}
# }} bw update

# {{ bw completion
# @cmd Generate shell completions.
# @option --shell <shell>    Shell to generate completions for.
# @flag -h --help            display help for command
completion() {
    :;
}
# }} bw completion

# {{ bw status
# @cmd Show server, last sync, user information, and vault status.
# @flag -h --help    display help for command
status() {
    :;
}
# }} bw status

# {{ bw serve
# @cmd Start a RESTful API webserver.
# @option --hostname <hostname>        The hostname to bind your API webserver to.
# @option --port <port>                The port to run your API webserver on.
# @flag --disable-origin-protection    If set, allows requests with origin header.
# @flag -h --help                      display help for command
serve() {
    :;
}
# }} bw serve

# {{ bw list
# @cmd List an array of objects from the vault.
# @option --search <search>                    Perform a search on the listed objects.
# @option --url <url>                          Filter items of type login with a url-match search.
# @option --folderid <folderid>                Filter items by folder id.
# @option --collectionid <collectionid>        Filter items by collection id.
# @option --organizationid <organizationid>    Filter items or collections by organization id.
# @flag --trash                                Filter items that are deleted and in the trash.
# @flag -h --help                              display help for command
# @arg object[items|folders|collections|org-collections|org-members|organizations]  Valid objects are: items, folders, collections, org-collections, org-members, organizations
list() {
    :;
}
# }} bw list

# {{ bw get
# @cmd Get an object from the vault.
# @option --itemid <itemid>                    Attachment's item id.
# @option --output <output>                    Output directory or filename for attachment.
# @option --organizationid <organizationid>    Organization id for an organization object.
# @flag -h --help                              display help for command
# @arg object[item|username|password|uri|totp|notes|exposed|attachment|folder|collection|org-collection|organization|template|fingerprint|send]  Valid objects are: item, username, password, uri, totp, notes, exposed, attachment, folder, collection, org-collection, organization, template, fingerprint, send
# @arg id                                      Search term or object's globally unique `id`.
get() {
    :;
}
# }} bw get

# {{ bw create
# @cmd Create an object in the vault.
# @option --file <file>                        Path to file for attachment.
# @option --itemid <itemid>                    Attachment's item id.
# @option --organizationid <organizationid>    Organization id for an organization object.
# @flag -h --help                              display help for command
# @arg object[item|attachment|folder|org-collection]  Valid objects are: item, attachment, folder, org-collection
# @arg encodedjson                             Encoded json of the object to create.
create() {
    :;
}
# }} bw create

# {{ bw edit
# @cmd Edit an object from the vault.
# @option --organizationid <organizationid>    Organization id for an organization object.
# @flag -h --help                              display help for command
# @arg object[item|item-collections|folder|org-collection]  Valid objects are: item, item-collections, folder, org-collection
# @arg id                                      Object's globally unique `id`.
# @arg encodedjson                             Encoded json of the object to create.
edit() {
    :;
}
# }} bw edit

# {{ bw delete
# @cmd Delete an object from the vault.
# @option --itemid <itemid>                    Attachment's item id.
# @option --organizationid <organizationid>    Organization id for an organization object.
# @flag -p --permanent                         Permanently deletes the item instead of soft-deleting it (item only).
# @flag -h --help                              display help for command
# @arg object[item|attachment|folder|org-collection]  Valid objects are: item, attachment, folder, org-collection
# @arg id                                      Object's globally unique `id`.
delete() {
    :;
}
# }} bw delete

# {{ bw restore
# @cmd Restores an object from the trash.
# @flag -h --help    display help for command
# @arg object        Valid objects are: item
# @arg id            Object's globally unique `id`.
restore() {
    :;
}
# }} bw restore

# {{ bw move
# @cmd Move an item to an organization.
# @flag -h --help        display help for command
# @arg id                Object's globally unique `id`.
# @arg organizationid    Organization's globally unique `id`.
# @arg encodedjson       Encoded json of an array of collection ids.
move() {
    :;
}
# }} bw move

# {{ bw confirm
# @cmd Confirm an object to the organization.
# @option --organizationid <organizationid>    Organization id for an organization object.
# @flag -h --help                              display help for command
# @arg object                                  Valid objects are: org-member
# @arg id                                      Object's globally unique `id`.
confirm() {
    :;
}
# }} bw confirm

# {{ bw import
# @cmd Import vault data from a file.
# @flag --formats                              List formats
# @option --organizationid <organizationid>    ID of the organization to import to.
# @flag -h --help                              display help for command
# @arg format                                  The format of [input]
# @arg input                                   Filepath to data to import
import() {
    :;
}
# }} bw import

# {{ bw export
# @cmd Export vault data to a CSV or JSON file.
# @option --output <output>                    Output directory or filename.
# @option --format <format>                    Export file format.
# @option --password <password>                Use password to encrypt instead of your Bitwarden account encryption key.
# @option --organizationid <organizationid>    Organization id for an organization.
# @flag -h --help                              display help for command
export() {
    :;
}
# }} bw export

# {{ bw share
# @cmd --DEPRECATED-- Move an item to an organization.
# @flag -h --help        display help for command
# @arg id                Object's globally unique `id`.
# @arg organizationid    Organization's globally unique `id`.
# @arg encodedjson       Encoded json of an array of collection ids.
share() {
    :;
}
# }} bw share

# {{ bw send
# @cmd Work with Bitwarden sends.
# @flag -f --file                         Specifies that <data> is a filepath
# @option -d --deleteInDays <days>        The number of days in the future to set deletion date, defaults to 7 (default: "7")
# @option -a --maxAccessCount <amount>    The amount of max possible accesses.
# @flag --hidden                          Hide <data> in web by default.
# @option -n --name <name>                The name of the Send.
# @option --notes <notes>                 Notes to add to the Send.
# @flag --fullObject                      Specifies that the full Send object should be returned rather than just the access url.
# @flag -h --help                         display help for command
# @arg data                               The data to Send.
send() {
    :;
}

# {{{ bw send list
# @cmd List all the Sends owned by you
# @flag -h --help    display help for command
send::list() {
    :;
}
# }}} bw send list

# {{{ bw send template
# @cmd Get json templates for send objects
# @flag -h --help    display help for command
# @arg object        Valid objects are: send.text, send.file
send::template() {
    :;
}
# }}} bw send template

# {{{ bw send get
# @cmd Get Sends owned by you.
# @option --output <output>    Output directory or filename for attachment.
# @flag --text                 Specifies to return the text content of a Send
# @flag -h --help              display help for command
# @arg id!
send::get() {
    :;
}
# }}} bw send get

# {{{ bw send receive
# @cmd Access a Bitwarden Send from a url
# @option --password <password>            Password needed to access the Send.
# @option --passwordenv <passwordenv>      Environment variable storing the Send's password
# @option --passwordfile <passwordfile>    Path to a file containing the Sends password as its first line
# @flag --obj                              Return the Send's json object rather than the Send's content
# @option --output <location>              Specify a file path to save a File-type Send to
# @flag -h --help                          display help for command
# @arg url!
send::receive() {
    :;
}
# }}} bw send receive

# {{{ bw send create
# @cmd create a Send
# @option --file <path>            file to Send.
# @option --text <text>            text to Send.
# @flag --hidden                   text hidden flag.
# @option --password <password>    optional password to access this Send.
# @flag -h --help                  display help for command
# @arg encodedjson                 JSON object to upload.
send::create() {
    :;
}
# }}} bw send create

# {{{ bw send edit
# @cmd edit a Send
# @option --itemid <itemid>    Overrides the itemId provided in [encodedJson]
# @flag -h --help              display help for command
# @arg encodedjson             Updated JSON object to save.
send::edit() {
    :;
}
# }}} bw send edit

# {{{ bw send remove-password
# @cmd removes the saved password from a Send.
# @flag -h --help    display help for command
# @arg id            The id of the Send to alter.
send::remove-password() {
    :;
}
# }}} bw send remove-password

# {{{ bw send delete
# @cmd delete a Send
# @flag -h --help    display help for command
# @arg id            The id of the Send to delete.
send::delete() {
    :;
}
# }}} bw send delete
# }} bw send

# {{ bw receive
# @cmd Access a Bitwarden Send from a url
# @option --password <password>            Password needed to access the Send.
# @option --passwordenv <passwordenv>      Environment variable storing the Send's password
# @option --passwordfile <passwordfile>    Path to a file containing the Sends password as its first line
# @flag --obj                              Return the Send's json object rather than the Send's content
# @option --output <location>              Specify a file path to save a File-type Send to
# @flag -h --help                          display help for command
# @arg url!
receive() {
    :;
}
# }} bw receive

# {{ bw echo
# @cmd
echo_() {
    :;
}
# }} bw echo

command eval "$(argc --argc-eval "$0" "$@")"