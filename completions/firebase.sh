#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                            output the version number
# @option -P --project <alias_or_project_id>    the Firebase project to use for this command
# @option --account <email>                     the Google account to use for authorization
# @flag -j --json                               output JSON instead of text, also triggers non-interactive mode
# @option --token <token>                       DEPRECATED - will be removed in a future major version - supply an auth token for this command
# @flag --non-interactive                       error out of the command instead of waiting for prompts
# @flag -i --interactive                        force prompts to be displayed
# @flag --debug                                 print verbose debug output and keep a debug log file
# @option -c --config <path>                    path to the firebase.json file to use for configuration
# @flag -h --help                               output usage information

# {{ firebase appdistribution:distribute
# @cmd upload a release binary
# @option --app <app_id>                 the app id of your Firebase app
# @option --release-notes <string>       release notes to include
# @option --release-notes-file <file>    path to file with release notes
# @option --testers <string>             a comma separated list of tester emails to distribute to
# @option --testers-file <file>          path to file with a comma separated list of tester emails to distribute to
# @option --groups <string>              a comma separated list of group aliases to distribute to
# @option --groups-file <file>           path to file with a comma separated list of group aliases to distribute to
# @flag -h --help                        output usage information
# @arg release-binary-file!
appdistribution:distribute() {
    :;
}
# }} firebase appdistribution:distribute

# {{ firebase appdistribution:testers:add
# @cmd add testers to project (and possibly group)
# @option --file <file>                  a path to a file containing a list of tester emails to be added
# @option --group-alias <group-alias>    if specified, the testers are also added to the group identified by this alias
# @flag -h --help                        output usage information
# @arg emails*
appdistribution:testers:add() {
    :;
}
# }} firebase appdistribution:testers:add

# {{ firebase appdistribution:testers:remove
# @cmd remove testers from a project (or group)
# @option --file <file>                  a path to a file containing a list of tester emails to be removed
# @option --group-alias <group-alias>    if specified, the testers are only removed from the group identified by this alias, but not the project
# @flag -h --help                        output usage information
# @arg emails*
appdistribution:testers:remove() {
    :;
}
# }} firebase appdistribution:testers:remove

# {{ firebase appdistribution:group:create
# @cmd create group in project
# @flag -h --help    output usage information
# @arg displayname!
# @arg alias
appdistribution:group:create() {
    :;
}
# }} firebase appdistribution:group:create

# {{ firebase appdistribution:group:delete
# @cmd delete group from a project
# @flag -h --help    output usage information
# @arg alias!
appdistribution:group:delete() {
    :;
}
# }} firebase appdistribution:group:delete

# {{ firebase apps:create
# @cmd create a new Firebase app.
# @option -a --package-name <packageName>    required package name for the Android app
# @option -b --bundle-id <bundleId>          required bundle id for the iOS app
# @option -s --app-store-id <appStoreId>     (optional) app store id for the iOS app
# @flag -h --help                            output usage information
# @arg platform
# @arg displayname
apps:create() {
    :;
}
# }} firebase apps:create

# {{ firebase apps:list
# @cmd list the registered apps of a Firebase project.
# @flag -h --help    output usage information
# @arg platform
apps:list() {
    :;
}
# }} firebase apps:list

# {{ firebase apps:sdkconfig
# @cmd print the Google Services config of a Firebase app.
# @option -o --out <file>    (optional) write config output to a file
# @flag -h --help            output usage information
# @arg platform
# @arg appid
apps:sdkconfig() {
    :;
}
# }} firebase apps:sdkconfig

# {{ firebase apps:android:sha:list
# @cmd list the SHA certificate hashes for a given app id.
# @flag -h --help    output usage information
# @arg appid!
apps:android:sha:list() {
    :;
}
# }} firebase apps:android:sha:list

# {{ firebase apps:android:sha:create
# @cmd add a SHA certificate hash for a given app id.
# @flag -h --help    output usage information
# @arg appid!
# @arg shahash!
apps:android:sha:create() {
    :;
}
# }} firebase apps:android:sha:create

# {{ firebase apps:android:sha:delete
# @cmd delete a SHA certificate hash for a given app id.
# @flag -h --help    output usage information
# @arg appid!
# @arg shaid!
apps:android:sha:delete() {
    :;
}
# }} firebase apps:android:sha:delete

# {{ firebase auth:export
# @cmd Export accounts from your Firebase project into a data file
# @option --format[csv|json] <format>    Format of exported data.
# @flag -h --help                        output usage information
# @arg datafile
auth:export() {
    :;
}
# }} firebase auth:export

