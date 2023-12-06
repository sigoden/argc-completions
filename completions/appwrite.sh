#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version    output the version number
# @flag --verbose       Show complete error log
# @flag --json          Output in JSON format
# @flag -h --help       display help for command

# {{ appwrite account
# @cmd The account command allows you to authenticate and manage a user account.
# @flag -h --help    display help for command
account() {
    :;
}

# {{{ appwrite account get
# @cmd Get the currently logged in user.
# @flag -h --help    display help for command
account::get() {
    :;
}
# }}} appwrite account get

# {{{ appwrite account create
# @cmd Use this endpoint to allow a new user to register a new account in your project.
# @option --userId <userId>        Unique Id.
# @option --email <email>          User email.
# @option --password <password>    New user password.
# @option --name <name>            User name.
# @flag -h --help                  display help for command
account::create() {
    :;
}
# }}} appwrite account create

# {{{ appwrite account updateEmail
# @cmd Update currently logged in user account email address.
# @option --email <email>          User email.
# @option --password <password>    User password.
# @flag -h --help                  display help for command
account::updateEmail() {
    :;
}
# }}} appwrite account updateEmail

# {{{ appwrite account listIdentities
# @cmd Get the list of identities for the currently logged in user.
# @option --queries[userId|provider|providerUid|providerEmail|providerAccessTokenExpiry] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help    display help for command
account::listIdentities() {
    :;
}
# }}} appwrite account listIdentities

# {{{ appwrite account deleteIdentity
# @cmd Delete an identity by its unique ID.
# @option --identityId <identityId>    Identity ID.
# @flag -h --help                      display help for command
account::deleteIdentity() {
    :;
}
# }}} appwrite account deleteIdentity

# {{{ appwrite account createJWT
# @cmd Use this endpoint to create a JSON Web Token.
# @flag -h --help    display help for command
account::createJWT() {
    :;
}
# }}} appwrite account createJWT

# {{{ appwrite account listLogs
# @cmd Get the list of latest security activity logs for the currently logged in user.
# @option --queries* <queries>    Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                 display help for command
account::listLogs() {
    :;
}
# }}} appwrite account listLogs

# {{{ appwrite account updateName
# @cmd Update currently logged in user account name.
# @option --name <name>    User name.
# @flag -h --help          display help for command
account::updateName() {
    :;
}
# }}} appwrite account updateName

# {{{ appwrite account updatePassword
# @cmd Update currently logged in user password.
# @option --password <password>          New user password.
# @option --oldPassword <oldPassword>    Current user password.
# @flag -h --help                        display help for command
account::updatePassword() {
    :;
}
# }}} appwrite account updatePassword

# {{{ appwrite account updatePhone
# @cmd Update the currently logged in user's phone number.
# @option --phone <phone>          Phone number.
# @option --password <password>    User password.
# @flag -h --help                  display help for command
account::updatePhone() {
    :;
}
# }}} appwrite account updatePhone

# {{{ appwrite account getPrefs
# @cmd Get the preferences as a key-value object for the currently logged in user.
# @flag -h --help    display help for command
account::getPrefs() {
    :;
}
# }}} appwrite account getPrefs

# {{{ appwrite account updatePrefs
# @cmd Update currently logged in user account preferences.
# @option --prefs <prefs>    Prefs key-value JSON object.
# @flag -h --help            display help for command
account::updatePrefs() {
    :;
}
# }}} appwrite account updatePrefs

# {{{ appwrite account createRecovery
# @cmd Sends the user an email with a temporary secret key for password reset.
# @option --email <email>    User email.
# @option --url <url>        URL to redirect the user back to your app from the recovery email.
# @flag -h --help            display help for command
account::createRecovery() {
    :;
}
# }}} appwrite account createRecovery

# {{{ appwrite account updateRecovery
# @cmd Use this endpoint to complete the user account password reset.
# @option --userId <userId>                  User ID.
# @option --secret <secret>                  Valid reset token.
# @option --password <password>              New user password.
# @option --passwordAgain <passwordAgain>    Repeat new user password.
# @flag -h --help                            display help for command
account::updateRecovery() {
    :;
}
# }}} appwrite account updateRecovery

# {{{ appwrite account listSessions
# @cmd Get the list of active sessions across different devices for the currently logged in user.
# @flag -h --help    display help for command
account::listSessions() {
    :;
}
# }}} appwrite account listSessions

# {{{ appwrite account deleteSessions
# @cmd Delete all sessions from the user account and remove any sessions cookies from the end client.
# @flag -h --help    display help for command
account::deleteSessions() {
    :;
}
# }}} appwrite account deleteSessions

# {{{ appwrite account createAnonymousSession
# @cmd Use this endpoint to allow a new user to register an anonymous account in your project.
# @flag -h --help    display help for command
account::createAnonymousSession() {
    :;
}
# }}} appwrite account createAnonymousSession

# {{{ appwrite account createEmailSession
# @cmd Allow the user to login into their account by providing a valid email and password combination.
# @option --email <email>          User email.
# @option --password <password>    User password.
# @flag -h --help                  display help for command
account::createEmailSession() {
    :;
}
# }}} appwrite account createEmailSession

# {{{ appwrite account createMagicURLSession
# @cmd Sends the user an email with a secret key for creating a session.
# @option --userId <userId>    Unique Id.
# @option --email <email>      User email.
# @option --url <url>          URL to redirect the user back to your app from the magic URL login.
# @flag -h --help              display help for command
account::createMagicURLSession() {
    :;
}
# }}} appwrite account createMagicURLSession

# {{{ appwrite account updateMagicURLSession
# @cmd Use this endpoint to complete creating the session with the Magic URL.
# @option --userId <userId>    User ID.
# @option --secret <secret>    Valid verification token.
# @flag -h --help              display help for command
account::updateMagicURLSession() {
    :;
}
# }}} appwrite account updateMagicURLSession

# {{{ appwrite account createOAuth2Session
# @cmd Allow the user to login to their account using the OAuth2 provider of their choice.
# @option --provider[amazon|apple|auth0|authentik|autodesk|bitbucket|bitly|box|dailymotion|discord|disqus|dropbox|etsy|facebook|github|gitlab|google|linkedin|microsoft|notion|oidc|okta|paypal|paypalSandbox|podio|salesforce|slack|spotify|stripe|tradeshift|tradeshiftBox|twitch|wordpress|yahoo|yammer|yandex|zoom] <provider>  OAuth2 Provider.
# @option --success <success>    URL to redirect back to your app after a successful login attempt.
# @option --failure <failure>    URL to redirect back to your app after a failed login attempt.
# @option --scopes* <scopes>     A list of custom OAuth2 scopes.
# @flag -h --help                display help for command
account::createOAuth2Session() {
    :;
}
# }}} appwrite account createOAuth2Session

# {{{ appwrite account createPhoneSession
# @cmd Sends the user an SMS with a secret key for creating a session.
# @option --userId <userId>    Unique Id.
# @option --phone <phone>      Phone number.
# @flag -h --help              display help for command
account::createPhoneSession() {
    :;
}
# }}} appwrite account createPhoneSession

# {{{ appwrite account updatePhoneSession
# @cmd Use this endpoint to complete creating a session with SMS.
# @option --userId <userId>    User ID.
# @option --secret <secret>    Valid verification token.
# @flag -h --help              display help for command
account::updatePhoneSession() {
    :;
}
# }}} appwrite account updatePhoneSession

# {{{ appwrite account getSession
# @cmd Use this endpoint to get a logged in user's session using a Session ID.
# @option --sessionId <sessionId>    Session ID.
# @flag -h --help                    display help for command
account::getSession() {
    :;
}
# }}} appwrite account getSession

# {{{ appwrite account updateSession
# @cmd Access tokens have limited lifespan and expire to mitigate security risks.
# @option --sessionId <sessionId>    Session ID.
# @flag -h --help                    display help for command
account::updateSession() {
    :;
}
# }}} appwrite account updateSession

# {{{ appwrite account deleteSession
# @cmd Logout the user.
# @option --sessionId <sessionId>    Session ID.
# @flag -h --help                    display help for command
account::deleteSession() {
    :;
}
# }}} appwrite account deleteSession

# {{{ appwrite account updateStatus
# @cmd Block the currently logged in user account.
# @flag -h --help    display help for command
account::updateStatus() {
    :;
}
# }}} appwrite account updateStatus

# {{{ appwrite account createVerification
# @cmd Use this endpoint to send a verification message to your user email address to confirm they are the valid owners of that address.
# @option --url <url>    URL to redirect the user back to your app from the verification email.
# @flag -h --help        display help for command
account::createVerification() {
    :;
}
# }}} appwrite account createVerification

# {{{ appwrite account updateVerification
# @cmd Use this endpoint to complete the user email verification process.
# @option --userId <userId>    User ID.
# @option --secret <secret>    Valid verification token.
# @flag -h --help              display help for command
account::updateVerification() {
    :;
}
# }}} appwrite account updateVerification

# {{{ appwrite account createPhoneVerification
# @cmd Use this endpoint to send a verification SMS to the currently logged in user.
# @flag -h --help    display help for command
account::createPhoneVerification() {
    :;
}
# }}} appwrite account createPhoneVerification

# {{{ appwrite account updatePhoneVerification
# @cmd Use this endpoint to complete the user phone verification process.
# @option --userId <userId>    User ID.
# @option --secret <secret>    Valid verification token.
# @flag -h --help              display help for command
account::updatePhoneVerification() {
    :;
}
# }}} appwrite account updatePhoneVerification
# }} appwrite account

# {{ appwrite assistant
# @cmd The assistant command allows you to interact with the Appwrite Assistant AI
# @flag -h --help    display help for command
assistant() {
    :;
}

# {{{ appwrite assistant chat
# @cmd
# @option --prompt <prompt>    Prompt.
# @flag -h --help              display help for command
assistant::chat() {
    :;
}
# }}} appwrite assistant chat
# }} appwrite assistant

# {{ appwrite avatars
# @cmd The avatars command aims to help you complete everyday tasks related to your app image, icons, and avatars.
# @flag -h --help    display help for command
avatars() {
    :;
}

# {{{ appwrite avatars getBrowser
# @cmd You can use this endpoint to show different browser icons to your users.
# @option --code <code>           Browser Code.
# @option --width <width>         Image width.
# @option --height <height>       Image height.
# @option --quality <quality>     Image quality.
# @option --destination <path>    output file path.
# @flag -h --help                 display help for command
avatars::getBrowser() {
    :;
}
# }}} appwrite avatars getBrowser

# {{{ appwrite avatars getCreditCard
# @cmd The credit card endpoint will return you the icon of the credit card provider you need.
# @option --code[amex|argencard|cabal|censosud|diners|discover|elo|hipercard|jcb|mastercard|naranja|targeta-shopping|union-china-pay|visa|mir|maestro] <code>  Credit Card Code.
# @option --width <width>         Image width.
# @option --height <height>       Image height.
# @option --quality <quality>     Image quality.
# @option --destination <path>    output file path.
# @flag -h --help                 display help for command
avatars::getCreditCard() {
    :;
}
# }}} appwrite avatars getCreditCard

# {{{ appwrite avatars getFavicon
# @cmd Use this endpoint to fetch the favorite icon (AKA favicon) of any remote website URL.
# @option --url <url>             Website URL which you want to fetch the favicon from.
# @option --destination <path>    output file path.
# @flag -h --help                 display help for command
avatars::getFavicon() {
    :;
}
# }}} appwrite avatars getFavicon

