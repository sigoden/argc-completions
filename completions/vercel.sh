#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                     Output usage information
# @flag -v --version                  Output the version number
# @flag --cwd                         Current working directory
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token

# {{ vercel deploy
# @cmd Performs a deployment (default)
# @flag --archive                       Compress the deployment code into a file before uploading it
# @option -b --build-env <key=value>    Specify environment variables during build-time (e.g. `-b KEY1=value1 -b KEY2=value2`)
# @option -e --env <key=value>          Specify environment variables during run-time (e.g. `-e KEY1=value1 -e KEY2=value2`)
# @flag -f --force                      Force a new deployment even if nothing has changed
# @option -m --meta <key=value>         Specify metadata for the deployment (e.g. `-m KEY1=value1 -m KEY2=value2`)
# @flag --no-wait                       Don't wait for the deployment to finish
# @flag --prebuilt                      Use in combination with `vc build`.
# @flag --prod                          Create a production deployment
# @flag -p --public                     Deployment is public (`/_src`) is exposed)
# @flag --regions                       Set default regions to enable the deployment on
# @flag --with-cache                    Retain build cache when using "--force"
# @flag -y --yes                        Use default options to skip all prompts
# @option --cwd <DIR>                   Sets the current working directory for a single run of a command
# @flag -d --debug                      Debug mode (default off)
# @option -Q --global-config <DIR>      Path to the global `.vercel` directory
# @flag -h --help                       Output usage information
# @option -A --local-config <FILE>      Path to the local `vercel.json` file
# @flag --no-color                      No color mode (default off)
# @flag -S --scope                      Set a custom scope
# @option -t --token                    Login token
# @flag -v --version                    Output the version number
# @arg project-path
deploy() {
    :;
}
# }} vercel deploy

# {{ vercel dev
# @cmd Start a local development server
# @flag -h --help      Output usage information
# @flag -d --debug     Debug mode [off]
# @flag --no-color     No color mode [off]
# @flag -l --listen    [uri]  Specify a URI endpoint on which to listen [0.0.0.0:3000]
# @flag -t --token     [token]  Specify an Authorization Token
# @flag -y --yes       Skip questions when setting up new project using default scope and settings
# @arg dir!
dev() {
    :;
}
# }} vercel dev

# {{ vercel env
# @cmd Manages the Environment Variables for your current Project
# @flag -h --help                     Output usage information
# @option --environment[development|preview|production]  Set the Environment when pulling Environment Variables
# @flag --git-branch                  Specify the Git branch to pull specific Environment Variables for
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @option -t --token                  Login token
# @flag -y --yes                      Skip the confirmation prompt when overwriting env file on pull or removing an env variable
env() {
    :;
}

# {{{ vercel env ls
# @cmd List all variables for the specified Environment
# @arg environment!
# @arg gitbranch
env::ls() {
    :;
}
# }}} vercel env ls

# {{{ vercel env add
# @cmd Add an Environment Variable (see examples below)
# @arg name!
# @arg environment
# @arg gitbranch
env::add() {
    :;
}
# }}} vercel env add

# {{{ vercel env rm
# @cmd Remove an Environment Variable (see examples below)
# @arg name!
# @arg environment
# @arg gitbranch
env::rm() {
    :;
}
# }}} vercel env rm

# {{{ vercel env pull
# @cmd Pull all Development Environment Variables from the cloud and write to a file [.env.local]
# @arg filename!
env::pull() {
    :;
}
# }}} vercel env pull
# }} vercel env

# {{ vercel git
# @cmd Manage Git provider repository for your current Project
# @flag -h --help       Output usage information
# @option -t --token    Login token
# @flag -y --yes        Skip confirmation when connecting a Git provider
git() {
    :;
}

# {{{ vercel git connect
# @cmd Connect your Vercel Project to your Git repository or provide the remote URL to your Git repository
# @arg url!
git::connect() {
    :;
}
# }}} vercel git connect

# {{{ vercel git disconnect
# @cmd Disconnect the Git provider repository from your project
git::disconnect() {
    :;
}
# }}} vercel git disconnect
# }} vercel git