# {{ firebase auth:import
# @cmd import users into your Firebase project from a data file(.csv or .json)
# @option --hash-algo <hashAlgo>                 specify the hash algorithm used in password for these accounts
# @option --hash-key <hashKey>                   specify the key used in hash algorithm
# @option --salt-separator <saltSeparator>       specify the salt separator which will be appended to salt when verifying password.
# @option --rounds <rounds>                      specify how many rounds for hash calculation.
# @option --mem-cost <memCost>                   specify the memory cost for firebase scrypt, or cpu/memory cost for standard scrypt
# @option --parallelization <parallelization>    specify the parallelization for standard scrypt.
# @option --block-size <blockSize>               specify the block size (normally is 8) for standard scrypt.
# @option --dk-len <dkLen>                       specify derived key length for standard scrypt.
# @option --hash-input-order <hashInputOrder>    specify the order of password and salt.
# @flag -h --help                                output usage information
# @arg datafile
auth:import() {
    :;
}
# }} firebase auth:import

# {{ firebase crashlytics:symbols:upload
# @cmd upload symbols for native code, to symbolicate stack traces
# @option --app <appID>                  the app id of your Firebase app
# @option --generator <breakpad|csym>    the symbol generator being used, default is breakpad
# @flag --dry-run                        generate symbols without uploading them
# @flag -h --help                        output usage information
# @arg symbolfiles+
crashlytics:symbols:upload() {
    :;
}
# }} firebase crashlytics:symbols:upload

# {{ firebase crashlytics:mappingfile:generateid
# @cmd generate a mapping file id and write it to an Android resource file, which will be built into the app
# @option --resource-file <resourceFile>    path to the Android resource XML file that will be created or updated.
# @flag -h --help                           output usage information
crashlytics:mappingfile:generateid() {
    :;
}
# }} firebase crashlytics:mappingfile:generateid

# {{ firebase crashlytics:mappingfile:upload
# @cmd upload a ProGuard/R8-compatible mapping file to deobfuscate stack traces
# @option --app <appID>                     the app id of your Firebase app
# @option --resource-file <resourceFile>    path to the Android resource XML file that includes the mapping file id
# @flag -h --help                           output usage information
# @arg mappingfile!
crashlytics:mappingfile:upload() {
    :;
}
# }} firebase crashlytics:mappingfile:upload

# {{ firebase database:get
# @cmd fetch and print JSON data at the specified path
# @option -o --output <filename>    save output to the specified file
# @flag --pretty                    pretty print response
# @flag --shallow                   return shallow response
# @flag --export                    include priorities in the output response
# @option --order-by <key>          select a child key by which to order results
# @flag --order-by-key              order by key name
# @flag --order-by-value            order by primitive value
# @option --limit-to-first <num>    limit to the first <num> results
# @option --limit-to-last <num>     limit to the last <num> results
# @option --start-at <val>          start results at <val> (based on specified ordering)
# @option --end-at <val>            end results at <val> (based on specified ordering)
# @option --equal-to <val>          restrict results to <val> (based on specified ordering)
# @option --instance <instance>     use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag -h --help                   output usage information
# @arg path!
database:get() {
    :;
}
# }} firebase database:get

# {{ firebase database:import
# @cmd non-atomically import the contents of a JSON file to the specified path in Realtime Database
# @flag -f --force                 automatically accept all interactive prompts
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag --disable-triggers         suppress any Cloud functions triggered by this operation, default to true (default: true)
# @option --filter <dataPath>      import only data at this path in the JSON file (if omitted, import entire file)
# @option --chunk-size <mb>        max chunk size in megabytes, default to 1 MB
# @option --concurrency <val>      concurrency limit, default to 5
# @flag -h --help                  output usage information
# @arg path!
# @arg infile
database:import() {
    :;
}
# }} firebase database:import

# {{ firebase database:instances:create
# @cmd create a realtime database instance
# @option -l --location <location>    (optional) location for the database instance, defaults to us-central1
# @flag -h --help                     output usage information
# @arg instancename!
database:instances:create() {
    :;
}
# }} firebase database:instances:create

# {{ firebase database:instances:list
# @cmd list realtime database instances, optionally filtered by a specified location
# @option -l --location <location>    (optional) location for the database instance, defaults to all regions
# @flag -h --help                     output usage information
database:instances:list() {
    :;
}
# }} firebase database:instances:list

# {{ firebase database:profile
# @cmd profile the Realtime Database and generate a usage report
# @option -o --output <filename>     save the output to the specified file
# @option -d --duration <seconds>    collect database usage information for the specified number of seconds
# @flag --raw                        output the raw stats collected as newline delimited json
# @flag --no-collapse                prevent collapsing similar paths into $wildcard locations
# @option -i --input <filename>      generate the report based on the specified file instead of streaming logs from the database
# @option --instance <instance>      use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag -h --help                    output usage information
database:profile() {
    :;
}
# }} firebase database:profile