# {{{ appwrite avatars getFlag
# @cmd You can use this endpoint to show different country flags icons to your users.
# @option --code <code>           Country Code.
# @option --width <width>         Image width.
# @option --height <height>       Image height.
# @option --quality <quality>     Image quality.
# @option --destination <path>    output file path.
# @flag -h --help                 display help for command
avatars::getFlag() {
    :;
}
# }}} appwrite avatars getFlag

# {{{ appwrite avatars getImage
# @cmd Use this endpoint to fetch a remote image URL and crop it to any image size you want.
# @option --url <url>             Image URL which you want to crop.
# @option --width <width>         Resize preview image width, Pass an integer between 0 to 2000.
# @option --height <height>       Resize preview image height, Pass an integer between 0 to 2000.
# @option --destination <path>    output file path.
# @flag -h --help                 display help for command
avatars::getImage() {
    :;
}
# }}} appwrite avatars getImage

# {{{ appwrite avatars getInitials
# @cmd Use this endpoint to show your user initials avatar icon on your website or app.
# @option --name <name>                Full Name.
# @option --width <width>              Image width.
# @option --height <height>            Image height.
# @option --background <background>    Changes background color.
# @option --destination <path>         output file path.
# @flag -h --help                      display help for command
avatars::getInitials() {
    :;
}
# }}} appwrite avatars getInitials

# {{{ appwrite avatars getQR
# @cmd Converts a given plain text to a QR code image.
# @option --text <text>            Plain text to be converted to QR code image.
# @option --size <size>            QR code size.
# @option --margin <margin>        Margin from edge.
# @option --download <download>    Return resulting image with 'Content-Disposition: attachment ' headers for the browser to start downloading it.
# @option --destination <path>     output file path.
# @flag -h --help                  display help for command
avatars::getQR() {
    :;
}
# }}} appwrite avatars getQR
# }} appwrite avatars

# {{ appwrite client
# @cmd The client command allows you to configure your CLI
# @option --selfSigned <value>       Configure the CLI to use a self-signed certificate ( true or false )
# @option --endpoint <endpoint>      Set your Appwrite server endpoint
# @option --projectId <projectId>    Set your Appwrite project ID
# @option --key <key>                Set your Appwrite server's API key
# @flag --debug                      Print CLI debug information
# @flag --reset                      Reset the CLI configuration
# @flag -h --help                    display help for command
client() {
    :;
}
# }} appwrite client

# {{ appwrite console
# @cmd The console command allows gives you access to the APIs used by the Appwrite console.
# @flag -h --help    display help for command
console() {
    :;
}

# {{{ appwrite console variables
# @cmd Get all Environment Variables that are relevant for the console.
# @flag -h --help    display help for command
console::variables() {
    :;
}
# }}} appwrite console variables
# }} appwrite console

# {{ appwrite databases
# @cmd The databases command allows you to create structured collections of documents, query and filter lists of documents.
# @flag -h --help    display help for command
databases() {
    :;
}

# {{{ appwrite databases list
# @cmd Get a list of all databases from the current Appwrite project.
# @option --queries* <queries>    Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>       Search term to filter your list results.
# @flag -h --help                 display help for command
databases::list() {
    :;
}
# }}} appwrite databases list

# {{{ appwrite databases create
# @cmd Create a new Database.
# @option --databaseId <databaseId>    Unique Id.
# @option --name <name>                Database name.
# @option --enabled <enabled>          Is the database enabled? When set to 'disabled', users cannot access the database but Server SDKs with an API key can still read and write to the database.
# @flag -h --help                      display help for command
databases::create() {
    :;
}
# }}} appwrite databases create

# {{{ appwrite databases getUsage
# @cmd
# @option --range <range>    'Date range.
# @flag -h --help            display help for command
databases::getUsage() {
    :;
}
# }}} appwrite databases getUsage

# {{{ appwrite databases get
# @cmd Get a database by its unique ID.
# @option --databaseId <databaseId>    Database ID.
# @flag -h --help                      display help for command
databases::get() {
    :;
}
# }}} appwrite databases get

# {{{ appwrite databases update
# @cmd Update a database by its unique ID.
# @option --databaseId <databaseId>    Database ID.
# @option --name <name>                Database name.
# @option --enabled <enabled>          Is database enabled? When set to 'disabled', users cannot access the database but Server SDKs with an API key can still read and write to the database.
# @flag -h --help                      display help for command
databases::update() {
    :;
}
# }}} appwrite databases update

# {{{ appwrite databases delete
# @cmd Delete a database by its unique ID.
# @option --databaseId <databaseId>    Database ID.
# @flag -h --help                      display help for command
databases::delete() {
    :;
}
# }}} appwrite databases delete

# {{{ appwrite databases listCollections
# @cmd Get a list of all collections that belong to the provided databaseId.
# @option --databaseId <databaseId>    Database ID.
# @option --queries*[name|enabled|documentSecurity] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>            Search term to filter your list results.
# @flag -h --help                      display help for command
databases::listCollections() {
    :;
}
# }}} appwrite databases listCollections

# {{{ appwrite databases createCollection
# @cmd Create a new Collection.
# @option --databaseId <databaseId>                Database ID.
# @option --collectionId <collectionId>            Unique Id.
# @option --name <name>                            Collection name.
# @option --permissions* <permissions>             An array of permissions strings.
# @option --documentSecurity <documentSecurity>    Enables configuring permissions for individual documents.
# @option --enabled <enabled>                      Is collection enabled? When set to 'disabled', users cannot access the collection but Server SDKs with and API key can still read and write to the collection.
# @flag -h --help                                  display help for command
databases::createCollection() {
    :;
}
# }}} appwrite databases createCollection

# {{{ appwrite databases getCollection
# @cmd Get a collection by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @flag -h --help                          display help for command
databases::getCollection() {
    :;
}
# }}} appwrite databases getCollection

# {{{ appwrite databases updateCollection
# @cmd Update a collection by its unique ID.
# @option --databaseId <databaseId>                Database ID.
# @option --collectionId <collectionId>            Collection ID.
# @option --name <name>                            Collection name.
# @option --permissions* <permissions>             An array of permission strings.
# @option --documentSecurity <documentSecurity>    Enables configuring permissions for individual documents.
# @option --enabled <enabled>                      Is collection enabled? When set to 'disabled', users cannot access the collection but Server SDKs with and API key can still read and write to the collection.
# @flag -h --help                                  display help for command
databases::updateCollection() {
    :;
}
# }}} appwrite databases updateCollection

# {{{ appwrite databases deleteCollection
# @cmd Delete a collection by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @flag -h --help                          display help for command
databases::deleteCollection() {
    :;
}
# }}} appwrite databases deleteCollection

# {{{ appwrite databases listAttributes
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --queries*[key|type|size|required|array|status|error] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                          display help for command
databases::listAttributes() {
    :;
}
# }}} appwrite databases listAttributes

# {{{ appwrite databases createBooleanAttribute
# @cmd Create a boolean attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createBooleanAttribute() {
    :;
}
# }}} appwrite databases createBooleanAttribute

# {{{ appwrite databases updateBooleanAttribute
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateBooleanAttribute() {
    :;
}
# }}} appwrite databases updateBooleanAttribute

# {{{ appwrite databases createDatetimeAttribute
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for the attribute in ISO 8601 format.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createDatetimeAttribute() {
    :;
}
# }}} appwrite databases createDatetimeAttribute

# {{{ appwrite databases updateDatetimeAttribute
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateDatetimeAttribute() {
    :;
}
# }}} appwrite databases updateDatetimeAttribute

# {{{ appwrite databases createEmailAttribute
# @cmd Create an email attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createEmailAttribute() {
    :;
}
# }}} appwrite databases createEmailAttribute

# {{{ appwrite databases updateEmailAttribute
# @cmd Update an email attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateEmailAttribute() {
    :;
}
# }}} appwrite databases updateEmailAttribute

# {{{ appwrite databases createEnumAttribute
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --elements* <elements>           Array of elements in enumerated type.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createEnumAttribute() {
    :;
}
# }}} appwrite databases createEnumAttribute

# {{{ appwrite databases updateEnumAttribute
# @cmd Update an enum attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --elements* <elements>           Array of elements in enumerated type.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateEnumAttribute() {
    :;
}
# }}} appwrite databases updateEnumAttribute

# {{{ appwrite databases createFloatAttribute
# @cmd Create a float attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --min <min>                      Minimum value to enforce on new documents
# @option --max <max>                      Maximum value to enforce on new documents
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createFloatAttribute() {
    :;
}
# }}} appwrite databases createFloatAttribute

# {{{ appwrite databases updateFloatAttribute
# @cmd Update a float attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --min <min>                      Minimum value to enforce on new documents
# @option --max <max>                      Maximum value to enforce on new documents
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateFloatAttribute() {
    :;
}
# }}} appwrite databases updateFloatAttribute

# {{{ appwrite databases createIntegerAttribute
# @cmd Create an integer attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --min <min>                      Minimum value to enforce on new documents
# @option --max <max>                      Maximum value to enforce on new documents
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createIntegerAttribute() {
    :;
}
# }}} appwrite databases createIntegerAttribute

# {{{ appwrite databases updateIntegerAttribute
# @cmd Update an integer attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --min <min>                      Minimum value to enforce on new documents
# @option --max <max>                      Maximum value to enforce on new documents
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateIntegerAttribute() {
    :;
}
# }}} appwrite databases updateIntegerAttribute

# {{{ appwrite databases createIpAttribute
# @cmd Create IP address attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createIpAttribute() {
    :;
}
# }}} appwrite databases createIpAttribute

# {{{ appwrite databases updateIpAttribute
# @cmd Update an ip attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateIpAttribute() {
    :;
}
# }}} appwrite databases updateIpAttribute

# {{{ appwrite databases createRelationshipAttribute
# @cmd Create relationship attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --relatedCollectionId <relatedCollectionId>  Related Collection ID.
# @option --type <type>                    Relation type
# @option --twoWay <twoWay>                Is Two Way?
# @option --key <key>                      Attribute Key.
# @option --twoWayKey <twoWayKey>          Two Way Attribute Key.
# @option --onDelete <onDelete>            Constraints option
# @flag -h --help                          display help for command
databases::createRelationshipAttribute() {
    :;
}
# }}} appwrite databases createRelationshipAttribute

# {{{ appwrite databases createStringAttribute
# @cmd Create a string attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --size <size>                    Attribute size for text attributes, in number of characters.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @option --encrypt <encrypt>              Toggle encryption for the attribute.
# @flag -h --help                          display help for command
databases::createStringAttribute() {
    :;
}
# }}} appwrite databases createStringAttribute

# {{{ appwrite databases updateStringAttribute
# @cmd Update a string attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateStringAttribute() {
    :;
}
# }}} appwrite databases updateStringAttribute

# {{{ appwrite databases createUrlAttribute
# @cmd Create a URL attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @option --array <array>                  Is attribute an array?
# @flag -h --help                          display help for command
databases::createUrlAttribute() {
    :;
}
# }}} appwrite databases createUrlAttribute

# {{{ appwrite databases updateUrlAttribute
# @cmd Update an url attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --required <required>            Is attribute required?
# @option --xdefault <xdefault>            Default value for attribute when not provided.
# @flag -h --help                          display help for command
databases::updateUrlAttribute() {
    :;
}
# }}} appwrite databases updateUrlAttribute

# {{{ appwrite databases getAttribute
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @flag -h --help                          display help for command
databases::getAttribute() {
    :;
}
# }}} appwrite databases getAttribute

# {{{ appwrite databases deleteAttribute
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @flag -h --help                          display help for command
databases::deleteAttribute() {
    :;
}
# }}} appwrite databases deleteAttribute