# {{ vercel init
# @cmd Initialize an example project
# @flag -h --help     Output usage information
# @flag -d --debug    Debug mode [off]
# @flag --no-color    No color mode [off]
# @flag -f --force    Overwrite destination directory if exists [off]
# @arg example
# @arg dir
init() {
    :;
}
# }} vercel init

# {{ vercel inspect
# @cmd Displays information related to a deployment
# @option --timeout <TIME>            Time to wait for deployment completion [3m]
# @flag --wait                        Blocks until deployment completes
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg url
inspect() {
    :;
}
# }} vercel inspect

# {{ vercel link
# @cmd Link local directory to a Vercel Project
# @option -p --project <NAME>         Specify a project name
# @flag -r --repo                     Link multiple projects based on Git repository (alpha)
# @flag -y --yes                      Skip questions when setting up new project using default scope and settings
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
link() {
    :;
}
# }} vercel link

# {{ vercel ls
# @cmd Lists deployments
# @alias list
# @option --environment <production|preview>
# @option --meta <KEY=value>          Filter deployments by metadata (e.g.: `-m KEY=value`).
# @option -n --next <MS>              Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
ls() {
    :;
}
# }} vercel ls

# {{ vercel login
# @cmd Logs into your account or creates a new one
# @flag --github                      Log in with GitHub
# @flag --oob                         Log in with "out of band" authentication
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg email-or-team-id <email or team id>
login() {
    :;
}
# }} vercel login

# {{ vercel logout
# @cmd Logs out of your account
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
logout() {
    :;
}
# }} vercel logout

# {{ vercel promote
# @cmd Promote an existing deployment to current
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @option -t --token                  Login token
# @option --timeout <TIME>            Time to wait for promotion completion [3m]
# @flag -y --yes                      Skip questions when setting up new project using default scope and settings
# @arg deployment-id-url <deployment id/url>
promote() {
    :;
}
# }} vercel promote

# {{ vercel pull
# @cmd Pull your Project Settings from the cloud
# @option --environment <environment>    Deployment environment [development]
# @flag -y --yes                         Skip questions when setting up new project using default scope and settings
# @option --cwd <DIR>                    Sets the current working directory for a single run of a command
# @flag -d --debug                       Debug mode (default off)
# @option -Q --global-config <DIR>       Path to the global `.vercel` directory
# @flag -h --help                        Output usage information
# @option -A --local-config <FILE>       Path to the local `vercel.json` file
# @flag --no-color                       No color mode (default off)
# @flag -S --scope                       Set a custom scope
# @option -t --token                     Login token
# @flag -v --version                     Output the version number
# @arg project-path
pull() {
    :;
}
# }} vercel pull

# {{ vercel redeploy
# @cmd Rebuild and deploy a previous deployment.
# @flag --no-wait                     Don't wait for the redeploy to finish
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg deploymentid-deploymentname <deploymentId|deploymentName>
redeploy() {
    :;
}
# }} vercel redeploy

# {{ vercel rollback
# @cmd Quickly revert back to a previous deployment
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @option -t --token                  Login token
# @option --timeout <TIME>            Time to wait for rollback completion [3m]
# @flag -y --yes                      Skip questions when setting up new project using default scope and settings
# @arg deployment-id-url <deployment id/url>
rollback() {
    :;
}
# }} vercel rollback

# {{ vercel switch
# @cmd Switches between teams and your personal account
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @flag -N --next                     Show next page of results
switch() {
    :;
}

# {{{ vercel switch add
# @cmd Create a new team
switch::add() {
    :;
}
# }}} vercel switch add

# {{{ vercel switch ls
# @cmd Show all teams you're a part of
switch::ls() {
    :;
}
# }}} vercel switch ls

# {{{ vercel switch invite
# @cmd Invite a new member to a team
# @arg email!
switch::invite() {
    :;
}
# }}} vercel switch invite
# }} vercel switch