# {{ firebase database:push
# @cmd add a new JSON object to a list of data in your Firebase
# @option -d --data <data>         specify escaped JSON directly
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag --disable-triggers         suppress any Cloud functions triggered by this operation
# @flag -h --help                  output usage information
# @arg path!
# @arg infile
database:push() {
    :;
}
# }} firebase database:push

# {{ firebase database:remove
# @cmd remove data from your Firebase at the specified path
# @flag -f --force                 pass this option to bypass confirmation prompt
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag --disable-triggers         suppress any Cloud functions triggered by this operation
# @flag -h --help                  output usage information
# @arg path!
database:remove() {
    :;
}
# }} firebase database:remove

# {{ firebase database:set
# @cmd store JSON data at the specified path via STDIN, arg, or file
# @option -d --data <data>         specify escaped JSON directly
# @flag -f --force                 pass this option to bypass confirmation prompt
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag --disable-triggers         suppress any Cloud functions triggered by this operation
# @flag -h --help                  output usage information
# @arg path!
# @arg infile
database:set() {
    :;
}
# }} firebase database:set

# {{ firebase database:settings:get
# @cmd read the realtime database setting at path
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, uses default database instance)
# @flag -h --help                  output usage information
# @arg path!
database:settings:get() {
    :;
}
# }} firebase database:settings:get

# {{ firebase database:settings:set
# @cmd set the realtime database setting at path.
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag -h --help                  output usage information
# @arg path!
# @arg value!
database:settings:set() {
    :;
}
# }} firebase database:settings:set

# {{ firebase database:update
# @cmd update some of the keys for the defined path in your Firebase
# @option -d --data <data>         specify escaped JSON directly
# @flag -f --force                 pass this option to bypass confirmation prompt
# @option --instance <instance>    use the database <instance>.firebaseio.com (if omitted, use default database instance)
# @flag --disable-triggers         suppress any Cloud functions triggered by this operation
# @flag -h --help                  output usage information
# @arg path!
# @arg infile
database:update() {
    :;
}
# }} firebase database:update

# {{ firebase deploy
# @cmd deploy code and assets to your Firebase project
# @flag -f --force                  delete Cloud Functions missing from the current working directory and bypass interactive prompts
# @option -p --public <path>        override the Hosting public directory specified in firebase.json
# @option -m --message <message>    an optional message describing this deploy
# @option --only <targets>          only deploy to specified, comma-separated targets (e.g. "hosting,storage").
# @option --except <targets>        deploy to all targets except specified (e.g. "database")
# @flag -h --help                   output usage information
deploy() {
    :;
}
# }} firebase deploy

# {{ firebase emulators:exec
# @cmd start the local Firebase emulators, run a test script, then shut down the emulators
# @option --only[auth|functions|firestore|database|hosting|pubsub|storage|eventarc] <emulators>  only specific emulators.
# @option --inspect-functions <port>    emulate Cloud Functions in debug mode with the node inspector on the given port (9229 if not specified)
# @option --import <dir>                import emulator data from a previous export (see emulators:export)
# @option --export-on-exit <dir>        automatically export emulator data (emulators:export) when the emulators make a clean exit (SIGINT), when no dir is provided the location of --import [dir] is used
# @option --log-verbosity[DEBUG|INFO|QUIET|SILENT] <verbosity>  One of: DEBUG, INFO, QUIET, SILENT.
# @flag --ui                            run the Emulator UI
# @flag -h --help                       output usage information
# @arg script!
emulators:exec() {
    :;
}
# }} firebase emulators:exec

# {{ firebase emulators:export
# @cmd export data from running emulators
# @flag -f --force    overwrite any export data in the target directory
# @option --only[auth|functions|firestore|database|hosting|pubsub|storage|eventarc] <emulators>  only specific emulators.
# @flag -h --help     output usage information
# @arg path!
emulators:export() {
    :;
}
# }} firebase emulators:export

# {{ firebase emulators:start
# @cmd start the local Firebase emulators
# @option --only[auth|functions|firestore|database|hosting|pubsub|storage|eventarc] <emulators>  only specific emulators.
# @option --inspect-functions <port>    emulate Cloud Functions in debug mode with the node inspector on the given port (9229 if not specified)
# @option --import <dir>                import emulator data from a previous export (see emulators:export)
# @option --export-on-exit <dir>        automatically export emulator data (emulators:export) when the emulators make a clean exit (SIGINT), when no dir is provided the location of --import [dir] is used
# @option --log-verbosity[DEBUG|INFO|QUIET|SILENT] <verbosity>  One of: DEBUG, INFO, QUIET, SILENT.
# @flag -h --help                       output usage information
emulators:start() {
    :;
}
# }} firebase emulators:start