# {{{ appwrite databases updateRelationshipAttribute
# @cmd Update relationship attribute.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Attribute Key.
# @option --onDelete <onDelete>            Constraints option
# @flag -h --help                          display help for command
databases::updateRelationshipAttribute() {
    :;
}
# }}} appwrite databases updateRelationshipAttribute

# {{{ appwrite databases listDocuments
# @cmd Get a list of all the user's documents in a given collection.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --queries* <queries>             Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                          display help for command
databases::listDocuments() {
    :;
}
# }}} appwrite databases listDocuments

# {{{ appwrite databases createDocument
# @cmd Create a new Document.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --documentId <documentId>        Document ID.
# @option --data <data>                    Document data as JSON object.
# @option --permissions* <permissions>     An array of permissions strings.
# @flag -h --help                          display help for command
databases::createDocument() {
    :;
}
# }}} appwrite databases createDocument

# {{{ appwrite databases getDocument
# @cmd Get a document by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --documentId <documentId>        Document ID.
# @option --queries* <queries>             Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                          display help for command
databases::getDocument() {
    :;
}
# }}} appwrite databases getDocument

# {{{ appwrite databases updateDocument
# @cmd Update a document by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --documentId <documentId>        Document ID.
# @option --data <data>                    Document data as JSON object.
# @option --permissions* <permissions>     An array of permissions strings.
# @flag -h --help                          display help for command
databases::updateDocument() {
    :;
}
# }}} appwrite databases updateDocument

# {{{ appwrite databases deleteDocument
# @cmd Delete a document by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --documentId <documentId>        Document ID.
# @flag -h --help                          display help for command
databases::deleteDocument() {
    :;
}
# }}} appwrite databases deleteDocument

# {{{ appwrite databases listDocumentLogs
# @cmd Get the document activity logs list by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --documentId <documentId>        Document ID.
# @option --queries* <queries>             Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                          display help for command
databases::listDocumentLogs() {
    :;
}
# }}} appwrite databases listDocumentLogs

# {{{ appwrite databases listIndexes
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --queries*[key|type|status|attributes|error] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                          display help for command
databases::listIndexes() {
    :;
}
# }}} appwrite databases listIndexes

# {{{ appwrite databases createIndex
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Index Key.
# @option --type <type>                    Index type.
# @option --attributes* <attributes>       Array of attributes to index.
# @option --orders* <orders>               Array of index orders.
# @flag -h --help                          display help for command
databases::createIndex() {
    :;
}
# }}} appwrite databases createIndex

# {{{ appwrite databases getIndex
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Index Key.
# @flag -h --help                          display help for command
databases::getIndex() {
    :;
}
# }}} appwrite databases getIndex

# {{{ appwrite databases deleteIndex
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --key <key>                      Index Key.
# @flag -h --help                          display help for command
databases::deleteIndex() {
    :;
}
# }}} appwrite databases deleteIndex

# {{{ appwrite databases listCollectionLogs
# @cmd Get the collection activity logs list by its unique ID.
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --queries* <queries>             Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                          display help for command
databases::listCollectionLogs() {
    :;
}
# }}} appwrite databases listCollectionLogs

# {{{ appwrite databases getCollectionUsage
# @cmd
# @option --databaseId <databaseId>        Database ID.
# @option --collectionId <collectionId>    Collection ID.
# @option --range <range>                  Date range.
# @flag -h --help                          display help for command
databases::getCollectionUsage() {
    :;
}
# }}} appwrite databases getCollectionUsage

# {{{ appwrite databases listLogs
# @cmd Get the database activity logs list by its unique ID.
# @option --databaseId <databaseId>    Database ID.
# @option --queries* <queries>         Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                      display help for command
databases::listLogs() {
    :;
}
# }}} appwrite databases listLogs

# {{{ appwrite databases getDatabaseUsage
# @cmd
# @option --databaseId <databaseId>    Database ID.
# @option --range <range>              'Date range.
# @flag -h --help                      display help for command
databases::getDatabaseUsage() {
    :;
}
# }}} appwrite databases getDatabaseUsage
# }} appwrite databases

# {{ appwrite deploy
# @cmd The deploy command provides a convenient wrapper for deploying your functions and collections.
# @flag -h --help    display help for command
deploy() {
    :;
}

# {{{ appwrite deploy function
# @cmd Deploy functions in the current directory.
# @option --functionId <functionId>    Function ID
# @flag --all                          Flag to deploy all functions
# @flag --yes                          Flag to confirm all warnings
# @flag -h --help                      display help for command
deploy::function_() {
    :;
}
# }}} appwrite deploy function

# {{{ appwrite deploy collection
# @cmd Deploy collections in the current project.
# @flag --all        Flag to deploy all collections
# @flag --yes        Flag to confirm all warnings
# @flag -h --help    display help for command
deploy::collection() {
    :;
}
# }}} appwrite deploy collection

# {{{ appwrite deploy bucket
# @cmd Deploy buckets in the current project.
# @flag --all        Flag to deploy all buckets
# @flag --yes        Flag to confirm all warnings
# @flag -h --help    display help for command
deploy::bucket() {
    :;
}
# }}} appwrite deploy bucket

# {{{ appwrite deploy team
# @cmd Deploy teams in the current project.
# @flag --all        Flag to deploy all teams
# @flag --yes        Flag to confirm all warnings
# @flag -h --help    display help for command
deploy::team() {
    :;
}
# }}} appwrite deploy team
# }} appwrite deploy

# {{ appwrite functions
# @cmd The functions command allows you view, create and manage your Cloud Functions.
# @flag -h --help    display help for command
functions() {
    :;
}

# {{{ appwrite functions list
# @cmd Get a list of all the project's functions.
# @option --queries*[name|enabled|runtime|deployment|schedule|scheduleNext|schedulePrevious|timeout|entrypoint|commands|installationId] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
functions::list() {
    :;
}
# }}} appwrite functions list

# {{{ appwrite functions create
# @cmd Create a new function.
# @option --functionId <functionId>            Function ID.
# @option --name <name>                        Function name.
# @option --runtime <runtime>                  Execution runtime.
# @option --execute* <execute>                 An array of role strings with execution permissions.
# @option --events* <events>                   Events list.
# @option --schedule <schedule>                Schedule CRON syntax.
# @option --timeout <timeout>                  Function maximum execution time in seconds.
# @option --enabled <enabled>                  Is function enabled? When set to 'disabled', users cannot access the function but Server SDKs with and API key can still access the function.
# @option --logging <logging>                  Whether executions will be logged.
# @option --entrypoint <entrypoint>            Entrypoint File.
# @option --commands <commands>                Build Commands.
# @option --installationId <installationId>    Appwrite Installation ID for VCS (Version Control System) deployment.
# @option --providerRepositoryId <providerRepositoryId>  Repository ID of the repo linked to the function.
# @option --providerBranch <providerBranch>    Production branch for the repo linked to the function.
# @option --providerSilentMode <providerSilentMode>  Is the VCS (Version Control System) connection in silent mode for the repo linked to the function? In silent mode, comments will not be made on commits and pull requests.
# @option --providerRootDirectory <providerRootDirectory>  Path to function code in the linked repo.
# @option --templateRepository <templateRepository>  Repository name of the template.
# @option --templateOwner <templateOwner>      The name of the owner of the template.
# @option --templateRootDirectory <templateRootDirectory>  Path to function code in the template repo.
# @option --templateBranch <templateBranch>    Production branch for the repo linked to the function template.
# @flag -h --help                              display help for command
functions::create() {
    :;
}
# }}} appwrite functions create

# {{{ appwrite functions listRuntimes
# @cmd Get a list of all runtimes that are currently active on your instance.
# @flag -h --help    display help for command
functions::listRuntimes() {
    :;
}
# }}} appwrite functions listRuntimes

# {{{ appwrite functions getUsage
# @cmd
# @option --range <range>    Date range.
# @flag -h --help            display help for command
functions::getUsage() {
    :;
}
# }}} appwrite functions getUsage

# {{{ appwrite functions get
# @cmd Get a function by its unique ID.
# @option --functionId <functionId>    Function ID.
# @flag -h --help                      display help for command
functions::get() {
    :;
}
# }}} appwrite functions get

# {{{ appwrite functions update
# @cmd Update function by its unique ID.
# @option --functionId <functionId>            Function ID.
# @option --name <name>                        Function name.
# @option --runtime <runtime>                  Execution runtime.
# @option --execute* <execute>                 An array of role strings with execution permissions.
# @option --events* <events>                   Events list.
# @option --schedule <schedule>                Schedule CRON syntax.
# @option --timeout <timeout>                  Maximum execution time in seconds.
# @option --enabled <enabled>                  Is function enabled? When set to 'disabled', users cannot access the function but Server SDKs with and API key can still access the function.
# @option --logging <logging>                  Whether executions will be logged.
# @option --entrypoint <entrypoint>            Entrypoint File.
# @option --commands <commands>                Build Commands.
# @option --installationId <installationId>    Appwrite Installation ID for VCS (Version Controle System) deployment.
# @option --providerRepositoryId <providerRepositoryId>  Repository ID of the repo linked to the function
# @option --providerBranch <providerBranch>    Production branch for the repo linked to the function
# @option --providerSilentMode <providerSilentMode>  Is the VCS (Version Control System) connection in silent mode for the repo linked to the function? In silent mode, comments will not be made on commits and pull requests.
# @option --providerRootDirectory <providerRootDirectory>  Path to function code in the linked repo.
# @flag -h --help                              display help for command
functions::update() {
    :;
}
# }}} appwrite functions update

# {{{ appwrite functions delete
# @cmd Delete a function by its unique ID.
# @option --functionId <functionId>    Function ID.
# @flag -h --help                      display help for command
functions::delete() {
    :;
}
# }}} appwrite functions delete

# {{{ appwrite functions listDeployments
# @cmd Get a list of all the project's code deployments.
# @option --functionId <functionId>    Function ID.
# @option --queries*[size|buildId|activate|entrypoint|commands] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>            Search term to filter your list results.
# @flag -h --help                      display help for command
functions::listDeployments() {
    :;
}
# }}} appwrite functions listDeployments

# {{{ appwrite functions createDeployment
# @cmd Create a new function code deployment.
# @option --functionId <functionId>    Function ID.
# @option --code <code>                Gzip file with your code package.
# @option --activate <activate>        Automatically activate the deployment when it is finished building.
# @option --entrypoint <entrypoint>    Entrypoint File.
# @option --commands <commands>        Build Commands.
# @flag -h --help                      display help for command
functions::createDeployment() {
    :;
}
# }}} appwrite functions createDeployment

# {{{ appwrite functions getDeployment
# @cmd Get a code deployment by its unique ID.
# @option --functionId <functionId>        Function ID.
# @option --deploymentId <deploymentId>    Deployment ID.
# @flag -h --help                          display help for command
functions::getDeployment() {
    :;
}
# }}} appwrite functions getDeployment

# {{{ appwrite functions updateDeployment
# @cmd Update the function code deployment ID using the unique function ID.
# @option --functionId <functionId>        Function ID.
# @option --deploymentId <deploymentId>    Deployment ID.
# @flag -h --help                          display help for command
functions::updateDeployment() {
    :;
}
# }}} appwrite functions updateDeployment

# {{{ appwrite functions deleteDeployment
# @cmd Delete a code deployment by its unique ID.
# @option --functionId <functionId>        Function ID.
# @option --deploymentId <deploymentId>    Deployment ID.
# @flag -h --help                          display help for command
functions::deleteDeployment() {
    :;
}
# }}} appwrite functions deleteDeployment