# {{ vercel alias
# @cmd Manages your domain aliases
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @option -t --token                  Login token
# @flag -S --scope                    Set a custom scope
# @flag -N --next                     Show next page of results
# @flag -y --yes                      Skip the confirmation prompt when removing an alias
# @option --limit <VALUE>             Number of results to return per page (default: 20, max: 100)
alias() {
    :;
}

# {{{ vercel alias ls
# @cmd Show all aliases
alias::ls() {
    :;
}
# }}} vercel alias ls

# {{{ vercel alias set
# @cmd <deployment> <alias>  Create a new alias
alias::set() {
    :;
}
# }}} vercel alias set

# {{{ vercel alias rm
# @cmd <alias>  Remove an alias using its hostname
alias::rm() {
    :;
}
# }}} vercel alias rm
# }} vercel alias

# {{ vercel bisect
# @cmd Use binary search to find the deployment that introduced a bug
# @option -b --bad <URL>              Known bad URL
# @option -g --good <URL>             Known good URL
# @option -o --open <URL>             Automatically open each URL in the browser
# @option -p --path <URL>             Subpath of the deployment URL to test
# @option -r --run <URL>              Test script to run for each deployment
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
bisect() {
    :;
}
# }} vercel bisect

# {{ vercel certs
# @cmd Manages your SSL certificates
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @option -t --token                  Login token
# @flag -S --scope                    Set a custom scope
# @flag --challenge-only              Only show challenges needed to issue a cert
# @option --crt <FILE>                Certificate file
# @option --key <FILE>                Certificate key file
# @option --ca <FILE>                 CA certificate chain file
# @flag -N --next                     Show next page of results
# @option --limit <VALUE>             Number of results to return per page (default: 20, max: 100)
certs() {
    :;
}

# {{{ vercel certs ls
# @cmd Show all available certificates
certs::ls() {
    :;
}
# }}} vercel certs ls

# {{{ vercel certs issue
# @cmd <cn> <<cn>>  Issue a new certificate for a domain
certs::issue() {
    :;
}
# }}} vercel certs issue

# {{{ vercel certs rm
# @cmd <id>  Remove a certificate by id
certs::rm() {
    :;
}
# }}} vercel certs rm
# }} vercel certs

# {{ vercel dns
# @cmd Manages your DNS records
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @option -t --token                  Login token
# @flag -S --scope                    Set a custom scope
# @flag -N --next                     Show next page of results
# @option --limit <VALUE>             Number of results to return per page (default: 20, max: 100)
dns() {
    :;
}

# {{{ vercel dns add
# @cmd Add a new DNS entry (see below for examples)
# @arg details!
dns::add() {
    :;
}
# }}} vercel dns add

# {{{ vercel dns import
# @cmd Import a DNS zone file (see below for examples)
# @arg domain!
# @arg zonefile
dns::import() {
    :;
}
# }}} vercel dns import

# {{{ vercel dns rm
# @cmd Remove a DNS entry using its ID
# @arg id!
dns::rm() {
    :;
}
# }}} vercel dns rm

# {{{ vercel dns ls
# @cmd List all DNS entries for a domain
# @arg domain!
dns::ls() {
    :;
}
# }}} vercel dns ls
# }} vercel dns

# {{ vercel domains
# @cmd Manages your domain names
# @flag -h --help                     Output usage information
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @flag -f --force                    Force a domain on a project and remove it from an existing one
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @option -t --token                  Login token
# @flag -S --scope                    Set a custom scope
# @flag -N --next                     Show next page of results
# @option --limit <VALUE>             Number of results to return per page (default: 20, max: 100)
# @flag -y --yes                      Skip the confirmation prompt when removing a domain
domains() {
    :;
}

# {{{ vercel domains ls
# @cmd Show all domains in a list
domains::ls() {
    :;
}
# }}} vercel domains ls

# {{{ vercel domains inspect
# @cmd Displays information related to a domain
# @arg name!
domains::inspect() {
    :;
}
# }}} vercel domains inspect

# {{{ vercel domains add
# @cmd Add a new domain that you already own
# @arg name!
# @arg project
domains::add() {
    :;
}
# }}} vercel domains add