# {{ firebase experimental:functions:shell
# @cmd launch full Node shell with emulated functions.
# @option -p --port <port>    the port on which to emulate functions (default: 5000) (default: 5000)
# @flag -h --help             output usage information
experimental:functions:shell() {
    :;
}
# }} firebase experimental:functions:shell

# {{ firebase experiments:list
# @cmd list all experiments, along with a description of each experiment and whether it is currently enabled
# @flag -h --help    output usage information
experiments:list() {
    :;
}
# }} firebase experiments:list

# {{ firebase experiments:describe
# @cmd describe what an experiment does when enabled
# @flag -h --help    output usage information
# @arg experiment!
experiments:describe() {
    :;
}
# }} firebase experiments:describe

# {{ firebase experiments:enable
# @cmd enable an experiment on this machine
# @flag -h --help    output usage information
# @arg experiment!
experiments:enable() {
    :;
}
# }} firebase experiments:enable

# {{ firebase experiments:disable
# @cmd disable an experiment on this machine
# @flag -h --help    output usage information
# @arg experiment!
experiments:disable() {
    :;
}
# }} firebase experiments:disable

# {{ firebase ext
# @cmd display information on how to use ext commands and extensions installed to your project
# @flag -h --help    output usage information
ext() {
    :;
}
# }} firebase ext

# {{ firebase ext:configure
# @cmd configure an existing extension instance
# @flag -f --force    automatically accept all interactive prompts
# @flag --local       deprecated
# @flag -h --help     output usage information
# @arg extensioninstanceid!
ext:configure() {
    :;
}
# }} firebase ext:configure

# {{ firebase ext:info
# @cmd display information about an extension by name (extensionName@x.y.z for a specific version)
# @flag --markdown    output info in Markdown suitable for constructing a README file
# @flag -h --help     output usage information
# @arg extensionname!
ext:info() {
    :;
}
# }} firebase ext:info

# {{ firebase ext:export
# @cmd export all Extension instances installed on a project to a local Firebase directory
# @flag -f --force    automatically accept all interactive prompts
# @flag -h --help     output usage information
ext:export() {
    :;
}
# }} firebase ext:export

# {{ firebase ext:install
# @cmd add an uploaded extension to firebase.json if [publisherId/extensionId] is provided;or, add a local extension if [localPath] is provided
# @flag --local       deprecated
# @flag -f --force    automatically accept all interactive prompts
# @flag -h --help     output usage information
# @arg extensionref
ext:install() {
    :;
}
# }} firebase ext:install

# {{ firebase ext:list
# @cmd list all the extensions that are installed in your Firebase project
# @flag -h --help    output usage information
ext:list() {
    :;
}
# }} firebase ext:list

# {{ firebase ext:uninstall
# @cmd uninstall an extension that is installed in your Firebase project by instance ID
# @flag --local       deprecated
# @flag -f --force    automatically accept all interactive prompts
# @flag -h --help     output usage information
# @arg extensioninstanceid!
ext:uninstall() {
    :;
}
# }} firebase ext:uninstall

# {{ firebase ext:update
# @cmd update an existing extension instance to the latest version, or to a specific version if provided
# @flag -f --force    automatically accept all interactive prompts
# @flag -h --help     output usage information
# @arg extensioninstanceid!
# @arg updatesource
ext:update() {
    :;
}
# }} firebase ext:update

# {{ firebase ext:dev:init
# @cmd initialize files for writing an extension in the current directory
# @flag -h --help    output usage information
ext:dev:init() {
    :;
}
# }} firebase ext:dev:init

# {{ firebase ext:dev:list
# @cmd list all extensions uploaded under publisher ID
# @flag -h --help    output usage information
# @arg publisherid!
ext:dev:list() {
    :;
}
# }} firebase ext:dev:list

# {{ firebase ext:dev:register
# @cmd register a publisher ID; run this before publishing your first extension.
# @flag -h --help    output usage information
ext:dev:register() {
    :;
}
# }} firebase ext:dev:register

# {{ firebase ext:dev:deprecate
# @cmd deprecate extension versions that match the version predicate
# @option -m --message <deprecationMessage>    deprecation message
# @flag -f --force                             override deprecation message for existing deprecated extension versions that match
# @flag -h --help                              output usage information
# @arg extensionref!
# @arg versionpredicate
ext:dev:deprecate() {
    :;
}
# }} firebase ext:dev:deprecate

# {{ firebase ext:dev:undeprecate
# @cmd undeprecate extension versions that match the version predicate
# @flag -h --help    output usage information
# @arg extensionref!
# @arg versionpredicate!
ext:dev:undeprecate() {
    :;
}
# }} firebase ext:dev:undeprecate