# {{{ appwrite functions createBuild
# @cmd Create a new build for an Appwrite Function deployment.
# @option --functionId <functionId>        Function ID.
# @option --deploymentId <deploymentId>    Deployment ID.
# @option --buildId <buildId>              Build unique ID.
# @flag -h --help                          display help for command
functions::createBuild() {
    :;
}
# }}} appwrite functions createBuild

# {{{ appwrite functions downloadDeployment
# @cmd Get a Deployment's contents by its unique ID.
# @option --functionId <functionId>        Function ID.
# @option --deploymentId <deploymentId>    Deployment ID.
# @option --destination <path>             output file path.
# @flag -h --help                          display help for command
functions::downloadDeployment() {
    :;
}
# }}} appwrite functions downloadDeployment

# {{{ appwrite functions listExecutions
# @cmd Get a list of all the current user function execution logs.
# @option --functionId <functionId>    Function ID.
# @option --queries*[trigger|status|responseStatusCode|duration] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>            Search term to filter your list results.
# @flag -h --help                      display help for command
functions::listExecutions() {
    :;
}
# }}} appwrite functions listExecutions

# {{{ appwrite functions createExecution
# @cmd Trigger a function execution.
# @option --functionId <functionId>    Function ID.
# @option --body <body>                HTTP body of execution.
# @option --async <async>              Execute code in the background.
# @option --xpath <xpath>              HTTP path of execution.
# @option --method <method>            HTTP method of execution.
# @option --headers <headers>          HTTP headers of execution.
# @flag -h --help                      display help for command
functions::createExecution() {
    :;
}
# }}} appwrite functions createExecution

# {{{ appwrite functions getExecution
# @cmd Get a function execution log by its unique ID.
# @option --functionId <functionId>      Function ID.
# @option --executionId <executionId>    Execution ID.
# @flag -h --help                        display help for command
functions::getExecution() {
    :;
}
# }}} appwrite functions getExecution

# {{{ appwrite functions getFunctionUsage
# @cmd
# @option --functionId <functionId>    Function ID.
# @option --range <range>              Date range.
# @flag -h --help                      display help for command
functions::getFunctionUsage() {
    :;
}
# }}} appwrite functions getFunctionUsage

# {{{ appwrite functions listVariables
# @cmd Get a list of all variables of a specific function.
# @option --functionId <functionId>    Function unique ID.
# @flag -h --help                      display help for command
functions::listVariables() {
    :;
}
# }}} appwrite functions listVariables

# {{{ appwrite functions createVariable
# @cmd Create a new function environment variable.
# @option --functionId <functionId>    Function unique ID.
# @option --key <key>                  Variable key.
# @option --value <value>              Variable value.
# @flag -h --help                      display help for command
functions::createVariable() {
    :;
}
# }}} appwrite functions createVariable

# {{{ appwrite functions getVariable
# @cmd Get a variable by its unique ID.
# @option --functionId <functionId>    Function unique ID.
# @option --variableId <variableId>    Variable unique ID.
# @flag -h --help                      display help for command
functions::getVariable() {
    :;
}
# }}} appwrite functions getVariable

# {{{ appwrite functions updateVariable
# @cmd Update variable by its unique ID.
# @option --functionId <functionId>    Function unique ID.
# @option --variableId <variableId>    Variable unique ID.
# @option --key <key>                  Variable key.
# @option --value <value>              Variable value.
# @flag -h --help                      display help for command
functions::updateVariable() {
    :;
}
# }}} appwrite functions updateVariable

# {{{ appwrite functions deleteVariable
# @cmd Delete a variable by its unique ID.
# @option --functionId <functionId>    Function unique ID.
# @option --variableId <variableId>    Variable unique ID.
# @flag -h --help                      display help for command
functions::deleteVariable() {
    :;
}
# }}} appwrite functions deleteVariable
# }} appwrite functions

# {{ appwrite graphql
# @cmd The graphql command allows you to query and mutate any resource type on your Appwrite server.
# @flag -h --help    display help for command
graphql() {
    :;
}

# {{{ appwrite graphql query
# @cmd Execute a GraphQL mutation.
# @option --query <query>    The query or queries to execute.
# @flag -h --help            display help for command
graphql::query() {
    :;
}
# }}} appwrite graphql query

# {{{ appwrite graphql mutation
# @cmd Execute a GraphQL mutation.
# @option --query <query>    The query or queries to execute.
# @flag -h --help            display help for command
graphql::mutation() {
    :;
}
# }}} appwrite graphql mutation
# }} appwrite graphql

# {{ appwrite health
# @cmd The health command allows you to both validate and monitor your Appwrite server's health.
# @flag -h --help    display help for command
health() {
    :;
}

# {{{ appwrite health get
# @cmd Check the Appwrite HTTP server is up and responsive.
# @flag -h --help    display help for command
health::get() {
    :;
}
# }}} appwrite health get

# {{{ appwrite health getAntivirus
# @cmd Check the Appwrite Antivirus server is up and connection is successful.
# @flag -h --help    display help for command
health::getAntivirus() {
    :;
}
# }}} appwrite health getAntivirus

# {{{ appwrite health getCache
# @cmd Check the Appwrite in-memory cache servers are up and connection is successful.
# @flag -h --help    display help for command
health::getCache() {
    :;
}
# }}} appwrite health getCache

# {{{ appwrite health getDB
# @cmd Check the Appwrite database servers are up and connection is successful.
# @flag -h --help    display help for command
health::getDB() {
    :;
}
# }}} appwrite health getDB

# {{{ appwrite health getPubSub
# @cmd Check the Appwrite pub-sub servers are up and connection is successful.
# @flag -h --help    display help for command
health::getPubSub() {
    :;
}
# }}} appwrite health getPubSub

# {{{ appwrite health getQueue
# @cmd Check the Appwrite queue messaging servers are up and connection is successful.
# @flag -h --help    display help for command
health::getQueue() {
    :;
}
# }}} appwrite health getQueue

# {{{ appwrite health getQueueBuilds
# @cmd Get the number of builds that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueBuilds() {
    :;
}
# }}} appwrite health getQueueBuilds

# {{{ appwrite health getQueueCertificates
# @cmd Get the number of certificates that are waiting to be issued against [Letsencrypt](https://letsencrypt.org/) in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueCertificates() {
    :;
}
# }}} appwrite health getQueueCertificates

# {{{ appwrite health getQueueDatabases
# @cmd Get the number of database changes that are waiting to be processed in the Appwrite internal queue server.
# @option --name <name>              Queue name for which to check the queue size
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueDatabases() {
    :;
}
# }}} appwrite health getQueueDatabases

# {{{ appwrite health getQueueDeletes
# @cmd Get the number of background destructive changes that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueDeletes() {
    :;
}
# }}} appwrite health getQueueDeletes

# {{{ appwrite health getQueueFunctions
# @cmd
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueFunctions() {
    :;
}
# }}} appwrite health getQueueFunctions

# {{{ appwrite health getQueueLogs
# @cmd Get the number of logs that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueLogs() {
    :;
}
# }}} appwrite health getQueueLogs

# {{{ appwrite health getQueueMails
# @cmd Get the number of mails that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueMails() {
    :;
}
# }}} appwrite health getQueueMails

# {{{ appwrite health getQueueMessaging
# @cmd Get the number of messages that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueMessaging() {
    :;
}
# }}} appwrite health getQueueMessaging

# {{{ appwrite health getQueueMigrations
# @cmd Get the number of migrations that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueMigrations() {
    :;
}
# }}} appwrite health getQueueMigrations

# {{{ appwrite health getQueueWebhooks
# @cmd Get the number of webhooks that are waiting to be processed in the Appwrite internal queue server.
# @option --threshold <threshold>    Queue size threshold.
# @flag -h --help                    display help for command
health::getQueueWebhooks() {
    :;
}
# }}} appwrite health getQueueWebhooks

# {{{ appwrite health getStorageLocal
# @cmd Check the Appwrite local storage device is up and connection is successful.
# @flag -h --help    display help for command
health::getStorageLocal() {
    :;
}
# }}} appwrite health getStorageLocal

# {{{ appwrite health getTime
# @cmd Check the Appwrite server time is synced with Google remote NTP server.
# @flag -h --help    display help for command
health::getTime() {
    :;
}
# }}} appwrite health getTime
# }} appwrite health

# {{ appwrite init
# @cmd The init command helps you initialize your Appwrite project, functions and collections
# @flag -h --help    display help for command
init() {
    :;
}

# {{{ appwrite init project
# @cmd Initialise your Appwrite project
# @flag -h --help    display help for command
init::project() {
    :;
}
# }}} appwrite init project

# {{{ appwrite init function
# @cmd Initialise your Appwrite cloud function
# @flag -h --help    display help for command
init::function_() {
    :;
}
# }}} appwrite init function

# {{{ appwrite init collection
# @cmd Initialise your Appwrite collections
# @option --databaseId <databaseId>    Database ID
# @flag --all                          Flag to initialize all databases
# @flag -h --help                      display help for command
init::collection() {
    :;
}
# }}} appwrite init collection

# {{{ appwrite init bucket
# @cmd Initialise your Appwrite buckets
# @flag -h --help    display help for command
init::bucket() {
    :;
}
# }}} appwrite init bucket

# {{{ appwrite init team
# @cmd Initialise your Appwrite teams
# @flag -h --help    display help for command
init::team() {
    :;
}
# }}} appwrite init team
# }} appwrite init

# {{ appwrite locale
# @cmd The locale command allows you to customize your app based on your users' location.
# @flag -h --help    display help for command
locale() {
    :;
}

# {{{ appwrite locale get
# @cmd Get the current user location based on IP.
# @flag -h --help    display help for command
locale::get() {
    :;
}
# }}} appwrite locale get

# {{{ appwrite locale listCodes
# @cmd List of all locale codes in [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).
# @flag -h --help    display help for command
locale::listCodes() {
    :;
}
# }}} appwrite locale listCodes

# {{{ appwrite locale listContinents
# @cmd List of all continents.
# @flag -h --help    display help for command
locale::listContinents() {
    :;
}
# }}} appwrite locale listContinents

# {{{ appwrite locale listCountries
# @cmd List of all countries.
# @flag -h --help    display help for command
locale::listCountries() {
    :;
}
# }}} appwrite locale listCountries

# {{{ appwrite locale listCountriesEU
# @cmd List of all countries that are currently members of the EU.
# @flag -h --help    display help for command
locale::listCountriesEU() {
    :;
}
# }}} appwrite locale listCountriesEU

# {{{ appwrite locale listCountriesPhones
# @cmd List of all countries phone codes.
# @flag -h --help    display help for command
locale::listCountriesPhones() {
    :;
}
# }}} appwrite locale listCountriesPhones

# {{{ appwrite locale listCurrencies
# @cmd List of all currencies, including currency symbol, name, plural, and decimal digits for all major and minor currencies.
# @flag -h --help    display help for command
locale::listCurrencies() {
    :;
}
# }}} appwrite locale listCurrencies

# {{{ appwrite locale listLanguages
# @cmd List of all languages classified by ISO 639-1 including 2-letter code, name in English, and name in the respective language.
# @flag -h --help    display help for command
locale::listLanguages() {
    :;
}
# }}} appwrite locale listLanguages
# }} appwrite locale

# {{ appwrite login
# @cmd The login command allows you to authenticate and manage a user account.
# @flag -h --help    display help for command
login() {
    :;
}
# }} appwrite login

