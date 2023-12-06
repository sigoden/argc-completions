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
# @option --listen <uri>              Specify a URI endpoint on which to listen [0.0.0.0:3000]
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg dir
dev() {
    :;
}
# }} vercel dev

# {{ vercel env
# @cmd Manages the Environment Variables for your current Project
# @option --environment[development|preview|production]  Set the Environment when pulling Environment Variables
# @flag --git-branch                  Specify the Git branch to pull specific Environment Variables for
# @flag -y --yes                      Skip the confirmation prompt when removing an alias
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
env() {
    :;
}
# }} vercel env

# {{ vercel git
# @cmd Manage Git provider repository for your current Project
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
git() {
    :;
}
# }} vercel git

# {{ vercel init
# @cmd Initialize an example project
# @flag -f --force                    Overwrite destination directory if exists [off]
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
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
# @option --next <MS>                 Show next page of results
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
# @option --timeout <timeout>         Time to wait for promotion completion [3m]
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg deployment
# @arg id-url <id/url>
promote() {
    :;
}
# }} vercel promote

# {{ vercel pull
# @cmd Pull your Project Settings from the cloud
# @option --environment <environment>    Deployment environment [development]
# @option --git-branch <branch>          Specify the Git branch to pull specific Environment Variables for
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
# @option --timeout <timeout>         Time to wait for rollback completion [3m]
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg deployment
# @arg id-url <id/url>
rollback() {
    :;
}
# }} vercel rollback

# {{ vercel switch
# @cmd Switches between different scopes
# @option -N --next <MS>              Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
switch() {
    :;
}
# }} vercel switch

# {{ vercel alias
# @cmd Manages your domain aliases
# @option -n --limit <NUMBER>         Number of results to return per page (default: 20, max: 100)
# @option --next <MS>                 Show next page of results
# @flag -y --yes                      Skip the confirmation prompt when removing an alias
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
alias() {
    :;
}
# }} vercel alias

# {{ vercel bisect
# @cmd Use binary search to find the deployment that introduced a bug
bisect() {
    :;
}
# }} vercel bisect

# {{ vercel certs
# @cmd Manages your SSL certificates
# @option --ca <FILE>                 CA certificate chain file
# @flag --challenge-only              Only show challenges needed to issue a cert
# @option --crt <FILE>                Certificate file
# @option --key <FILE>                Certificate key file
# @option --limit <VALUE>             Number of results to return per page (default: 20, max: 100)
# @flag --next                        Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
certs() {
    :;
}
# }} vercel certs

# {{ vercel dns
# @cmd Manages your DNS records
# @option -n --limit <NUMBER>         Number of results to return per page (default: 20, max: 100)
# @option --next <MS>                 Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
dns() {
    :;
}
# }} vercel dns

# {{ vercel domains
# @cmd Manages your domain names
# @flag -f --force                    Force a domain on a project and remove it from an existing one
# @option -n --limit <NUMBER>         Number of results to return per page (default: 20, max: 100)
# @flag -N --next                     Show next page of results
# @flag -y --yes                      Skip the confirmation prompt when removing a domain
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
domains() {
    :;
}
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
# @option -N --next <MS>              Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
projects() {
    :;
}
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
# @option --next <MS>                 Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
# @arg command
secrets() {
    :;
}
# }} vercel secrets

# {{ vercel teams
# @cmd Manages your teams
# @option -N --next <MS>              Show next page of results
# @option --cwd <DIR>                 Sets the current working directory for a single run of a command
# @flag -d --debug                    Debug mode (default off)
# @option -Q --global-config <DIR>    Path to the global `.vercel` directory
# @flag -h --help                     Output usage information
# @option -A --local-config <FILE>    Path to the local `vercel.json` file
# @flag --no-color                    No color mode (default off)
# @flag -S --scope                    Set a custom scope
# @option -t --token                  Login token
# @flag -v --version                  Output the version number
teams() {
    :;
}
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