# {{ firebase ext:dev:upload
# @cmd upload a new version of an extension
# @option -s --stage <stage>    release stage (supports "alpha", "beta", "rc", and "stable")
# @option --repo <repo>         Public GitHub repo URI that contains the extension source
# @option --ref <ref>           commit hash, branch, or tag to build from the repo (defaults to HEAD)
# @option --root <root>         root directory that contains this extension (defaults to last uploaded root or "/" if none set)
# @flag --local                 upload from local source instead
# @flag -f --force              automatically accept all interactive prompts
# @flag -h --help               output usage information
# @arg extensionref!
ext:dev:upload() {
    :;
}
# }} firebase ext:dev:upload

# {{ firebase ext:dev:publish
# @cmd Deprecated.
# @option -s --stage <stage>    release stage (supports "alpha", "beta", "rc", and "stable")
# @option --repo <repo>         Public GitHub repo URI that contains the extension source
# @option --ref <ref>           commit hash, branch, or tag to build from the repo (defaults to HEAD)
# @option --root <root>         root directory that contains this extension (defaults to last uploaded root or "/" if none set)
# @flag -f --force              automatically accept all interactive prompts
# @flag -h --help               output usage information
# @arg extensionref!
ext:dev:publish() {
    :;
}
# }} firebase ext:dev:publish

# {{ firebase ext:dev:usage
# @cmd get usage for an extension
# @flag -h --help    output usage information
# @arg publisherid!
ext:dev:usage() {
    :;
}
# }} firebase ext:dev:usage

# {{ firebase firestore:delete
# @cmd Delete data from Cloud Firestore.
# @flag -r --recursive               Recursive.
# @flag --shallow                    Shallow.
# @flag --all-collections            Delete all.
# @flag -f --force                   No confirmation.
# @option --database <databaseId>    Database ID for database to delete from.
# @flag -h --help                    output usage information
# @arg path
firestore:delete() {
    :;
}
# }} firebase firestore:delete

# {{ firebase firestore:indexes
# @cmd List indexes in your project's Cloud Firestore database.
# @flag --pretty                     Pretty print.
# @option --database <databaseId>    Database ID of the firestore database from which to list indexes.
# @flag -h --help                    output usage information
firestore:indexes() {
    :;
}
# }} firebase firestore:indexes

# {{ firebase firestore:locations
# @cmd List possible locations for your Cloud Firestore project.
# @flag -h --help    output usage information
firestore:locations() {
    :;
}
# }} firebase firestore:locations

# {{ firebase firestore:databases:list
# @cmd List databases in your Cloud Firestore project.
# @flag -h --help    output usage information
firestore:databases:list() {
    :;
}
# }} firebase firestore:databases:list

# {{ firebase firestore:databases:get
# @cmd Get database in your Cloud Firestore project.
# @flag -h --help    output usage information
# @arg database
firestore:databases:get() {
    :;
}
# }} firebase firestore:databases:get

# {{ firebase firestore:databases:create
# @cmd Create a database in your Firebase project.
# @option --location <locationId>                  Region to create database, for example 'nam5'.
# @option --delete-protection <deleteProtectionState>  Whether or not to prevent deletion of database, for example 'ENABLED' or 'DISABLED'.
# @option --point-in-time-recovery <enablement>    Whether to enable the PITR feature on this database, for example 'ENABLED' or 'DISABLED'.
# @flag -h --help                                  output usage information
# @arg database!
firestore:databases:create() {
    :;
}
# }} firebase firestore:databases:create

# {{ firebase firestore:databases:update
# @cmd Update a database in your Firebase project.
# @flag --json                                     Prints raw json response of the create API call if specified
# @option --delete-protection <deleteProtectionState>  Whether or not to prevent deletion of database, for example 'ENABLED' or 'DISABLED'.
# @option --point-in-time-recovery <enablement>    Whether to enable the PITR feature on this database, for example 'ENABLED' or 'DISABLED'.
# @flag -h --help                                  output usage information
# @arg database!
firestore:databases:update() {
    :;
}
# }} firebase firestore:databases:update

# {{ firebase firestore:databases:delete
# @cmd Delete a database in your Cloud Firestore project.
# @flag --force      Attempt to delete database without prompting for confirmation.
# @flag -h --help    output usage information
# @arg database!
firestore:databases:delete() {
    :;
}
# }} firebase firestore:databases:delete

# {{ firebase functions:config:clone
# @cmd clone environment config from another project
# @option --from <projectId>    the project from which to clone configuration
# @option --only <keys>         a comma-separated list of keys to clone
# @option --except <keys>       a comma-separated list of keys to not clone
# @flag -h --help               output usage information
functions:config:clone() {
    :;
}
# }} firebase functions:config:clone