# {{ appwrite logout
# @cmd The logout command allows you to logout of your Appwrite account.
# @flag -h --help    display help for command
logout() {
    :;
}
# }} appwrite logout

# {{ appwrite migrations
# @cmd The migrations command allows you to migrate data between services.
# @flag -h --help    display help for command
migrations() {
    :;
}

# {{{ appwrite migrations list
# @cmd
# @option --queries[status|stage|source|resources|statusCounters|resourceData|errors] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
migrations::list() {
    :;
}
# }}} appwrite migrations list

# {{{ appwrite migrations createAppwriteMigration
# @cmd
# @option --resources* <resources>    List of resources to migrate
# @option --endpoint <endpoint>       Source's Appwrite Endpoint
# @option --projectId <projectId>     Source's Project ID
# @option --apiKey <apiKey>           Source's API Key
# @flag -h --help                     display help for command
migrations::createAppwriteMigration() {
    :;
}
# }}} appwrite migrations createAppwriteMigration

# {{{ appwrite migrations getAppwriteReport
# @cmd
# @option --resources* <resources>    List of resources to migrate
# @option --endpoint <endpoint>       Source's Appwrite Endpoint
# @option --projectID <projectID>     Source's Project ID
# @option --key <key>                 Source's API Key
# @flag -h --help                     display help for command
migrations::getAppwriteReport() {
    :;
}
# }}} appwrite migrations getAppwriteReport

# {{{ appwrite migrations createFirebaseMigration
# @cmd
# @option --resources* <resources>             List of resources to migrate
# @option --serviceAccount <serviceAccount>    JSON of the Firebase service account credentials
# @flag -h --help                              display help for command
migrations::createFirebaseMigration() {
    :;
}
# }}} appwrite migrations createFirebaseMigration

# {{{ appwrite migrations deleteFirebaseAuth
# @cmd
# @flag -h --help    display help for command
migrations::deleteFirebaseAuth() {
    :;
}
# }}} appwrite migrations deleteFirebaseAuth

# {{{ appwrite migrations createFirebaseOAuthMigration
# @cmd
# @option --resources* <resources>    List of resources to migrate
# @option --projectId <projectId>     Project ID of the Firebase Project
# @flag -h --help                     display help for command
migrations::createFirebaseOAuthMigration() {
    :;
}
# }}} appwrite migrations createFirebaseOAuthMigration

# {{{ appwrite migrations listFirebaseProjects
# @cmd
# @flag -h --help    display help for command
migrations::listFirebaseProjects() {
    :;
}
# }}} appwrite migrations listFirebaseProjects

# {{{ appwrite migrations getFirebaseReport
# @cmd
# @option --resources* <resources>             List of resources to migrate
# @option --serviceAccount <serviceAccount>    JSON of the Firebase service account credentials
# @flag -h --help                              display help for command
migrations::getFirebaseReport() {
    :;
}
# }}} appwrite migrations getFirebaseReport

# {{{ appwrite migrations getFirebaseReportOAuth
# @cmd
# @option --resources* <resources>    List of resources to migrate
# @option --projectId <projectId>     Project ID
# @flag -h --help                     display help for command
migrations::getFirebaseReportOAuth() {
    :;
}
# }}} appwrite migrations getFirebaseReportOAuth

# {{{ appwrite migrations createNHostMigration
# @cmd
# @option --resources* <resources>       List of resources to migrate
# @option --subdomain <subdomain>        Source's Subdomain
# @option --region <region>              Source's Region
# @option --adminSecret <adminSecret>    Source's Admin Secret
# @option --database <database>          Source's Database Name
# @option --username <username>          Source's Database Username
# @option --password <password>          Source's Database Password
# @option --port <port>                  Source's Database Port
# @flag -h --help                        display help for command
migrations::createNHostMigration() {
    :;
}
# }}} appwrite migrations createNHostMigration

# {{{ appwrite migrations getNHostReport
# @cmd
# @option --resources* <resources>       List of resources to migrate.
# @option --subdomain <subdomain>        Source's Subdomain.
# @option --region <region>              Source's Region.
# @option --adminSecret <adminSecret>    Source's Admin Secret.
# @option --database <database>          Source's Database Name.
# @option --username <username>          Source's Database Username.
# @option --password <password>          Source's Database Password.
# @option --port <port>                  Source's Database Port.
# @flag -h --help                        display help for command
migrations::getNHostReport() {
    :;
}
# }}} appwrite migrations getNHostReport

# {{{ appwrite migrations createSupabaseMigration
# @cmd
# @option --resources* <resources>         List of resources to migrate
# @option --endpoint <endpoint>            Source's Supabase Endpoint
# @option --apiKey <apiKey>                Source's API Key
# @option --databaseHost <databaseHost>    Source's Database Host
# @option --username <username>            Source's Database Username
# @option --password <password>            Source's Database Password
# @option --port <port>                    Source's Database Port
# @flag -h --help                          display help for command
migrations::createSupabaseMigration() {
    :;
}
# }}} appwrite migrations createSupabaseMigration

# {{{ appwrite migrations getSupabaseReport
# @cmd
# @option --resources* <resources>         List of resources to migrate
# @option --endpoint <endpoint>            Source's Supabase Endpoint.
# @option --apiKey <apiKey>                Source's API Key.
# @option --databaseHost <databaseHost>    Source's Database Host.
# @option --username <username>            Source's Database Username.
# @option --password <password>            Source's Database Password.
# @option --port <port>                    Source's Database Port.
# @flag -h --help                          display help for command
migrations::getSupabaseReport() {
    :;
}
# }}} appwrite migrations getSupabaseReport

# {{{ appwrite migrations get
# @cmd
# @option --migrationId <migrationId>    Migration unique ID.
# @flag -h --help                        display help for command
migrations::get() {
    :;
}
# }}} appwrite migrations get

# {{{ appwrite migrations retry
# @cmd
# @option --migrationId <migrationId>    Migration unique ID.
# @flag -h --help                        display help for command
migrations::retry() {
    :;
}
# }}} appwrite migrations retry

# {{{ appwrite migrations delete
# @cmd
# @option --migrationId <migrationId>    Migration ID.
# @flag -h --help                        display help for command
migrations::delete() {
    :;
}
# }}} appwrite migrations delete
# }} appwrite migrations

# {{ appwrite project
# @cmd The project command is for overall project administration.
# @flag -h --help    display help for command
project() {
    :;
}

# {{{ appwrite project getUsage
# @cmd
# @option --range <range>    Date range.
# @flag -h --help            display help for command
project::getUsage() {
    :;
}
# }}} appwrite project getUsage

# {{{ appwrite project listVariables
# @cmd Get a list of all project variables.
# @flag -h --help    display help for command
project::listVariables() {
    :;
}
# }}} appwrite project listVariables

# {{{ appwrite project createVariable
# @cmd Create a new project variable.
# @option --key <key>        Variable key.
# @option --value <value>    Variable value.
# @flag -h --help            display help for command
project::createVariable() {
    :;
}
# }}} appwrite project createVariable

# {{{ appwrite project getVariable
# @cmd Get a project variable by its unique ID.
# @option --variableId <variableId>    Variable unique ID.
# @flag -h --help                      display help for command
project::getVariable() {
    :;
}
# }}} appwrite project getVariable

# {{{ appwrite project updateVariable
# @cmd Update project variable by its unique ID.
# @option --variableId <variableId>    Variable unique ID.
# @option --key <key>                  Variable key.
# @option --value <value>              Variable value.
# @flag -h --help                      display help for command
project::updateVariable() {
    :;
}
# }}} appwrite project updateVariable

# {{{ appwrite project deleteVariable
# @cmd Delete a project variable by its unique ID.
# @option --variableId <variableId>    Variable unique ID.
# @flag -h --help                      display help for command
project::deleteVariable() {
    :;
}
# }}} appwrite project deleteVariable
# }} appwrite project

# {{ appwrite projects
# @cmd The projects command allows you to view, create and manage your Appwrite projects.
# @flag -h --help    display help for command
projects() {
    :;
}

# {{{ appwrite projects list
# @cmd
# @option --queries*[name|teamId] <queries>    Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>                    Search term to filter your list results.
# @flag -h --help                              display help for command
projects::list() {
    :;
}
# }}} appwrite projects list

# {{{ appwrite projects create
# @cmd
# @option --projectId <projectId>          Unique Id.
# @option --name <name>                    Project name.
# @option --teamId <teamId>                Team unique ID.
# @option --region <region>                Project Region.
# @option --description <description>      Project description.
# @option --logo <logo>                    Project logo.
# @option --url <url>                      Project URL.
# @option --legalName <legalName>          Project legal Name.
# @option --legalCountry <legalCountry>    Project legal Country.
# @option --legalState <legalState>        Project legal State.
# @option --legalCity <legalCity>          Project legal City.
# @option --legalAddress <legalAddress>    Project legal Address.
# @option --legalTaxId <legalTaxId>        Project legal Tax ID.
# @flag -h --help                          display help for command
projects::create() {
    :;
}
# }}} appwrite projects create

# {{{ appwrite projects get
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @flag -h --help                    display help for command
projects::get() {
    :;
}
# }}} appwrite projects get

# {{{ appwrite projects update
# @cmd
# @option --projectId <projectId>          Project unique ID.
# @option --name <name>                    Project name.
# @option --description <description>      Project description.
# @option --logo <logo>                    Project logo.
# @option --url <url>                      Project URL.
# @option --legalName <legalName>          Project legal name.
# @option --legalCountry <legalCountry>    Project legal country.
# @option --legalState <legalState>        Project legal state.
# @option --legalCity <legalCity>          Project legal city.
# @option --legalAddress <legalAddress>    Project legal address.
# @option --legalTaxId <legalTaxId>        Project legal tax ID.
# @flag -h --help                          display help for command
projects::update() {
    :;
}
# }}} appwrite projects update

# {{{ appwrite projects delete
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @flag -h --help                    display help for command
projects::delete() {
    :;
}
# }}} appwrite projects delete

# {{{ appwrite projects updateAuthDuration
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --duration <duration>      Project session length in seconds.
# @flag -h --help                    display help for command
projects::updateAuthDuration() {
    :;
}
# }}} appwrite projects updateAuthDuration

# {{{ appwrite projects updateAuthLimit
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --limit <limit>            Set the max number of users allowed in this project.
# @flag -h --help                    display help for command
projects::updateAuthLimit() {
    :;
}
# }}} appwrite projects updateAuthLimit

# {{{ appwrite projects updateAuthSessionsLimit
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --limit <limit>            Set the max number of users allowed in this project.
# @flag -h --help                    display help for command
projects::updateAuthSessionsLimit() {
    :;
}
# }}} appwrite projects updateAuthSessionsLimit

# {{{ appwrite projects updateAuthPasswordDictionary
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --enabled <enabled>        Set whether or not to enable checking user's password against most commonly used passwords.
# @flag -h --help                    display help for command
projects::updateAuthPasswordDictionary() {
    :;
}
# }}} appwrite projects updateAuthPasswordDictionary

# {{{ appwrite projects updateAuthPasswordHistory
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --limit <limit>            Set the max number of passwords to store in user history.
# @flag -h --help                    display help for command
projects::updateAuthPasswordHistory() {
    :;
}
# }}} appwrite projects updateAuthPasswordHistory

# {{{ appwrite projects updatePersonalDataCheck
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --enabled <enabled>        Set whether or not to check a password for similarity with personal data.
# @flag -h --help                    display help for command
projects::updatePersonalDataCheck() {
    :;
}
# }}} appwrite projects updatePersonalDataCheck