# {{{ vercel domains rm
# @cmd Remove a domain
# @arg name!
domains::rm() {
    :;
}
# }}} vercel domains rm

# {{{ vercel domains buy
# @cmd Buy a domain that you don't yet own
# @arg name!
domains::buy() {
    :;
}
# }}} vercel domains buy

# {{{ vercel domains move
# @cmd Move a domain to another user or team.
# @arg name!
# @arg destination
domains::move() {
    :;
}
# }}} vercel domains move

# {{{ vercel domains transfer-in
# @cmd Transfer in a domain to Vercel
# @arg name!
domains::transfer-in() {
    :;
}
# }}} vercel domains transfer-in
# }} vercel domains

# {{ vercel logs
# @cmd Displays the logs for a deployment
# @flag -f --follow                   Wait for additional data [off]
# @option -n --limit <NUMBER>         Number of log entries [100]
# @option -o --output <MODE>          Specify the output format (short|raw) [short]
# @option --since                     Only return logs after date (ISO 8601)
# @option --until                     Only return logs before date (ISO 8601), ignored when used with --follow
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg url-deploymentid <url|deploymentId>
logs() {
    :;
}
# }} vercel logs

# {{ vercel projects
# @cmd Manages your Projects
# @flag -h --help       Output usage information
# @option -t --token    Login token
# @flag -S --scope      Set a custom scope
# @flag -N --next       Show next page of results
projects() {
    :;
}

# {{{ vercel projects ls
# @cmd Show all projects in the selected team/user
projects::ls() {
    :;
}
# }}} vercel projects ls

# {{{ vercel projects add
# @cmd Add a new project
# @arg name!
projects::add() {
    :;
}
# }}} vercel projects add

# {{{ vercel projects rm
# @cmd Remove a project
# @arg name!
projects::rm() {
    :;
}
# }}} vercel projects rm
# }} vercel projects

# {{ vercel rm
# @cmd Removes a deployment
# @alias remove
# @flag -s --safe                     Skip deployments with an active alias
# @flag -y --yes                      Skip confirmation
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
rm() {
    :;
}
# }} vercel rm

# {{ vercel secrets
# @cmd Manages your global Secrets, for use in Environment Variables
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @option -t --token                  Login token
# @flag -S --scope                    Set a custom scope
# @flag -N --next                     Show next page of results
secrets() {
    :;
}

# {{{ vercel secrets ls
# @cmd Show all secrets in a list
secrets::ls() {
    :;
}
# }}} vercel secrets ls

# {{{ vercel secrets add
# @cmd Add a new secret
# @arg name!
# @arg value
secrets::add() {
    :;
}
# }}} vercel secrets add

# {{{ vercel secrets rename
# @cmd Change the name of a secret
# @arg old-name!
# @arg new-name
secrets::rename() {
    :;
}
# }}} vercel secrets rename

# {{{ vercel secrets rm
# @cmd Remove a secret
# @arg name!
secrets::rm() {
    :;
}
# }}} vercel secrets rm
# }} vercel secrets

# {{ vercel teams
# @cmd Manages your teams
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -d --debug                    Debug mode [off]
# @flag --no-color                    No color mode [off]
# @flag -N --next                     Show next page of results
teams() {
    :;
}

# {{{ vercel teams add
# @cmd Create a new team
teams::add() {
    :;
}
# }}} vercel teams add

# {{{ vercel teams ls
# @cmd Show all teams you're a part of
teams::ls() {
    :;
}
# }}} vercel teams ls

# {{{ vercel teams switch
# @cmd Switch to a different team
# @arg name!
teams::switch() {
    :;
}
# }}} vercel teams switch

# {{{ vercel teams invite
# @cmd Invite a new member to a team
# @arg email!
teams::invite() {
    :;
}
# }}} vercel teams invite
# }} vercel teams

# {{ vercel whoami
# @cmd Shows the username of the currently logged in user
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
whoami() {
    :;
}
# }} vercel whoami

command eval "$(argc --argc-eval "$0" "$@")"