# {{ firebase functions:config:export
# @cmd Export environment config as environment variables in dotenv format
# @flag -h --help    output usage information
functions:config:export() {
    :;
}
# }} firebase functions:config:export

# {{ firebase functions:config:get
# @cmd fetch environment config stored at the given path
# @flag -h --help    output usage information
# @arg path
functions:config:get() {
    :;
}
# }} firebase functions:config:get

# {{ firebase functions:config:set
# @cmd set environment config with key=value syntax
# @flag -h --help    output usage information
# @arg values*
functions:config:set() {
    :;
}
# }} firebase functions:config:set

# {{ firebase functions:config:unset
# @cmd unset environment config at the specified path(s)
# @flag -h --help    output usage information
# @arg keys*
functions:config:unset() {
    :;
}
# }} firebase functions:config:unset

# {{ firebase functions:delete
# @cmd delete one or more Cloud Functions by name or group name.
# @option --region <region>    Specify region of the function to be deleted.
# @flag -f --force             automatically accept all interactive prompts
# @flag -h --help              output usage information
# @arg filters*
functions:delete() {
    :;
}
# }} firebase functions:delete

# {{ firebase functions:log
# @cmd read logs from deployed functions
# @option --only <function_names>    only show logs of specified, comma-seperated functions (e.g. "funcA,funcB")
# @option -n --lines <num_lines>     specify number of log lines to fetch
# @flag --open                       open logs page in web browser
# @flag -h --help                    output usage information
functions:log() {
    :;
}
# }} firebase functions:log

# {{ firebase functions:shell
# @cmd launch full Node shell with emulated functions
# @option -p --port <port>              the port on which to emulate functions
# @option --inspect-functions <port>    emulate Cloud Functions in debug mode with the node inspector on the given port (9229 if not specified)
# @flag -h --help                       output usage information
functions:shell() {
    :;
}
# }} firebase functions:shell

# {{ firebase functions:list
# @cmd list all deployed functions in your Firebase project
# @flag -h --help    output usage information
functions:list() {
    :;
}
# }} firebase functions:list

# {{ firebase functions:secrets:access
# @cmd
# @flag -h --help    output usage information
# @arg key-version <<KEY>[@version> #  #>
functions:secrets:access() {
    :;
}
# }} firebase functions:secrets:access

# {{ firebase functions:secrets:destroy
# @cmd
# @flag -f --force    Destroys a secret without confirmation.
# @flag -h --help     output usage information
# @arg key-version <<KEY>[@version> #  #>
functions:secrets:destroy() {
    :;
}
# }} firebase functions:secrets:destroy

# {{ firebase functions:secrets:get
# @cmd Get metadata for secret and its versions
# @flag -h --help    output usage information
# @arg key!
functions:secrets:get() {
    :;
}
# }} firebase functions:secrets:get

# {{ firebase functions:secrets:prune
# @cmd Destroys unused secrets
# @flag -f --force    Destroys unused secrets without prompt
# @flag -h --help     output usage information
functions:secrets:prune() {
    :;
}
# }} firebase functions:secrets:prune

# {{ firebase functions:secrets:set
# @cmd Create or update a secret for use in Cloud Functions for Firebase.
# @flag -f --force                  Automatically updates functions to use the new secret.
# @option --data-file <dataFile>    File path from which to read secret data.
# @flag -h --help                   output usage information
# @arg key!
functions:secrets:set() {
    :;
}
# }} firebase functions:secrets:set

# {{ firebase hosting:channel:create
# @cmd create a Firebase Hosting channel
# @option -e --expires <duration>    duration string (e.g. 12h or 30d) for channel expiration, max 30d
# @option --site <siteId>            site for which to create the channel
# @flag -h --help                    output usage information
# @arg channelid
hosting:channel:create() {
    :;
}
# }} firebase hosting:channel:create

# {{ firebase hosting:channel:delete
# @cmd delete a Firebase Hosting channel
# @flag -f --force           automatically accept all interactive prompts
# @option --site <siteId>    site in which the channel exists
# @flag -h --help            output usage information
# @arg channelid!
hosting:channel:delete() {
    :;
}
# }} firebase hosting:channel:delete

# {{ firebase hosting:channel:deploy
# @cmd deploy to a specific Firebase Hosting channel
# @option -e --expires <duration>      duration string (e.g. 12h, 30d) for channel expiration, max 30d; defaults to 7d
# @option --only* <target1,target2>    only create previews for specified targets
# @flag --open                         open a browser to the channel after deploying
# @flag --no-authorized-domains        do not sync channel domains with Firebase Auth
# @flag -h --help                      output usage information
# @arg channelid
hosting:channel:deploy() {
    :;
}
# }} firebase hosting:channel:deploy