# {{{ appwrite projects updateAuthStatus
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --method <method>          Auth Method.
# @option --status <status>          Set the status of this auth method.
# @flag -h --help                    display help for command
projects::updateAuthStatus() {
    :;
}
# }}} appwrite projects updateAuthStatus

# {{{ appwrite projects listKeys
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @flag -h --help                    display help for command
projects::listKeys() {
    :;
}
# }}} appwrite projects listKeys

# {{{ appwrite projects createKey
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --name <name>              Key name.
# @option --scopes* <scopes>         Key scopes list.
# @option --expire <expire>          Expiration time in ISO 8601 format.
# @flag -h --help                    display help for command
projects::createKey() {
    :;
}
# }}} appwrite projects createKey

# {{{ appwrite projects getKey
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --keyId <keyId>            Key unique ID.
# @flag -h --help                    display help for command
projects::getKey() {
    :;
}
# }}} appwrite projects getKey

# {{{ appwrite projects updateKey
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --keyId <keyId>            Key unique ID.
# @option --name <name>              Key name.
# @option --scopes* <scopes>         Key scopes list.
# @option --expire <expire>          Expiration time in ISO 8601 format.
# @flag -h --help                    display help for command
projects::updateKey() {
    :;
}
# }}} appwrite projects updateKey

# {{{ appwrite projects deleteKey
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --keyId <keyId>            Key unique ID.
# @flag -h --help                    display help for command
projects::deleteKey() {
    :;
}
# }}} appwrite projects deleteKey

# {{{ appwrite projects updateOAuth2
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --provider <provider>      Provider Name
# @option --appId <appId>            Provider app ID.
# @option --secret <secret>          Provider secret key.
# @option --enabled <enabled>        Provider status.
# @flag -h --help                    display help for command
projects::updateOAuth2() {
    :;
}
# }}} appwrite projects updateOAuth2

# {{{ appwrite projects listPlatforms
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @flag -h --help                    display help for command
projects::listPlatforms() {
    :;
}
# }}} appwrite projects listPlatforms

# {{{ appwrite projects createPlatform
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --type <type>              Platform type.
# @option --name <name>              Platform name.
# @option --key <key>                Package name for Android or bundle ID for iOS or macOS.
# @option --store <store>            App store or Google Play store ID.
# @option --hostname <hostname>      Platform client hostname.
# @flag -h --help                    display help for command
projects::createPlatform() {
    :;
}
# }}} appwrite projects createPlatform

# {{{ appwrite projects getPlatform
# @cmd
# @option --projectId <projectId>      Project unique ID.
# @option --platformId <platformId>    Platform unique ID.
# @flag -h --help                      display help for command
projects::getPlatform() {
    :;
}
# }}} appwrite projects getPlatform

# {{{ appwrite projects updatePlatform
# @cmd
# @option --projectId <projectId>      Project unique ID.
# @option --platformId <platformId>    Platform unique ID.
# @option --name <name>                Platform name.
# @option --key <key>                  Package name for android or bundle ID for iOS.
# @option --store <store>              App store or Google Play store ID.
# @option --hostname <hostname>        Platform client URL.
# @flag -h --help                      display help for command
projects::updatePlatform() {
    :;
}
# }}} appwrite projects updatePlatform

# {{{ appwrite projects deletePlatform
# @cmd
# @option --projectId <projectId>      Project unique ID.
# @option --platformId <platformId>    Platform unique ID.
# @flag -h --help                      display help for command
projects::deletePlatform() {
    :;
}
# }}} appwrite projects deletePlatform

# {{{ appwrite projects updateServiceStatus
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --service <service>        Service name.
# @option --status <status>          Service status.
# @flag -h --help                    display help for command
projects::updateServiceStatus() {
    :;
}
# }}} appwrite projects updateServiceStatus

# {{{ appwrite projects updateServiceStatusAll
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --status <status>          Service status.
# @flag -h --help                    display help for command
projects::updateServiceStatusAll() {
    :;
}
# }}} appwrite projects updateServiceStatusAll

# {{{ appwrite projects updateSmtpConfiguration
# @cmd
# @option --projectId <projectId>        Project unique ID.
# @option --enabled <enabled>            Enable custom SMTP service
# @option --senderName <senderName>      Name of the email sender
# @option --senderEmail <senderEmail>    Email of the sender
# @option --replyTo <replyTo>            Reply to email
# @option --host <host>                  SMTP server host name
# @option --port <port>                  SMTP server port
# @option --username <username>          SMTP server username
# @option --password <password>          SMTP server password
# @option --secure <secure>              Does SMTP server use secure connection
# @flag -h --help                        display help for command
projects::updateSmtpConfiguration() {
    :;
}
# }}} appwrite projects updateSmtpConfiguration

# {{{ appwrite projects updateTeam
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --teamId <teamId>          Team ID of the team to transfer project to.
# @flag -h --help                    display help for command
projects::updateTeam() {
    :;
}
# }}} appwrite projects updateTeam

# {{{ appwrite projects getEmailTemplate
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --type <type>              Template type
# @option --locale <locale>          Template locale
# @flag -h --help                    display help for command
projects::getEmailTemplate() {
    :;
}
# }}} appwrite projects getEmailTemplate

# {{{ appwrite projects updateEmailTemplate
# @cmd
# @option --projectId <projectId>        Project unique ID.
# @option --type <type>                  Template type
# @option --locale <locale>              Template locale
# @option --subject <subject>            Email Subject
# @option --message <message>            Template message
# @option --senderName <senderName>      Name of the email sender
# @option --senderEmail <senderEmail>    Email of the sender
# @option --replyTo <replyTo>            Reply to email
# @flag -h --help                        display help for command
projects::updateEmailTemplate() {
    :;
}
# }}} appwrite projects updateEmailTemplate

# {{{ appwrite projects deleteEmailTemplate
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --type <type>              Template type
# @option --locale <locale>          Template locale
# @flag -h --help                    display help for command
projects::deleteEmailTemplate() {
    :;
}
# }}} appwrite projects deleteEmailTemplate

# {{{ appwrite projects getSmsTemplate
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --type <type>              Template type
# @option --locale <locale>          Template locale
# @flag -h --help                    display help for command
projects::getSmsTemplate() {
    :;
}
# }}} appwrite projects getSmsTemplate

# {{{ appwrite projects updateSmsTemplate
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --type <type>              Template type
# @option --locale <locale>          Template locale
# @option --message <message>        Template message
# @flag -h --help                    display help for command
projects::updateSmsTemplate() {
    :;
}
# }}} appwrite projects updateSmsTemplate

# {{{ appwrite projects deleteSmsTemplate
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --type <type>              Template type
# @option --locale <locale>          Template locale
# @flag -h --help                    display help for command
projects::deleteSmsTemplate() {
    :;
}
# }}} appwrite projects deleteSmsTemplate

# {{{ appwrite projects getUsage
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --range <range>            Date range.
# @flag -h --help                    display help for command
projects::getUsage() {
    :;
}
# }}} appwrite projects getUsage

# {{{ appwrite projects listWebhooks
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @flag -h --help                    display help for command
projects::listWebhooks() {
    :;
}
# }}} appwrite projects listWebhooks

# {{{ appwrite projects createWebhook
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --name <name>              Webhook name.
# @option --events* <events>         Events list.
# @option --url <url>                Webhook URL.
# @option --security <security>      Certificate verification, false for disabled or true for enabled.
# @option --httpUser <httpUser>      Webhook HTTP user.
# @option --httpPass <httpPass>      Webhook HTTP password.
# @flag -h --help                    display help for command
projects::createWebhook() {
    :;
}
# }}} appwrite projects createWebhook

# {{{ appwrite projects getWebhook
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --webhookId <webhookId>    Webhook unique ID.
# @flag -h --help                    display help for command
projects::getWebhook() {
    :;
}
# }}} appwrite projects getWebhook

# {{{ appwrite projects updateWebhook
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --webhookId <webhookId>    Webhook unique ID.
# @option --name <name>              Webhook name.
# @option --events* <events>         Events list.
# @option --url <url>                Webhook URL.
# @option --security <security>      Certificate verification, false for disabled or true for enabled.
# @option --httpUser <httpUser>      Webhook HTTP user.
# @option --httpPass <httpPass>      Webhook HTTP password.
# @flag -h --help                    display help for command
projects::updateWebhook() {
    :;
}
# }}} appwrite projects updateWebhook

# {{{ appwrite projects deleteWebhook
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --webhookId <webhookId>    Webhook unique ID.
# @flag -h --help                    display help for command
projects::deleteWebhook() {
    :;
}
# }}} appwrite projects deleteWebhook

# {{{ appwrite projects updateWebhookSignature
# @cmd
# @option --projectId <projectId>    Project unique ID.
# @option --webhookId <webhookId>    Webhook unique ID.
# @flag -h --help                    display help for command
projects::updateWebhookSignature() {
    :;
}
# }}} appwrite projects updateWebhookSignature
# }} appwrite projects

# {{ appwrite proxy
# @cmd The proxy command allows you to configure behavior for your attached domains.
# @flag -h --help    display help for command
proxy() {
    :;
}

# {{{ appwrite proxy listRules
# @cmd Get a list of all the proxy rules.
# @option --queries*[domain|resourceType|resourceId|url] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
proxy::listRules() {
    :;
}
# }}} appwrite proxy listRules

# {{{ appwrite proxy createRule
# @cmd Create a new proxy rule.
# @option --domain <domain>                Domain name.
# @option --resourceType <resourceType>    Action definition for the rule.
# @option --resourceId <resourceId>        ID of resource for the action type.
# @flag -h --help                          display help for command
proxy::createRule() {
    :;
}
# }}} appwrite proxy createRule

# {{{ appwrite proxy getRule
# @cmd Get a proxy rule by its unique ID.
# @option --ruleId <ruleId>    Rule ID.
# @flag -h --help              display help for command
proxy::getRule() {
    :;
}
# }}} appwrite proxy getRule

# {{{ appwrite proxy deleteRule
# @cmd Delete a proxy rule by its unique ID.
# @option --ruleId <ruleId>    Rule ID.
# @flag -h --help              display help for command
proxy::deleteRule() {
    :;
}
# }}} appwrite proxy deleteRule

# {{{ appwrite proxy updateRuleVerification
# @cmd
# @option --ruleId <ruleId>    Rule ID.
# @flag -h --help              display help for command
proxy::updateRuleVerification() {
    :;
}
# }}} appwrite proxy updateRuleVerification
# }} appwrite proxy

# {{ appwrite storage
# @cmd The storage command allows you to manage your project files.
# @flag -h --help    display help for command
storage() {
    :;
}

# {{{ appwrite storage listBuckets
# @cmd Get a list of all the storage buckets.
# @option --queries*[enabled|name|fileSecurity|maximumFileSize|encryption|antivirus] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
storage::listBuckets() {
    :;
}
# }}} appwrite storage listBuckets

# {{{ appwrite storage createBucket
# @cmd Create a new storage bucket.
# @option --bucketId <bucketId>                  Unique Id.
# @option --name <name>                          Bucket name
# @option --permissions* <permissions>           An array of permission strings.
# @option --fileSecurity <fileSecurity>          Enables configuring permissions for individual file.
# @option --enabled <enabled>                    Is bucket enabled? When set to 'disabled', users cannot access the files in this bucket but Server SDKs with and API key can still access the bucket.
# @option --maximumFileSize <maximumFileSize>    Maximum file size allowed in bytes.
# @option --allowedFileExtensions* <allowedFileExtensions>  Allowed file extensions.
# @option --compression <compression>            Compression algorithm choosen for compression.
# @option --encryption <encryption>              Is encryption enabled? For file size above 20MB encryption is skipped even if it's enabled
# @option --antivirus <antivirus>                Is virus scanning enabled? For file size above 20MB AntiVirus scanning is skipped even if it's enabled
# @flag -h --help                                display help for command
storage::createBucket() {
    :;
}
# }}} appwrite storage createBucket

# {{{ appwrite storage getBucket
# @cmd Get a storage bucket by its unique ID.
# @option --bucketId <bucketId>    Bucket unique ID.
# @flag -h --help                  display help for command
storage::getBucket() {
    :;
}
# }}} appwrite storage getBucket

# {{{ appwrite storage updateBucket
# @cmd Update a storage bucket by its unique ID.
# @option --bucketId <bucketId>                  Bucket unique ID.
# @option --name <name>                          Bucket name
# @option --permissions* <permissions>           An array of permission strings.
# @option --fileSecurity <fileSecurity>          Enables configuring permissions for individual file.
# @option --enabled <enabled>                    Is bucket enabled? When set to 'disabled', users cannot access the files in this bucket but Server SDKs with and API key can still access the bucket.
# @option --maximumFileSize <maximumFileSize>    Maximum file size allowed in bytes.
# @option --allowedFileExtensions* <allowedFileExtensions>  Allowed file extensions.
# @option --compression <compression>            Compression algorithm choosen for compression.
# @option --encryption <encryption>              Is encryption enabled? For file size above 20MB encryption is skipped even if it's enabled
# @option --antivirus <antivirus>                Is virus scanning enabled? For file size above 20MB AntiVirus scanning is skipped even if it's enabled
# @flag -h --help                                display help for command
storage::updateBucket() {
    :;
}
# }}} appwrite storage updateBucket

# {{{ appwrite storage deleteBucket
# @cmd Delete a storage bucket by its unique ID.
# @option --bucketId <bucketId>    Bucket unique ID.
# @flag -h --help                  display help for command
storage::deleteBucket() {
    :;
}
# }}} appwrite storage deleteBucket

# {{{ appwrite storage listFiles
# @cmd Get a list of all the user files.
# @option --bucketId <bucketId>    Storage bucket unique ID.
# @option --queries*[name|signature|mimeType|sizeOriginal|chunksTotal|chunksUploaded] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>        Search term to filter your list results.
# @flag -h --help                  display help for command
storage::listFiles() {
    :;
}
# }}} appwrite storage listFiles

# {{{ appwrite storage createFile
# @cmd Create a new file.
# @option --bucketId <bucketId>           Storage bucket unique ID.
# @option --fileId <fileId>               File ID.
# @option --file <file>                   Binary file.
# @option --permissions* <permissions>    An array of permission strings.
# @flag -h --help                         display help for command
storage::createFile() {
    :;
}
# }}} appwrite storage createFile

# {{{ appwrite storage getFile
# @cmd Get a file by its unique ID.
# @option --bucketId <bucketId>    Storage bucket unique ID.
# @option --fileId <fileId>        File ID.
# @flag -h --help                  display help for command
storage::getFile() {
    :;
}
# }}} appwrite storage getFile

# {{{ appwrite storage updateFile
# @cmd Update a file by its unique ID.
# @option --bucketId <bucketId>           Storage bucket unique ID.
# @option --fileId <fileId>               File unique ID.
# @option --name <name>                   Name of the file
# @option --permissions* <permissions>    An array of permission string.
# @flag -h --help                         display help for command
storage::updateFile() {
    :;
}
# }}} appwrite storage updateFile

# {{{ appwrite storage deleteFile
# @cmd Delete a file by its unique ID.
# @option --bucketId <bucketId>    Storage bucket unique ID.
# @option --fileId <fileId>        File ID.
# @flag -h --help                  display help for command
storage::deleteFile() {
    :;
}
# }}} appwrite storage deleteFile

# {{{ appwrite storage getFileDownload
# @cmd Get a file content by its unique ID.
# @option --bucketId <bucketId>    Storage bucket ID.
# @option --fileId <fileId>        File ID.
# @option --destination <path>     output file path.
# @flag -h --help                  display help for command
storage::getFileDownload() {
    :;
}
# }}} appwrite storage getFileDownload

# {{{ appwrite storage getFilePreview
# @cmd Get a file preview image.
# @option --bucketId <bucketId>            Storage bucket unique ID.
# @option --fileId <fileId>                File ID
# @option --width <width>                  Resize preview image width, Pass an integer between 0 to 4000.
# @option --height <height>                Resize preview image height, Pass an integer between 0 to 4000.
# @option --gravity <gravity>              Image crop gravity.
# @option --quality <quality>              Preview image quality.
# @option --borderWidth <borderWidth>      Preview image border in pixels.
# @option --borderColor <borderColor>      Preview image border color.
# @option --borderRadius <borderRadius>    Preview image border radius in pixels.
# @option --opacity <opacity>              Preview image opacity.
# @option --rotation <rotation>            Preview image rotation in degrees.
# @option --background <background>        Preview image background color.
# @option --output <output>                Output format type (jpeg, jpg, png, gif and webp).
# @option --destination <path>             output file path.
# @flag -h --help                          display help for command
storage::getFilePreview() {
    :;
}
# }}} appwrite storage getFilePreview

# {{{ appwrite storage getFileView
# @cmd Get a file content by its unique ID.
# @option --bucketId <bucketId>    Storage bucket unique ID.
# @option --fileId <fileId>        File ID.
# @option --destination <path>     output file path.
# @flag -h --help                  display help for command
storage::getFileView() {
    :;
}
# }}} appwrite storage getFileView

# {{{ appwrite storage getUsage
# @cmd
# @option --range <range>    Date range.
# @flag -h --help            display help for command
storage::getUsage() {
    :;
}
# }}} appwrite storage getUsage

# {{{ appwrite storage getBucketUsage
# @cmd
# @option --bucketId <bucketId>    Bucket ID.
# @option --range <range>          Date range.
# @flag -h --help                  display help for command
storage::getBucketUsage() {
    :;
}
# }}} appwrite storage getBucketUsage
# }} appwrite storage

# {{ appwrite teams
# @cmd The teams command allows you to group users of your project and to enable them to share read and write access to your project resources
# @flag -h --help    display help for command
teams() {
    :;
}

# {{{ appwrite teams list
# @cmd Get a list of all the teams in which the current user is a member.
# @option --queries*[name|total] <queries>    Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>                   Search term to filter your list results.
# @flag -h --help                             display help for command
teams::list() {
    :;
}
# }}} appwrite teams list

# {{{ appwrite teams create
# @cmd Create a new team.
# @option --teamId <teamId>    Team ID.
# @option --name <name>        Team name.
# @option --roles* <roles>     Array of strings.
# @flag -h --help              display help for command
teams::create() {
    :;
}
# }}} appwrite teams create

# {{{ appwrite teams get
# @cmd Get a team by its ID.
# @option --teamId <teamId>    Team ID.
# @flag -h --help              display help for command
teams::get() {
    :;
}
# }}} appwrite teams get

# {{{ appwrite teams updateName
# @cmd Update the team's name by its unique ID.
# @option --teamId <teamId>    Team ID.
# @option --name <name>        New team name.
# @flag -h --help              display help for command
teams::updateName() {
    :;
}
# }}} appwrite teams updateName

# {{{ appwrite teams delete
# @cmd Delete a team using its ID.
# @option --teamId <teamId>    Team ID.
# @flag -h --help              display help for command
teams::delete() {
    :;
}
# }}} appwrite teams delete

# {{{ appwrite teams listLogs
# @cmd Get the team activity logs list by its unique ID.
# @option --teamId <teamId>       Team ID.
# @option --queries* <queries>    Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                 display help for command
teams::listLogs() {
    :;
}
# }}} appwrite teams listLogs

# {{{ appwrite teams listMemberships
# @cmd Use this endpoint to list a team's members using the team's ID.
# @option --teamId <teamId>    Team ID.
# @option --queries*[userId|teamId|invited|joined|confirm] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
teams::listMemberships() {
    :;
}
# }}} appwrite teams listMemberships

# {{{ appwrite teams createMembership
# @cmd Invite a new member to join your team.
# @option --teamId <teamId>    Team ID.
# @option --roles* <roles>     Array of strings.
# @option --email <email>      Email of the new team member.
# @option --userId <userId>    ID of the user to be added to a team.
# @option --phone <phone>      Phone number.
# @option --url <url>          URL to redirect the user back to your app from the invitation email.
# @option --name <name>        Name of the new team member.
# @flag -h --help              display help for command
teams::createMembership() {
    :;
}
# }}} appwrite teams createMembership

# {{{ appwrite teams getMembership
# @cmd Get a team member by the membership unique id.
# @option --teamId <teamId>                Team ID.
# @option --membershipId <membershipId>    Membership ID.
# @flag -h --help                          display help for command
teams::getMembership() {
    :;
}
# }}} appwrite teams getMembership

# {{{ appwrite teams updateMembership
# @cmd Modify the roles of a team member.
# @option --teamId <teamId>                Team ID.
# @option --membershipId <membershipId>    Membership ID.
# @option --roles* <roles>                 An array of strings.
# @flag -h --help                          display help for command
teams::updateMembership() {
    :;
}
# }}} appwrite teams updateMembership

# {{{ appwrite teams deleteMembership
# @cmd This endpoint allows a user to leave a team or for a team owner to delete the membership of any other team member.
# @option --teamId <teamId>                Team ID.
# @option --membershipId <membershipId>    Membership ID.
# @flag -h --help                          display help for command
teams::deleteMembership() {
    :;
}
# }}} appwrite teams deleteMembership

# {{{ appwrite teams updateMembershipStatus
# @cmd Use this endpoint to allow a user to accept an invitation to join a team after being redirected back to your app from the invitation email received by the user.
# @option --teamId <teamId>                Team ID.
# @option --membershipId <membershipId>    Membership ID.
# @option --userId <userId>                User ID.
# @option --secret <secret>                Secret key.
# @flag -h --help                          display help for command
teams::updateMembershipStatus() {
    :;
}
# }}} appwrite teams updateMembershipStatus

# {{{ appwrite teams getPrefs
# @cmd Get the team's shared preferences by its unique ID.
# @option --teamId <teamId>    Team ID.
# @flag -h --help              display help for command
teams::getPrefs() {
    :;
}
# }}} appwrite teams getPrefs

# {{{ appwrite teams updatePrefs
# @cmd Update the team's preferences by its unique ID.
# @option --teamId <teamId>    Team ID.
# @option --prefs <prefs>      Prefs key-value JSON object.
# @flag -h --help              display help for command
teams::updatePrefs() {
    :;
}
# }}} appwrite teams updatePrefs
# }} appwrite teams

# {{ appwrite users
# @cmd The users command allows you to manage your project users.
# @flag -h --help    display help for command
users() {
    :;
}

# {{{ appwrite users list
# @cmd Get a list of all the project's users.
# @option --queries*[name|email|phone|status|passwordUpdate|registration|emailVerification|phoneVerification] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
users::list() {
    :;
}
# }}} appwrite users list

# {{{ appwrite users create
# @cmd Create a new user.
# @option --userId <userId>        User ID.
# @option --email <email>          User email.
# @option --phone <phone>          Phone number.
# @option --password <password>    Plain text user password.
# @option --name <name>            User name.
# @flag -h --help                  display help for command
users::create() {
    :;
}
# }}} appwrite users create