# {{ firebase hosting:channel:list
# @cmd list all Firebase Hosting channels for your project
# @option --site <siteName>    list channels for the specified site
# @flag -h --help              output usage information
hosting:channel:list() {
    :;
}
# }} firebase hosting:channel:list

# {{ firebase hosting:channel:open
# @cmd opens the URL for a Firebase Hosting channel
# @option --site <siteId>    the site to which the channel belongs
# @flag -h --help            output usage information
# @arg channelid
hosting:channel:open() {
    :;
}
# }} firebase hosting:channel:open

# {{ firebase hosting:clone
# @cmd clone a version from one site to another
# @flag -h --help    output usage information
# @arg source!
# @arg targetchannel!
hosting:clone() {
    :;
}
# }} firebase hosting:clone

# {{ firebase hosting:disable
# @cmd stop serving web traffic to your Firebase Hosting site
# @flag -f --force                skip confirmation
# @option -s --site <siteName>    the site to disable
# @flag -h --help                 output usage information
hosting:disable() {
    :;
}
# }} firebase hosting:disable

# {{ firebase hosting:sites:create
# @cmd create a Firebase Hosting site
# @option --app <appId>    specify an existing Firebase Web App ID
# @flag -h --help          output usage information
# @arg siteid
hosting:sites:create() {
    :;
}
# }} firebase hosting:sites:create

# {{ firebase hosting:sites:delete
# @cmd delete a Firebase Hosting site
# @flag -f --force    automatically accept all interactive prompts
# @flag -h --help     output usage information
# @arg siteid!
hosting:sites:delete() {
    :;
}
# }} firebase hosting:sites:delete

# {{ firebase hosting:sites:get
# @cmd print info about a Firebase Hosting site
# @flag -h --help    output usage information
# @arg siteid!
hosting:sites:get() {
    :;
}
# }} firebase hosting:sites:get

# {{ firebase hosting:sites:list
# @cmd list Firebase Hosting sites
# @flag -h --help    output usage information
hosting:sites:list() {
    :;
}
# }} firebase hosting:sites:list

# {{ firebase init
# @cmd Interactively configure the current directory as a Firebase project or initialize new features in an already configured Firebase project directory.
# @flag -h --help    output usage information
# @arg feature
init() {
    :;
}
# }} firebase init

# {{ firebase backends:list
# @cmd List backends of a Firebase project.
# @option -l --location <location>    App Backend location (default: "us-central1")
# @flag -h --help                     output usage information
backends:list() {
    :;
}
# }} firebase backends:list

# {{ firebase backends:create
# @cmd Create a backend in a Firebase project
# @flag -h --help    output usage information
backends:create() {
    :;
}
# }} firebase backends:create

# {{ firebase backends:get
# @cmd Get backend details of a Firebase project
# @option -l --location <location>    App Backend location (default: "us-central1")
# @option --s <backendId>             Backend Id (default: "")
# @option --backendId <backendId>     Backend Id (default: "")
# @flag -h --help                     output usage information
backends:get() {
    :;
}
# }} firebase backends:get

# {{ firebase backends:delete
# @cmd Delete a backend from a Firebase project
# @option -l --location <location>      App Backend location (default: "us-central1")
# @option -s --backendId <backendId>    Backend Id (default: "")
# @flag -f --force                      automatically accept all interactive prompts
# @flag -h --help                       output usage information
backends:delete() {
    :;
}
# }} firebase backends:delete

# {{ firebase login
# @cmd log the CLI into Firebase
# @flag --no-localhost    login from a device without an accessible localhost
# @flag --reauth          force reauthentication even if already logged in
# @flag -h --help         output usage information
login() {
    :;
}
# }} firebase login

# {{ firebase login:add
# @cmd authorize the CLI for an additional account
# @flag --no-localhost    copy and paste a code instead of starting a local server for authentication
# @flag -h --help         output usage information
# @arg email
login:add() {
    :;
}
# }} firebase login:add

# {{ firebase login:ci
# @cmd generate an access token for use in non-interactive environments
# @flag --no-localhost    copy and paste a code instead of starting a local server for authentication
# @flag -h --help         output usage information
login:ci() {
    :;
}
# }} firebase login:ci

# {{ firebase login:list
# @cmd list authorized CLI accounts
# @flag -h --help    output usage information
login:list() {
    :;
}
# }} firebase login:list

# {{ firebase login:use
# @cmd set the default account to use for this project directory
# @flag -h --help    output usage information
# @arg email!
login:use() {
    :;
}
# }} firebase login:use

# {{ firebase logout
# @cmd log the CLI out of Firebase
# @flag -h --help    output usage information
# @arg email
logout() {
    :;
}
# }} firebase logout

# {{ firebase open
# @cmd quickly open a browser to relevant project resources
# @flag -h --help    output usage information
# @arg link
open() {
    :;
}
# }} firebase open