# {{{ appwrite users createArgon2User
# @cmd Create a new user.
# @option --userId <userId>        User ID.
# @option --email <email>          User email.
# @option --password <password>    User password hashed using Argon2.
# @option --name <name>            User name.
# @flag -h --help                  display help for command
users::createArgon2User() {
    :;
}
# }}} appwrite users createArgon2User

# {{{ appwrite users createBcryptUser
# @cmd Create a new user.
# @option --userId <userId>        User ID.
# @option --email <email>          User email.
# @option --password <password>    User password hashed using Bcrypt.
# @option --name <name>            User name.
# @flag -h --help                  display help for command
users::createBcryptUser() {
    :;
}
# }}} appwrite users createBcryptUser

# {{{ appwrite users listIdentities
# @cmd Get identities for all users.
# @option --queries[userId|provider|providerUid|providerEmail|providerAccessTokenExpiry] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
users::listIdentities() {
    :;
}
# }}} appwrite users listIdentities

# {{{ appwrite users deleteIdentity
# @cmd Delete an identity by its unique ID.
# @option --identityId <identityId>    Identity ID.
# @flag -h --help                      display help for command
users::deleteIdentity() {
    :;
}
# }}} appwrite users deleteIdentity

# {{{ appwrite users createMD5User
# @cmd Create a new user.
# @option --userId <userId>        User ID.
# @option --email <email>          User email.
# @option --password <password>    User password hashed using MD5.
# @option --name <name>            User name.
# @flag -h --help                  display help for command
users::createMD5User() {
    :;
}
# }}} appwrite users createMD5User

# {{{ appwrite users createPHPassUser
# @cmd Create a new user.
# @option --userId <userId>        User ID.
# @option --email <email>          User email.
# @option --password <password>    User password hashed using PHPass.
# @option --name <name>            User name.
# @flag -h --help                  display help for command
users::createPHPassUser() {
    :;
}
# }}} appwrite users createPHPassUser

# {{{ appwrite users createScryptUser
# @cmd Create a new user.
# @option --userId <userId>                        User ID.
# @option --email <email>                          User email.
# @option --password <password>                    User password hashed using Scrypt.
# @option --passwordSalt <passwordSalt>            Optional salt used to hash password.
# @option --passwordCpu <passwordCpu>              Optional CPU cost used to hash password.
# @option --passwordMemory <passwordMemory>        Optional memory cost used to hash password.
# @option --passwordParallel <passwordParallel>    Optional parallelization cost used to hash password.
# @option --passwordLength <passwordLength>        Optional hash length used to hash password.
# @option --name <name>                            User name.
# @flag -h --help                                  display help for command
users::createScryptUser() {
    :;
}
# }}} appwrite users createScryptUser

# {{{ appwrite users createScryptModifiedUser
# @cmd Create a new user.
# @option --userId <userId>                User ID.
# @option --email <email>                  User email.
# @option --password <password>            User password hashed using Scrypt Modified.
# @option --passwordSalt <passwordSalt>    Salt used to hash password.
# @option --passwordSaltSeparator <passwordSaltSeparator>  Salt separator used to hash password.
# @option --passwordSignerKey <passwordSignerKey>  Signer key used to hash password.
# @option --name <name>                    User name.
# @flag -h --help                          display help for command
users::createScryptModifiedUser() {
    :;
}
# }}} appwrite users createScryptModifiedUser

# {{{ appwrite users createSHAUser
# @cmd Create a new user.
# @option --userId <userId>                      User ID.
# @option --email <email>                        User email.
# @option --password <password>                  User password hashed using SHA.
# @option --passwordVersion <passwordVersion>    Optional SHA version used to hash password.
# @option --name <name>                          User name.
# @flag -h --help                                display help for command
users::createSHAUser() {
    :;
}
# }}} appwrite users createSHAUser

# {{{ appwrite users getUsage
# @cmd
# @option --range <range>          Date range.
# @option --provider <provider>    Provider Name.
# @flag -h --help                  display help for command
users::getUsage() {
    :;
}
# }}} appwrite users getUsage

# {{{ appwrite users get
# @cmd Get a user by its unique ID.
# @option --userId <userId>    User ID.
# @flag -h --help              display help for command
users::get() {
    :;
}
# }}} appwrite users get

# {{{ appwrite users delete
# @cmd Delete a user by its unique ID, thereby releasing it's ID.
# @option --userId <userId>    User ID.
# @flag -h --help              display help for command
users::delete() {
    :;
}
# }}} appwrite users delete

# {{{ appwrite users updateEmail
# @cmd Update the user email by its unique ID.
# @option --userId <userId>    User ID.
# @option --email <email>      User email.
# @flag -h --help              display help for command
users::updateEmail() {
    :;
}
# }}} appwrite users updateEmail

# {{{ appwrite users updateLabels
# @cmd Update the user labels by its unique ID.
# @option --userId <userId>     User ID.
# @option --labels* <labels>    Array of user labels.
# @flag -h --help               display help for command
users::updateLabels() {
    :;
}
# }}} appwrite users updateLabels

# {{{ appwrite users listLogs
# @cmd Get the user activity logs list by its unique ID.
# @option --userId <userId>       User ID.
# @option --queries* <queries>    Array of query strings generated using the Query class provided by the SDK.
# @flag -h --help                 display help for command
users::listLogs() {
    :;
}
# }}} appwrite users listLogs

# {{{ appwrite users listMemberships
# @cmd Get the user membership list by its unique ID.
# @option --userId <userId>    User ID.
# @flag -h --help              display help for command
users::listMemberships() {
    :;
}
# }}} appwrite users listMemberships

# {{{ appwrite users updateName
# @cmd Update the user name by its unique ID.
# @option --userId <userId>    User ID.
# @option --name <name>        User name.
# @flag -h --help              display help for command
users::updateName() {
    :;
}
# }}} appwrite users updateName

# {{{ appwrite users updatePassword
# @cmd Update the user password by its unique ID.
# @option --userId <userId>        User ID.
# @option --password <password>    New user password.
# @flag -h --help                  display help for command
users::updatePassword() {
    :;
}
# }}} appwrite users updatePassword

# {{{ appwrite users updatePhone
# @cmd Update the user phone by its unique ID.
# @option --userId <userId>    User ID.
# @option --number <number>    User phone number.
# @flag -h --help              display help for command
users::updatePhone() {
    :;
}
# }}} appwrite users updatePhone

# {{{ appwrite users getPrefs
# @cmd Get the user preferences by its unique ID.
# @option --userId <userId>    User ID.
# @flag -h --help              display help for command
users::getPrefs() {
    :;
}
# }}} appwrite users getPrefs

# {{{ appwrite users updatePrefs
# @cmd Update the user preferences by its unique ID.
# @option --userId <userId>    User ID.
# @option --prefs <prefs>      Prefs key-value JSON object.
# @flag -h --help              display help for command
users::updatePrefs() {
    :;
}
# }}} appwrite users updatePrefs

# {{{ appwrite users listSessions
# @cmd Get the user sessions list by its unique ID.
# @option --userId <userId>    User ID.
# @flag -h --help              display help for command
users::listSessions() {
    :;
}
# }}} appwrite users listSessions

# {{{ appwrite users deleteSessions
# @cmd Delete all user's sessions by using the user's unique ID.
# @option --userId <userId>    User ID.
# @flag -h --help              display help for command
users::deleteSessions() {
    :;
}
# }}} appwrite users deleteSessions

# {{{ appwrite users deleteSession
# @cmd Delete a user sessions by its unique ID.
# @option --userId <userId>          User ID.
# @option --sessionId <sessionId>    Session ID.
# @flag -h --help                    display help for command
users::deleteSession() {
    :;
}
# }}} appwrite users deleteSession

# {{{ appwrite users updateStatus
# @cmd Update the user status by its unique ID.
# @option --userId <userId>    User ID.
# @option --status <status>    User Status.
# @flag -h --help              display help for command
users::updateStatus() {
    :;
}
# }}} appwrite users updateStatus

# {{{ appwrite users updateEmailVerification
# @cmd Update the user email verification status by its unique ID.
# @option --userId <userId>    User ID.
# @option --emailVerification <emailVerification>  User email verification status.
# @flag -h --help              display help for command
users::updateEmailVerification() {
    :;
}
# }}} appwrite users updateEmailVerification

# {{{ appwrite users updatePhoneVerification
# @cmd Update the user phone verification status by its unique ID.
# @option --userId <userId>    User ID.
# @option --phoneVerification <phoneVerification>  User phone verification status.
# @flag -h --help              display help for command
users::updatePhoneVerification() {
    :;
}
# }}} appwrite users updatePhoneVerification
# }} appwrite users

# {{ appwrite vcs
# @cmd The vcs command allows you to interact with VCS providers and manage your code repositories.
# @flag -h --help    display help for command
vcs() {
    :;
}

# {{{ appwrite vcs listRepositories
# @cmd
# @option --installationId <installationId>    Installation Id
# @option --search <search>                    Search term to filter your list results.
# @flag -h --help                              display help for command
vcs::listRepositories() {
    :;
}
# }}} appwrite vcs listRepositories

# {{{ appwrite vcs createRepository
# @cmd
# @option --installationId <installationId>    Installation Id
# @option --name <name>                        Repository name (slug)
# @option --xprivate <xprivate>                Mark repository public or private
# @flag -h --help                              display help for command
vcs::createRepository() {
    :;
}
# }}} appwrite vcs createRepository

# {{{ appwrite vcs getRepository
# @cmd
# @option --installationId <installationId>    Installation Id
# @option --providerRepositoryId <providerRepositoryId>  Repository Id
# @flag -h --help                              display help for command
vcs::getRepository() {
    :;
}
# }}} appwrite vcs getRepository

# {{{ appwrite vcs listRepositoryBranches
# @cmd
# @option --installationId <installationId>    Installation Id
# @option --providerRepositoryId <providerRepositoryId>  Repository Id
# @flag -h --help                              display help for command
vcs::listRepositoryBranches() {
    :;
}
# }}} appwrite vcs listRepositoryBranches

# {{{ appwrite vcs createRepositoryDetection
# @cmd
# @option --installationId <installationId>    Installation Id
# @option --providerRepositoryId <providerRepositoryId>  Repository Id
# @option --providerRootDirectory <providerRootDirectory>  Path to Root Directory
# @flag -h --help                              display help for command
vcs::createRepositoryDetection() {
    :;
}
# }}} appwrite vcs createRepositoryDetection

# {{{ appwrite vcs updateExternalDeployments
# @cmd
# @option --installationId <installationId>    Installation Id
# @option --repositoryId <repositoryId>        VCS Repository Id
# @option --providerPullRequestId <providerPullRequestId>  GitHub Pull Request Id
# @flag -h --help                              display help for command
vcs::updateExternalDeployments() {
    :;
}
# }}} appwrite vcs updateExternalDeployments

# {{{ appwrite vcs listInstallations
# @cmd
# @option --queries*[provider|organization] <queries>  Array of query strings generated using the Query class provided by the SDK.
# @option --search <search>    Search term to filter your list results.
# @flag -h --help              display help for command
vcs::listInstallations() {
    :;
}
# }}} appwrite vcs listInstallations

# {{{ appwrite vcs getInstallation
# @cmd
# @option --installationId <installationId>    Installation Id
# @flag -h --help                              display help for command
vcs::getInstallation() {
    :;
}
# }}} appwrite vcs getInstallation

# {{{ appwrite vcs deleteInstallation
# @cmd
# @option --installationId <installationId>    Installation Id
# @flag -h --help                              display help for command
vcs::deleteInstallation() {
    :;
}
# }}} appwrite vcs deleteInstallation
# }} appwrite vcs

command eval "$(argc --argc-eval "$0" "$@")"