# {{ firebase projects:addfirebase
# @cmd add Firebase resources to a Google Cloud Platform project
# @flag -h --help    output usage information
# @arg projectid
projects:addfirebase() {
    :;
}
# }} firebase projects:addfirebase

# {{ firebase projects:create
# @cmd creates a new Google Cloud Platform project, then adds Firebase resources to the project
# @option -n --display-name <displayName>       (optional) display name for the project
# @option -o --organization <organizationId>    (optional) ID of the parent Google Cloud Platform organization under which to create this project
# @option -f --folder <folderId>                (optional) ID of the parent Google Cloud Platform folder in which to create this project
# @flag -h --help                               output usage information
# @arg projectid
projects:create() {
    :;
}
# }} firebase projects:create

# {{ firebase projects:list
# @cmd list all Firebase projects you have access to
# @flag -h --help    output usage information
projects:list() {
    :;
}
# }} firebase projects:list

# {{ firebase remoteconfig:get
# @cmd get a Firebase project's Remote Config template
# @option -v --version-number <versionNumber>    grabs the specified version of the template
# @option -o --output <filename>                 write config output to a filename (if omitted, will use the default file path)
# @flag -h --help                                output usage information
remoteconfig:get() {
    :;
}
# }} firebase remoteconfig:get

# {{ firebase remoteconfig:rollback
# @cmd roll back a project's published Remote Config template to the one specified by the provided version number
# @option -v --version-number <versionNumber>    rollback to the specified version of the template
# @flag -f --force                               automatically accept all interactive prompts
# @flag -h --help                                output usage information
remoteconfig:rollback() {
    :;
}
# }} firebase remoteconfig:rollback

# {{ firebase remoteconfig:versions:list
# @cmd get a list of Remote Config template versions that have been published for a Firebase project
# @option --limit <maxResults>    limit the number of versions being returned.
# @flag -h --help                 output usage information
remoteconfig:versions:list() {
    :;
}
# }} firebase remoteconfig:versions:list

# {{ firebase serve
# @cmd start a local server for your static assets
# @option -p --port <port>                         the port on which to listen (default: 5000) (default: 5000)
# @option -o --host <host>                         the host on which to listen (default: localhost) (default: "localhost")
# @option --only[hosting|functions] <targets>      only serve specified targets
# @option --except[hosting|functions] <targets>    serve all except specified targets
# @flag -h --help                                  output usage information
serve() {
    :;
}
# }} firebase serve

# {{ firebase setup:emulators:database
# @cmd downloads the database emulator
# @flag -h --help    output usage information
setup:emulators:database() {
    :;
}
# }} firebase setup:emulators:database

# {{ firebase setup:emulators:firestore
# @cmd downloads the firestore emulator
# @flag -h --help    output usage information
setup:emulators:firestore() {
    :;
}
# }} firebase setup:emulators:firestore

# {{ firebase setup:emulators:pubsub
# @cmd downloads the pubsub emulator
# @flag -h --help    output usage information
setup:emulators:pubsub() {
    :;
}
# }} firebase setup:emulators:pubsub

# {{ firebase setup:emulators:storage
# @cmd downloads the storage emulator
# @flag -h --help    output usage information
setup:emulators:storage() {
    :;
}
# }} firebase setup:emulators:storage

# {{ firebase setup:emulators:ui
# @cmd downloads the ui emulator
# @flag -h --help    output usage information
setup:emulators:ui() {
    :;
}
# }} firebase setup:emulators:ui

# {{ firebase target
# @cmd display configured deploy targets for the current project
# @flag -h --help    output usage information
# @arg type
target() {
    :;
}
# }} firebase target

# {{ firebase target:apply
# @cmd apply a deploy target to a resource
# @flag -h --help    output usage information
# @arg type!
# @arg name!
# @arg resources+
target:apply() {
    :;
}
# }} firebase target:apply

# {{ firebase target:clear
# @cmd clear all resources from a named resource target
# @flag -h --help    output usage information
# @arg type!
# @arg target!
target:clear() {
    :;
}
# }} firebase target:clear

# {{ firebase target:remove
# @cmd remove a resource target
# @flag -h --help    output usage information
# @arg type!
# @arg resource!
target:remove() {
    :;
}
# }} firebase target:remove

# {{ firebase use
# @cmd set an active Firebase project for your working directory
# @flag --add                 create a new project alias interactively
# @option --alias <name>      create a new alias for the provided project id
# @option --unalias <name>    remove an already created project alias
# @flag --clear               clear the active project selection
# @flag -h --help             output usage information
# @arg alias_or_project_id
use() {
    :;
}
# }} firebase use

command eval "$(argc --argc-eval "$0" "$@")"