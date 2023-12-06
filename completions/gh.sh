#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help       Show help for command
# @flag --version    Show gh version

# {{ gh auth
# @cmd Authenticate gh and git with GitHub
# @flag --help    Show help for command
auth() {
    :;
}

# {{{ gh auth login
# @cmd Authenticate with a GitHub host
# @option -p --git-protocol[ssh|https] <string>    The protocol to use for git operations:
# @option -h --hostname[`_choice_hostname`] <string>  The hostname of the GitHub instance to authenticate with
# @flag --insecure-storage                         Save authentication credentials in plain text instead of credential store
# @option -s --scopes*,[`_choice_auth_scope`] <string>  Additional authentication scopes to request
# @flag -w --web                                   Open a browser to authenticate
# @flag --with-token                               Read token from standard input
# @flag --help                                     Show help for command
auth::login() {
    :;
}
# }}} gh auth login

# {{{ gh auth logout
# @cmd Log out of a GitHub host
# @option -h --hostname[`_choice_hostname`] <string>  The hostname of the GitHub instance to log out of
# @flag --help    Show help for command
auth::logout() {
    :;
}
# }}} gh auth logout

# {{{ gh auth refresh
# @cmd Refresh stored authentication credentials
# @option -h --hostname[`_choice_hostname`] <string>  The GitHub host to use for authentication
# @flag --insecure-storage                Save authentication credentials in plain text instead of credential store
# @option -r --remove-scopes* <string>    Authentication scopes to remove from gh
# @flag --reset-scopes                    Reset authentication scopes to the default minimum set of scopes
# @option -s --scopes*,[`_choice_auth_scope`] <string>  Additional authentication scopes for gh to have
# @flag --help                            Show help for command
auth::refresh() {
    :;
}
# }}} gh auth refresh

# {{{ gh auth setup-git
# @cmd Setup git with GitHub CLI
# @option -h --hostname[`_choice_hostname`] <string>  The hostname to configure git for
# @flag --help    Show help for command
auth::setup-git() {
    :;
}
# }}} gh auth setup-git

# {{{ gh auth status
# @cmd View authentication status
# @option -h --hostname[`_choice_hostname`] <string>  Check a specific hostname's auth status
# @flag -t --show-token    Display the auth token
# @flag --help             Show help for command
auth::status() {
    :;
}
# }}} gh auth status

# {{{ gh auth token
# @cmd Print the auth token gh is configured to use
# @option -h --hostname[`_choice_hostname`] <string>  The hostname of the GitHub instance authenticated with
# @flag --help    Show help for command
auth::token() {
    :;
}
# }}} gh auth token
# }} gh auth

# {{ gh browse
# @cmd Open the repository in the browser
# @option -b --branch[`_choice_branch`] <string>  Select another branch by passing in the branch name
# @option -c --commit <string[="last"]>    Select another commit by passing in the commit SHA, default is the last commit
# @flag -n --no-browser                    Print destination URL instead of opening the browser
# @flag -p --projects                      Open repository projects
# @flag -r --releases                      Open repository releases
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag -s --settings                      Open repository settings
# @flag -w --wiki                          Open repository wiki
# @flag --help                             Show help for command
# @arg number-path-commit-sha <<number>|<path>|<commit-SHA>>
browse() {
    :;
}
# }} gh browse

# {{ gh codespace
# @cmd Connect to and manage codespaces
# @flag --help    Show help for command
codespace() {
    :;
}

# {{{ gh codespace code
# @cmd Open a codespace in Visual Studio Code
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag --insiders    Use the insiders version of Visual Studio Code
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @flag -w --web      Use the web version of Visual Studio Code
# @flag --help        Show help for command
codespace::code() {
    :;
}
# }}} gh codespace code

# {{{ gh codespace cp
# @cmd Copy files between local and remote file systems
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag -e --expand              Expand remote file names on remote shell
# @option -p --profile <file>    Name of the SSH profile to use
# @flag -r --recursive           Recursively copy directories
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @flag --help                   Show help for command
# @arg sources+
# @arg dest!
codespace::cp() {
    :;
}
# }}} gh codespace cp

# {{{ gh codespace create
# @cmd Create a codespace
# @option -b --branch[`_choice_branch`] <string>  repository branch
# @flag --default-permissions              do not prompt to accept additional permissions requested by the codespace
# @option --devcontainer-path <file>       path to the devcontainer.json file to use when creating codespace
# @option -d --display-name <string>       display name for the codespace
# @option --idle-timeout <duration>        allowed inactivity before codespace is stopped, e.g. "10m", "1h"
# @option -l --location[EastUs|SouthEastAsia|WestEurope|WestUs2] <path>  location:  (determined automatically if not provided)
# @option -m --machine <string>            hardware specifications for the VM
# @option -R --repo[`_choice_search_repo`] <string>  repository name with owner: user/repo
# @option --retention-period <duration>    allowed time after shutting down before the codespace is automatically deleted (maximum 30 days), e.g. "1h", "72h"
# @flag -s --status                        show status of post-create command and dotfiles
# @flag -w --web                           create codespace from browser, cannot be used with --display-name, --idle-timeout, or --retention-period
# @flag --help                             Show help for command
codespace::create() {
    :;
}
# }}} gh codespace create

# {{{ gh codespace delete
# @cmd Delete codespaces
# @flag --all                                Delete all codespaces
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @option --days <N>                         Delete codespaces older than N days
# @flag -f --force                           Skip confirmation for codespaces that contain unsaved changes
# @option -o --org[`_choice_org`] <login>    The login handle of the organization (admin-only)
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @option -u --user[`_choice_search_user`] <username>  The username to delete codespaces for (used with --org)
# @flag --help                               Show help for command
codespace::delete() {
    :;
}
# }}} gh codespace delete

# {{{ gh codespace edit
# @cmd Edit a codespace
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @option -d --display-name <string>    Set the display name
# @option -m --machine <string>         Set hardware specifications for the VM
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @flag --help                          Show help for command
codespace::edit() {
    :;
}
# }}} gh codespace edit

# {{{ gh codespace jupyter
# @cmd Open a codespace in JupyterLab
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @flag --help    Show help for command
codespace::jupyter() {
    :;
}
# }}} gh codespace jupyter

# {{{ gh codespace list
# @cmd List codespaces
# @option -q --jq <expression>               Filter JSON output using a jq expression
# @option --json[`_choice_codespace_field`] <fields>  Output JSON with the specified fields
# @option -L --limit <int>                   Maximum number of codespaces to list (default 30)
# @option -o --org[`_choice_org`] <login>    The login handle of the organization to list codespaces for (admin-only)
# @option -R --repo[`_choice_search_repo`] <string>  Repository name with owner: user/repo
# @option -t --template <string>             Format JSON output using a Go template; see "gh help formatting"
# @option -u --user[`_choice_search_user`] <username>  The username to list codespaces for (used with --org)
# @flag -w --web                             List codespaces in the web browser, cannot be used with --user or --org
# @flag --help                               Show help for command
codespace::list() {
    :;
}
# }}} gh codespace list

# {{{ gh codespace logs
# @cmd Access codespace logs
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag -f --follow    Tail and follow the logs
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @flag --help         Show help for command
codespace::logs() {
    :;
}
# }}} gh codespace logs

# {{{ gh codespace ports
# @cmd List ports in a codespace
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @option -q --jq <expression>      Filter JSON output using a jq expression
# @option --json[`_choice_codespace_field`] <fields>  Output JSON with the specified fields
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @option -t --template <string>    Format JSON output using a Go template; see "gh help formatting"
# @flag --help                      Show help for command
codespace::ports() {
    :;
}

# {{{{ gh codespace ports forward
# @cmd Forward ports
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @arg remote-port-local-port* <<remote-port>:<local-port>>
codespace::ports::forward() {
    :;
}
# }}}} gh codespace ports forward

# {{{{ gh codespace ports visibility
# @cmd Change the visibility of the forwarded port
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @arg port-public-private-org* <<port>:{public|private|org}>
codespace::ports::visibility() {
    :;
}
# }}}} gh codespace ports visibility
# }}} gh codespace ports

# {{{ gh codespace rebuild
# @cmd Rebuild a codespace
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag --full    perform a full rebuild
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @flag --help    Show help for command
codespace::rebuild() {
    :;
}
# }}} gh codespace rebuild

# {{{ gh codespace ssh
# @cmd SSH into a codespace
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @flag --config                 Write OpenSSH configuration to stdout
# @flag -d --debug               Log debug data to a file
# @option --debug-file <file>    Path of the file log to
# @option --profile <file>       Name of the SSH profile to use
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @option --server-port <int>    SSH server port number (0 => pick unused)
# @flag --help                   Show help for command
# @arg command[`_module_os_command`]
codespace::ssh() {
    :;
}
# }}} gh codespace ssh

# {{{ gh codespace stop
# @cmd Stop a running codespace
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @option -o --org[`_choice_org`] <login>    The login handle of the organization (admin-only)
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @option -u --user[`_choice_search_user`] <username>  The username to stop codespace for (used with --org)
# @flag --help                               Show help for command
codespace::stop() {
    :;
}
# }}} gh codespace stop

# {{{ gh codespace view
# @cmd View details about a codespace
# @option -c --codespace[`_choice_codespace`] <string>  Name of the codespace
# @option -q --jq <expression>      Filter JSON output using a jq expression
# @option --json[`_choice_codespace_field`] <fields>  Output JSON with the specified fields
# @option -R --repo[`_choice_search_repo`] <string>  Filter codespace selection by repository name (user/repo)
# @option --repo-owner[`_choice_owner`] <string>  Filter codespace selection by repository owner (username or org)
# @option -t --template <string>    Format JSON output using a Go template; see "gh help formatting"
# @flag --help                      Show help for command
codespace::view() {
    :;
}
# }}} gh codespace view
# }} gh codespace

# {{ gh gist
# @cmd Manage gists
# @flag --help    Show help for command
gist() {
    :;
}

# {{{ gh gist clone
# @cmd Clone a gist locally
# @flag --help    Show help for command
# @arg gist![`_choice_gist`]
# @arg directory
gist::clone() {
    :;
}
# }}} gh gist clone

# {{{ gh gist create
# @cmd Create a new gist
# @option -d --desc <string>      A description for this gist
# @option -f --filename <file>    Provide a filename to be used when reading from standard input
# @flag -p --public               List the gist publicly (default: secret)
# @flag -w --web                  Open the web browser with created gist
# @flag --help                    Show help for command
# @arg filename <<filename>...|->
gist::create() {
    :;
}
# }}} gh gist create

# {{{ gh gist delete
# @cmd Delete a gist
# @flag --help    Show help for command
# @arg gist[`_choice_gist`]
gist::delete() {
    :;
}
# }}} gh gist delete

# {{{ gh gist edit
# @cmd Edit one of your gists
# @option -a --add <file>       Add a new file to the gist
# @option -d --desc <string>    New description for the gist
# @option -f --filename[`_choice_gist_file`] <file>  Select a file to edit
# @option -r --remove <file>    Remove a file from the gist
# @flag --help                  Show help for command
# @arg gist[`_choice_gist`]
# @arg filename[`_choice_gist_file`]
gist::edit() {
    :;
}
# }}} gh gist edit

# {{{ gh gist list
# @cmd List your gists
# @option -L --limit <int>    Maximum number of gists to fetch (default 10)
# @flag --public              Show only public gists
# @flag --secret              Show only secret gists
# @flag --help                Show help for command
gist::list() {
    :;
}
# }}} gh gist list

# {{{ gh gist rename
# @cmd Rename a file in a gist
# @flag --help    Show help for command
# @arg gist[`_choice_gist`]
# @arg oldfilename![`_choice_gist_file`]
# @arg newfilename!
gist::rename() {
    :;
}
# }}} gh gist rename

# {{{ gh gist view
# @cmd View a gist
# @option -f --filename[`_choice_gist_file`] <file>  Display a single file from the gist
# @flag --files     List file names from the gist
# @flag -r --raw    Print raw instead of rendered gist contents
# @flag -w --web    Open gist in the browser
# @flag --help      Show help for command
# @arg gist[`_choice_gist`]
gist::view() {
    :;
}
# }}} gh gist view
# }} gh gist

# {{ gh issue
# @cmd Manage issues
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
issue() {
    :;
}

# {{{ gh issue create
# @cmd Create a new issue
# @option -a --assignee*,[`_choice_assignee`] <login>  Assign people by their login.
# @option -b --body <string>                      Supply a body.
# @option -F --body-file <file>                   Read body text from file (use "-" to read from standard input)
# @option -l --label*,[`_choice_label`] <name>    Add labels by name
# @option -m --milestone[`_choice_milestone`] <name>  Add the issue to a milestone by name
# @option -p --project[`_choice_repo_project`] <name>  Add the issue to projects by name
# @option --recover <string>                      Recover input from a failed run of create
# @option -T --template[`_choice_issue_template`] <name>  Template name to use as starting body text
# @option -t --title <string>                     Supply a title.
# @flag -w --web                                  Open the browser to create an issue
# @flag --help                                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
issue::create() {
    :;
}
# }}} gh issue create

# {{{ gh issue list
# @cmd List issues in a repository
# @option --app <string>                           Filter by GitHub App author
# @option -a --assignee*,[`_choice_assignee`] <string>  Filter by assignee
# @option -A --author[`_choice_search_user`] <string>  Filter by author
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json*,[`_choice_issue_field`] <fields>  Output JSON with the specified fields
# @option -l --label*,[`_choice_label`] <string>   Filter by label
# @option -L --limit <int>                         Maximum number of issues to fetch (default 30)
# @option --mention[`_choice_mention`] <string>    Filter by mention
# @option -m --milestone[`_choice_milestone`] <string>  Filter by milestone number or title
# @option -S --search <query>                      Search issues with query
# @option -s --state[open|closed|all] <string>     Filter by state:  (default "open")
# @option -t --template[`_choice_issue_template`] <string>  Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                                   List issues in the web browser
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
issue::list() {
    :;
}
# }}} gh issue list

# {{{ gh issue status
# @cmd Show status of relevant issues
# @option -q --jq <expression>    Filter JSON output using a jq expression
# @option --json*,[`_choice_issue_field`] <fields>  Output JSON with the specified fields
# @option -t --template[`_choice_issue_template`] <string>  Format JSON output using a Go template; see "gh help formatting"
# @flag --help                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
issue::status() {
    :;
}
# }}} gh issue status

# {{{ gh issue close
# @cmd Close issue
# @option -c --comment <string>    Leave a closing comment
# @option -r --reason <string>     Reason for closing: {completed|not planned}
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_open_issue`]
issue::close() {
    :;
}
# }}} gh issue close

# {{{ gh issue comment
# @cmd Add a comment to an issue
# @option -b --body <text>         The comment body text
# @option -F --body-file <file>    Read body text from file (use "-" to read from standard input)
# @flag --edit-last                Edit the last comment of the same author
# @flag -e --editor                Skip prompts and open the text editor to write the body in
# @flag -w --web                   Open the web browser to write the comment
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_open_issue`]
issue::comment() {
    :;
}
# }}} gh issue comment

# {{{ gh issue delete
# @cmd Delete issue
# @flag --yes     confirm deletion without prompting
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_all_issue`]
issue::delete() {
    :;
}
# }}} gh issue delete

# {{{ gh issue develop
# @cmd Manage linked branches for an issue
# @option -b --base[`_choice_branch`] <string>    Name of the base branch you want to make your new branch from
# @option --branch-repo <string>                  Name or URL of the repository where you want to create your new branch
# @flag -c --checkout                             Checkout the branch after creating it
# @flag -l --list                                 List linked branches for the issue
# @option -n --name[`_choice_branch`] <string>    Name of the branch to create
# @flag --help                                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_open_issue`]
issue::develop() {
    :;
}
# }}} gh issue develop

# {{{ gh issue edit
# @cmd Edit issues
# @option --add-assignee*,[`_choice_assignee`] <login>  Add assigned users by their login.
# @option --add-label*,[`_choice_label`] <name>    Add labels by name
# @option --add-project*,[`_choice_repo_project`] <name>  Add the issue to projects by name
# @option -b --body <string>                       Set the new body.
# @option -F --body-file <file>                    Read body text from file (use "-" to read from standard input)
# @option -m --milestone[`_choice_milestone`] <name>  Edit the milestone the issue belongs to by name
# @option --remove-assignee*,[`_choice_issue_assignee`] <login>  Remove assigned users by their login.
# @option --remove-label*,[`_choice_issue_label`] <name>  Remove labels by name
# @option --remove-project*,[`_choice_issue_project`] <name>  Remove the issue from projects by name
# @option -t --title <string>                      Set the new title.
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_open_issue`]
issue::edit() {
    :;
}
# }}} gh issue edit

# {{{ gh issue lock
# @cmd Lock issue conversation
# @option -r --reason[off_topic|resolved|spam|too_heated] <string>  Optional reason for locking conversation.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_all_issue`]
issue::lock() {
    :;
}
# }}} gh issue lock

# {{{ gh issue pin
# @cmd Pin a issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_open_issue`]
issue::pin() {
    :;
}
# }}} gh issue pin

# {{{ gh issue reopen
# @cmd Reopen issue
# @option -c --comment <string>    Add a reopening comment
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_closed_issue`]
issue::reopen() {
    :;
}
# }}} gh issue reopen

# {{{ gh issue transfer
# @cmd Transfer issue to another repository
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_all_issue`]
# @arg destination-repo![`_choice_search_repo`]
issue::transfer() {
    :;
}
# }}} gh issue transfer

# {{{ gh issue unlock
# @cmd Unlock issue conversation
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_all_issue`]
issue::unlock() {
    :;
}
# }}} gh issue unlock

# {{{ gh issue unpin
# @cmd Unpin a issue
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_pin_issue`]
issue::unpin() {
    :;
}
# }}} gh issue unpin

# {{{ gh issue view
# @cmd View an issue
# @flag -c --comments             View issue comments
# @option -q --jq <expression>    Filter JSON output using a jq expression
# @option --json*,[`_choice_issue_field`] <fields>  Output JSON with the specified fields
# @option -t --template[`_choice_issue_template`] <string>  Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                  Open an issue in the browser
# @flag --help                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg issue[`_choice_open_issue`]
issue::view() {
    :;
}
# }}} gh issue view
# }} gh issue

# {{ gh org
# @cmd Manage organizations
# @flag --help    Show help for command
org() {
    :;
}

# {{{ gh org list
# @cmd List organizations for the authenticated user.
# @option -L --limit <int>    Maximum number of organizations to list (default 30)
# @flag --help                Show help for command
org::list() {
    :;
}
# }}} gh org list
# }} gh org

# {{ gh pr
# @cmd Manage pull requests
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
pr() {
    :;
}

# {{{ gh pr create
# @cmd Create a pull request
# @option -a --assignee*,[`_choice_assignee`] <login>  Assign people by their login.
# @option -B --base[`_choice_branch`] <branch>    The branch into which you want your code merged
# @option -b --body <string>                      Body for the pull request
# @option -F --body-file <file>                   Read body text from file (use "-" to read from standard input)
# @flag -d --draft                                Mark pull request as a draft
# @flag -f --fill                                 Use commit info for title and body
# @flag --fill-first                              Use first commit info for title and body
# @option -H --head[`_choice_branch`] <branch>    The branch that contains commits for your pull request (default: current branch)
# @option -l --label*,[`_choice_label`] <name>    Add labels by name
# @option -m --milestone[`_choice_milestone`] <name>  Add the pull request to a milestone by name
# @flag --no-maintainer-edit                      Disable maintainer's ability to modify pull request
# @option -p --project*,[`_choice_repo_project`] <name>  Add the pull request to projects by name
# @option --recover <string>                      Recover input from a failed run of create
# @option -r --reviewer*,[`_choice_assignee`] <handle>  Request reviews from people or teams by their handle
# @option -T --template <file>                    Template file to use as starting body text
# @option -t --title <string>                     Title for the pull request
# @flag -w --web                                  Open the web browser to create a pull request
# @flag --help                                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
pr::create() {
    :;
}
# }}} gh pr create

# {{{ gh pr list
# @cmd List pull requests in a repository
# @option --app <string>                           Filter by GitHub App author
# @option -a --assignee*,[`_choice_assignee`] <string>  Filter by assignee
# @option -A --author[`_choice_search_user`] <string>  Filter by author
# @option -B --base[`_choice_branch`] <string>     Filter by base branch
# @flag -d --draft                                 Filter by draft state
# @option -H --head[`_choice_branch`] <string>     Filter by head branch
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json*,[`_choice_pr_field`] <fields>    Output JSON with the specified fields
# @option -l --label*,[`_choice_label`] <string>   Filter by label
# @option -L --limit <int>                         Maximum number of items to fetch (default 30)
# @option -S --search <query>                      Search pull requests with query
# @option -s --state[open|closed|merged|all] <string>  Filter by state:  (default "open")
# @option -t --template <string>                   Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                                   List pull requests in the web browser
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
pr::list() {
    :;
}
# }}} gh pr list

# {{{ gh pr status
# @cmd Show status of relevant pull requests
# @flag -c --conflict-status                       Display the merge conflict status of each pull request
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json*,[`_choice_pr_field`] <fields>    Output JSON with the specified fields
# @option -t --template <string>                   Format JSON output using a Go template; see "gh help formatting"
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
pr::status() {
    :;
}
# }}} gh pr status

# {{{ gh pr checkout
# @cmd Check out a pull request in git
# @option -b --branch[`_choice_branch`] <string>  Local branch name to use (default: the name of the head branch)
# @flag --detach                Checkout PR with a detached HEAD
# @flag -f --force              Reset the existing local branch to the latest state of the pull request
# @flag --recurse-submodules    Update all submodules after checkout
# @flag --help                  Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::checkout() {
    :;
}
# }}} gh pr checkout

# {{{ gh pr checks
# @cmd Show CI status for a single pull request
# @flag --fail-fast    Exit watch mode on first check failure
# @flag --required     Only show checks that are required
# @flag --watch        Watch checks until they finish
# @flag -w --web       Open the web browser to show details about checks
# @flag --help         Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_pr_checks`]
pr::checks() {
    :;
}
# }}} gh pr checks

# {{{ gh pr close
# @cmd Close a pull request
# @option -c --comment <string>    Leave a closing comment
# @flag -d --delete-branch         Delete the local and remote branch after close
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::close() {
    :;
}
# }}} gh pr close

# {{{ gh pr comment
# @cmd Add a comment to a pull request
# @option -b --body <text>         The comment body text
# @option -F --body-file <file>    Read body text from file (use "-" to read from standard input)
# @flag --edit-last                Edit the last comment of the same author
# @flag -e --editor                Skip prompts and open the text editor to write the body in
# @flag -w --web                   Open the web browser to write the comment
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::comment() {
    :;
}
# }}} gh pr comment

# {{{ gh pr diff
# @cmd View changes in a pull request
# @option --color[always|never|auto] <string>    Use color in diff output:  (default "auto")
# @flag --name-only                              Display only names of changed files
# @flag --patch                                  Display diff in patch format
# @flag -w --web                                 Open the pull request diff in the browser
# @flag --help                                   Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::diff() {
    :;
}
# }}} gh pr diff

# {{{ gh pr edit
# @cmd Edit a pull request
# @option --add-assignee*,[`_choice_assignee`] <login>  Add assigned users by their login.
# @option --add-label*,[`_choice_label`] <name>    Add labels by name
# @option --add-project*,[`_choice_repo_project`] <name>  Add the pull request to projects by name
# @option --add-reviewer*,[`_choice_assignee`] <login>  Add reviewers by their login.
# @option -B --base[`_choice_branch`] <branch>     Change the base branch for this pull request
# @option -b --body <string>                       Set the new body.
# @option -F --body-file <file>                    Read body text from file (use "-" to read from standard input)
# @option -m --milestone[`_choice_milestone`] <name>  Edit the milestone the pull request belongs to by name
# @option --remove-assignee*,[`_choice_pr_assignee`] <login>  Remove assigned users by their login.
# @option --remove-label*,[`_choice_pr_label`] <name>  Remove labels by name
# @option --remove-project*,[`_choice_pr_project`] <name>  Remove the pull request from projects by name
# @option --remove-reviewer*,[`_choice_pr_reviewer`] <login>  Remove reviewers by their login.
# @option -t --title <string>                      Set the new title.
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::edit() {
    :;
}
# }}} gh pr edit

# {{{ gh pr lock
# @cmd Lock pull request conversation
# @option -r --reason[off_topic|resolved|spam|too_heated] <string>  Optional reason for locking conversation.
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::lock() {
    :;
}
# }}} gh pr lock

# {{{ gh pr merge
# @cmd Merge a pull request
# @flag --admin                       Use administrator privileges to merge a pull request that does not meet requirements
# @option -A --author-email <text>    Email text for merge commit author
# @flag --auto                        Automatically merge only after necessary requirements are met
# @option -b --body <text>            Body text for the merge commit
# @option -F --body-file <file>       Read body text from file (use "-" to read from standard input)
# @flag -d --delete-branch            Delete the local and remote branch after merge
# @flag --disable-auto                Disable auto-merge for this pull request
# @option --match-head-commit[`_choice_pr_commit`] <SHA>  Commit SHA that the pull request head must match to allow merge
# @flag -m --merge                    Merge the commits with the base branch
# @flag -r --rebase                   Rebase the commits onto the base branch
# @flag -s --squash                   Squash the commits into one commit and merge it into the base branch
# @option -t --subject <text>         Subject text for the merge commit
# @flag --help                        Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::merge() {
    :;
}
# }}} gh pr merge

# {{{ gh pr ready
# @cmd Mark a pull request as ready for review
# @flag --undo    Convert a pull request to "draft"
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_ready_pr`]
pr::ready() {
    :;
}
# }}} gh pr ready

# {{{ gh pr reopen
# @cmd Reopen a pull request
# @option -c --comment <string>    Add a reopening comment
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_closed_pr`]
pr::reopen() {
    :;
}
# }}} gh pr reopen

# {{{ gh pr review
# @cmd Add a review to a pull request
# @flag -a --approve               Approve pull request
# @option -b --body <string>       Specify the body of a review
# @option -F --body-file <file>    Read body text from file (use "-" to read from standard input)
# @flag -c --comment               Comment on a pull request
# @flag -r --request-changes       Request changes on a pull request
# @flag --help                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::review() {
    :;
}
# }}} gh pr review

# {{{ gh pr unlock
# @cmd Unlock pull request conversation
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::unlock() {
    :;
}
# }}} gh pr unlock

# {{{ gh pr view
# @cmd View a pull request
# @flag -c --comments                              View pull request comments
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json*,[`_choice_pr_field`] <fields>    Output JSON with the specified fields
# @option -t --template <string>                   Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                                   Open a pull request in the browser
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg pr[`_choice_open_pr`]
pr::view() {
    :;
}
# }}} gh pr view
# }} gh pr

# {{ gh project
# @cmd Work with GitHub Projects.
# @flag --help    Show help for command
project() {
    :;
}

# {{{ gh project close
# @cmd Close a project
# @option --format[json] <string>              Output format, must be 'json'
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag --undo                                 Reopen a closed project
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::close() {
    :;
}
# }}} gh project close

# {{{ gh project copy
# @cmd Copy a project
# @flag --drafts                     Include draft issues when copying
# @option --format[json] <string>    Output format: {json}
# @option --source-owner[`_choice_owner`] <string>  Login of the source owner.
# @option --target-owner[`_choice_owner`] <string>  Login of the target owner.
# @option --title <string>           Title for the new project
# @flag --help                       Show help for command
# @arg project[`_choice_project`]
project::copy() {
    :;
}
# }}} gh project copy

# {{{ gh project create
# @cmd Create a project
# @option --format[json] <string>              Output format: {json}
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @option --title <string>                     Title for the project
# @flag --help                                 Show help for command
project::create() {
    :;
}
# }}} gh project create

# {{{ gh project delete
# @cmd Delete a project
# @option --format[json] <string>              Output format: {json}
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::delete() {
    :;
}
# }}} gh project delete

# {{{ gh project edit
# @cmd Edit a project
# @option -d --description <string>                New description of the project
# @option --format[json] <string>                  Output format: {json}
# @option --owner[`_choice_owner`] <string>        Login of the owner.
# @option --readme <string>                        New readme for the project
# @option --title <string>                         New title for the project
# @option --visibility[PUBLIC|PRIVATE] <string>    Change project visibility:
# @flag --help                                     Show help for command
# @arg project[`_choice_project`]
project::edit() {
    :;
}
# }}} gh project edit

# {{{ gh project field-create
# @cmd Create a field in a project
# @option --data-type[TEXT|SINGLE_SELECT|DATE|NUMBER] <string>  DataType of the new field.:
# @option --format[json] <string>              Output format: {json}
# @option --name <string>                      Name of the new field
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @option --single-select-options* <string>    Options for SINGLE_SELECT data type
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::field-create() {
    :;
}
# }}} gh project field-create

# {{{ gh project field-delete
# @cmd Delete a field in a project
# @option --format[json] <string>    Output format: {json}
# @option --id <string>              ID of the field to delete
# @flag --help                       Show help for command
project::field-delete() {
    :;
}
# }}} gh project field-delete

# {{{ gh project field-list
# @cmd List the fields in a project
# @option --format[json] <string>              Output format: {json}
# @option -L --limit <int>                     Maximum number of fields to fetch (default 30)
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::field-list() {
    :;
}
# }}} gh project field-list

# {{{ gh project item-add
# @cmd Add a pull request or an issue to a project
# @option --format[json] <string>              Output format: {json}
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @option --url <string>                       URL of the issue or pull request to add to the project
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::item-add() {
    :;
}
# }}} gh project item-add

# {{{ gh project item-archive
# @cmd Archive an item in a project
# @option --format[json] <string>              Output format: {json}
# @option --id <string>                        ID of the item to archive
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag --undo                                 Unarchive an item
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::item-archive() {
    :;
}
# }}} gh project item-archive

# {{{ gh project item-create
# @cmd Create a draft issue item in a project
# @option --body <string>                      Body for the draft issue
# @option --format[json] <string>              Output format: {json}
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @option --title <string>                     Title for the draft issue
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::item-create() {
    :;
}
# }}} gh project item-create

# {{{ gh project item-delete
# @cmd Delete an item from a project by ID
# @option --format[json] <string>              Output format: {json}
# @option --id <string>                        ID of the item to delete
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::item-delete() {
    :;
}
# }}} gh project item-delete

# {{{ gh project item-edit
# @cmd Edit an item in a project
# @option --body <string>                       Body of the draft issue item
# @flag --clear                                 Remove field value
# @option --date <string>                       Date value for the field (YYYY-MM-DD)
# @option --field-id <string>                   ID of the field to update
# @option --format[json] <string>               Output format: {json}
# @option --id <string>                         ID of the item to edit
# @option --iteration-id <string>               ID of the iteration value to set on the field
# @option --number <float32>                    Number value for the field
# @option --project-id <string>                 ID of the project to which the field belongs to
# @option --single-select-option-id <string>    ID of the single select option value to set on the field
# @option --text <string>                       Text value for the field
# @option --title <string>                      Title of the draft issue item
# @flag --help                                  Show help for command
project::item-edit() {
    :;
}
# }}} gh project item-edit

# {{{ gh project item-list
# @cmd List the items in a project
# @option --format[json] <string>              Output format: {json}
# @option -L --limit <int>                     Maximum number of items to fetch (default 30)
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::item-list() {
    :;
}
# }}} gh project item-list

# {{{ gh project list
# @cmd List the projects for an owner
# @flag --closed                               Include closed projects
# @option --format[json] <string>              Output format: {json}
# @option -L --limit <int>                     Maximum number of projects to fetch (default 30)
# @option --owner[`_choice_owner`] <string>    Login of the owner
# @flag -w --web                               Open projects list in the browser
# @flag --help                                 Show help for command
project::list() {
    :;
}
# }}} gh project list

# {{{ gh project mark-template
# @cmd Mark a project as a template
# @option --format[json] <string>              Output format: {json}
# @option --owner[`_choice_owner`] <string>    Login of the org owner.
# @flag --undo                                 Unmark the project as a template.
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::mark-template() {
    :;
}
# }}} gh project mark-template

# {{{ gh project view
# @cmd View a project
# @option --format[json] <string>              Output format: {json}
# @option --owner[`_choice_owner`] <string>    Login of the owner.
# @flag -w --web                               Open a project in the browser
# @flag --help                                 Show help for command
# @arg project[`_choice_project`]
project::view() {
    :;
}
# }}} gh project view
# }} gh project

# {{ gh release
# @cmd Manage releases
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
release() {
    :;
}

# {{{ gh release create
# @cmd Create a new release
# @option --discussion-category[`_choice_discussion_category`] <string>  Start a discussion in the specified category
# @flag -d --draft                                 Save the release as a draft instead of publishing it
# @flag --generate-notes                           Automatically generate title and notes for the release
# @flag --latest                                   Mark this release as "Latest" (default: automatic based on date and version)
# @option -n --notes <string>                      Release notes
# @option -F --notes-file <file>                   Read release notes from file (use "-" to read from standard input)
# @flag --notes-from-tag                           Automatically generate notes from annotated tag
# @option --notes-start-tag <string>               Tag to use as the starting point for generating release notes
# @flag -p --prerelease                            Mark the release as a prerelease
# @option --target*,[`_choice_branch`] <branch>    Target branch or full commit SHA (default: main branch)
# @option -t --title <string>                      Release title
# @flag --verify-tag                               Abort in case the git tag doesn't already exist in the remote repository
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag[`_choice_tag`]
# @arg files*
release::create() {
    :;
}
# }}} gh release create

# {{{ gh release list
# @cmd List releases in a repository
# @flag --exclude-drafts          Exclude draft releases
# @flag --exclude-pre-releases    Exclude pre-releases
# @option -L --limit <int>        Maximum number of items to fetch (default 30)
# @flag --help                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
release::list() {
    :;
}
# }}} gh release list

# {{{ gh release delete
# @cmd Delete a release
# @flag --cleanup-tag    Delete the specified tag in addition to its release
# @flag -y --yes         Skip the confirmation prompt
# @flag --help           Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag![`_choice_tag`]
release::delete() {
    :;
}
# }}} gh release delete

# {{{ gh release delete-asset
# @cmd Delete an asset from a release
# @flag -y --yes    Skip the confirmation prompt
# @flag --help      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag![`_choice_tag`]
# @arg asset-name![`_choice_release_asset`]
release::delete-asset() {
    :;
}
# }}} gh release delete-asset

# {{{ gh release download
# @cmd Download release assets
# @option -A --archive <format>     Download the source code archive in the specified format (zip or tar.gz)
# @flag --clobber                   Overwrite existing files of the same name
# @option -D --dir <directory>      The directory to download files into (default ".")
# @option -O --output <file>        The file to write a single asset to (use "-" to write to standard output)
# @option -p --pattern* <string>    Download only assets that match a glob pattern
# @flag --skip-existing             Skip downloading when files of the same name exist
# @flag --help                      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag[`_choice_tag`]
release::download() {
    :;
}
# }}} gh release download

# {{{ gh release edit
# @cmd Edit a release
# @option --discussion-category[`_choice_discussion_category`] <string>  Start a discussion in the specified category when publishing a draft
# @flag --draft                                    Save the release as a draft instead of publishing it
# @flag --latest                                   Explicitly mark the release as "Latest"
# @option -n --notes <string>                      Release notes
# @option -F --notes-file <file>                   Read release notes from file (use "-" to read from standard input)
# @flag --prerelease                               Mark the release as a prerelease
# @option --tag <string>                           The name of the tag
# @option --target*,[`_choice_branch`] <branch>    Target branch or full commit SHA (default: main branch)
# @option -t --title <string>                      Release title
# @flag --verify-tag                               Abort in case the git tag doesn't already exist in the remote repository
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag![`_choice_tag`]
release::edit() {
    :;
}
# }}} gh release edit

# {{{ gh release upload
# @cmd Upload assets to a release
# @flag --clobber    Overwrite existing assets of the same name
# @flag --help       Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag![`_choice_tag`]
# @arg files+
release::upload() {
    :;
}
# }}} gh release upload

# {{{ gh release view
# @cmd View information about a release
# @option -q --jq <expression>      Filter JSON output using a jq expression
# @option --json <fields>           Output JSON with the specified fields
# @option -t --template <string>    Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                    Open the release in the browser
# @flag --help                      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg tag[`_choice_tag`]
release::view() {
    :;
}
# }}} gh release view
# }} gh release

# {{ gh repo
# @cmd Manage repositories
# @flag --help    Show help for command
repo() {
    :;
}

# {{{ gh repo create
# @cmd Create a new repository
# @flag --add-readme                   Add a README file to the new repository
# @flag -c --clone                     Clone the new repository to the current directory
# @option -d --description <string>    Description of the repository
# @flag --disable-issues               Disable issues in the new repository
# @flag --disable-wiki                 Disable wiki in the new repository
# @option -g --gitignore[`_choice_gitignore`] <string>  Specify a gitignore template for the repository
# @option -h --homepage <URL>          Repository home page URL
# @flag --include-all-branches         Include all branches from template repository
# @flag --internal                     Make the new repository internal
# @option -l --license[`_choice_license`] <string>  Specify an Open Source License for the repository
# @flag --private                      Make the new repository private
# @flag --public                       Make the new repository public
# @flag --push                         Push local commits to the new repository
# @option -r --remote <string>         Specify remote name for the new repository
# @option -s --source <path>           Specify path to local repository to use as source
# @option -t --team <name>             The name of the organization team to be granted access
# @option -p --template[`_choice_search_repo`] <repository>  Make the new repository based on a template repository
# @flag --help                         Show help for command
# @arg name
repo::create() {
    :;
}
# }}} gh repo create

# {{{ gh repo list
# @cmd List repositories owned by user or organization
# @flag --archived                                 Show only archived repositories
# @flag --fork                                     Show only forks
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json[`_choice_repo_field`] <fields>    Output JSON with the specified fields
# @option -l --language <string>                   Filter by primary coding language
# @option -L --limit <int>                         Maximum number of repositories to list (default 30)
# @flag --no-archived                              Omit archived repositories
# @flag --source                                   Show only non-forks
# @option -t --template[`_choice_search_repo`] <string>  Format JSON output using a Go template; see "gh help formatting"
# @option --topic* <string>                        Filter by topic
# @option --visibility[public|private|internal] <string>  Filter by repository visibility:
# @flag --help                                     Show help for command
# @arg owner[`_choice_owner`]
repo::list() {
    :;
}
# }}} gh repo list

# {{{ gh repo archive
# @cmd Archive a repository
# @flag -y --yes    Skip the confirmation prompt
# @flag --help      Show help for command
# @arg repository[`_choice_search_repo`]
repo::archive() {
    :;
}
# }}} gh repo archive

# {{{ gh repo clone
# @cmd Clone a repository locally
# @option -u --upstream-remote-name <string>    Upstream remote name when cloning a fork (default "upstream")
# @flag --help                                  Show help for command
# @arg repository![`_choice_search_repo`]
# @arg directory
repo::clone() {
    :;
}
# }}} gh repo clone

# {{{ gh repo delete
# @cmd Delete a repository
# @flag --yes     confirm deletion without prompting
# @flag --help    Show help for command
# @arg repository[`_choice_search_repo`]
repo::delete() {
    :;
}
# }}} gh repo delete

# {{{ gh repo deploy-key
# @cmd Manage deploy keys in a repository
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
repo::deploy-key() {
    :;
}

# {{{{ gh repo deploy-key add
# @cmd Add a deploy key to a GitHub repository
# @flag -w --allow-write         Allow write access for the key
# @option -t --title <string>    Title of the new key
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg key-file!
repo::deploy-key::add() {
    :;
}
# }}}} gh repo deploy-key add

# {{{{ gh repo deploy-key delete
# @cmd Delete a deploy key from a GitHub repository
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg key-id![`_choice_repo_key`]
repo::deploy-key::delete() {
    :;
}
# }}}} gh repo deploy-key delete

# {{{{ gh repo deploy-key list
# @cmd List deploy keys in a GitHub repository
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json[`_choice_repo_field`] <fields>    Output JSON with the specified fields
# @option -t --template[`_choice_search_repo`] <string>  Format JSON output using a Go template; see "gh help formatting"
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
repo::deploy-key::list() {
    :;
}
# }}}} gh repo deploy-key list
# }}} gh repo deploy-key

# {{{ gh repo edit
# @cmd Edit repository settings
# @option --add-topic*,[`_choice_search_topic`] <string>  Add repository topic
# @flag --allow-forking                        Allow forking of an organization repository
# @flag --allow-update-branch                  Allow a pull request head branch that is behind its base branch to be updated
# @option --default-branch <name>              Set the default branch name for the repository
# @flag --delete-branch-on-merge               Delete head branch when pull requests are merged
# @option -d --description <string>            Description of the repository
# @flag --enable-auto-merge                    Enable auto-merge functionality
# @flag --enable-discussions                   Enable discussions in the repository
# @flag --enable-issues                        Enable issues in the repository
# @flag --enable-merge-commit                  Enable merging pull requests via merge commit
# @flag --enable-projects                      Enable projects in the repository
# @flag --enable-rebase-merge                  Enable merging pull requests via rebase
# @flag --enable-squash-merge                  Enable merging pull requests via squashed commit
# @flag --enable-wiki                          Enable wiki in the repository
# @option -h --homepage <URL>                  Repository home page URL
# @option --remove-topic*,[`_choice_repo_topic`] <string>  Remove repository topic
# @option --template[`_choice_search_repo`]    Make the repository available as a template repository
# @option --visibility <string>                Change the visibility of the repository to {public,private,internal}
# @flag --help                                 Show help for command
# @arg repository[`_choice_search_repo`]
repo::edit() {
    :;
}
# }}} gh repo edit

# {{{ gh repo fork
# @cmd Create a fork of a repository
# @flag --clone                            Clone the fork
# @flag --default-branch-only              Only include the default branch in the fork
# @option --fork-name <string>             Rename the forked repository
# @option --org[`_choice_org`] <string>    Create the fork in an organization
# @flag --remote                           Add a git remote for the fork
# @option --remote-name <string>           Specify the name for the new remote (default "origin")
# @flag --help                             Show help for command
# @arg repository[`_choice_search_repo`]
repo::fork() {
    :;
}
# }}} gh repo fork

# {{{ gh repo rename
# @cmd Rename a repository
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag -y --yes    Skip the confirmation prompt
# @flag --help      Show help for command
# @arg new-name
repo::rename() {
    :;
}
# }}} gh repo rename

# {{{ gh repo set-default
# @cmd Configure default repository for this directory
# @flag -u --unset    unset the current default repository
# @flag -v --view     view the current default repository
# @flag --help        Show help for command
# @arg repository[`_choice_search_repo`]
repo::set-default() {
    :;
}
# }}} gh repo set-default

# {{{ gh repo sync
# @cmd Sync a repository
# @option -b --branch[`_choice_branch`] <string>  Branch to sync (default: main branch)
# @flag --force    Hard reset the branch of the destination repository to match the source repository
# @option -s --source[`_choice_search_repo`] <string>  Source repository
# @flag --help     Show help for command
# @arg destination-repository[`_choice_search_repo`]
repo::sync() {
    :;
}
# }}} gh repo sync

# {{{ gh repo unarchive
# @cmd Unarchive a repository
# @flag -y --yes    Skip the confirmation prompt
# @flag --help      Show help for command
# @arg repository[`_choice_search_repo`]
repo::unarchive() {
    :;
}
# }}} gh repo unarchive

# {{{ gh repo view
# @cmd View a repository
# @option -b --branch[`_choice_branch`] <string>   View a specific branch of the repository
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json[`_choice_repo_field`] <fields>    Output JSON with the specified fields
# @option -t --template[`_choice_search_repo`] <string>  Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                                   Open a repository in the browser
# @flag --help                                     Show help for command
# @arg repository[`_choice_search_repo`]
repo::view() {
    :;
}
# }}} gh repo view
# }} gh repo

# {{ gh cache
# @cmd Manage Github Actions caches
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
cache() {
    :;
}

# {{{ gh cache delete
# @cmd Delete Github Actions caches
# @flag -a --all    Delete all caches
# @flag --help      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg cache-id-cache-key <<cache-id>| <cache-key>>
cache::delete() {
    :;
}
# }}} gh cache delete

# {{{ gh cache list
# @cmd List Github Actions caches
# @option -q --jq <expression>             Filter JSON output using a jq expression
# @option --json <fields>                  Output JSON with the specified fields
# @option -L --limit <int>                 Maximum number of caches to fetch (default 30)
# @option -O --order[asc|desc] <string>    Order of caches returned:  (default "desc")
# @option -S --sort[created_at|last_accessed_at|size_in_bytes] <string>  Sort fetched caches:  (default "last_accessed_at")
# @option -t --template <string>           Format JSON output using a Go template; see "gh help formatting"
# @flag --help                             Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
cache::list() {
    :;
}
# }}} gh cache list
# }} gh cache

# {{ gh run
# @cmd View details about workflow runs
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
run() {
    :;
}

# {{{ gh run cancel
# @cmd Cancel a workflow run
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg run-id[`_choice_inprogress_run`]
run::cancel() {
    :;
}
# }}} gh run cancel

# {{{ gh run delete
# @cmd Delete a workflow run
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg run-id[`_choice_all_run`]
run::delete() {
    :;
}
# }}} gh run delete

# {{{ gh run download
# @cmd Download artifacts generated by a workflow run
# @option -D --dir <dir>            The directory to download artifacts into (default ".")
# @option -n --name*[`_choice_artifact_name`] <string>  Download artifacts that match any of the given names
# @option -p --pattern* <string>    Download artifacts that match a glob pattern
# @flag --help                      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg run-id[`_choice_all_run`]
run::download() {
    :;
}
# }}} gh run download

# {{{ gh run list
# @cmd List recent workflow runs
# @option -b --branch[`_choice_branch`] <string>  Filter runs by branch
# @option --created <date>          Filter runs by the date it was created
# @option -e --event*,[`_choice_workflow_event`] <event>  Filter runs by which event triggered the run
# @option -q --jq <expression>      Filter JSON output using a jq expression
# @option --json*,[`_choice_run_field`] <fields>  Output JSON with the specified fields
# @option -L --limit <int>          Maximum number of runs to fetch (default 20)
# @option -s --status[queued|completed|in_progress|requested|waiting|action_required|cancelled|failure|neutral|skipped|stale|startup_failure|success|timed_out] <string>  Filter runs by status:
# @option -t --template <string>    Format JSON output using a Go template; see "gh help formatting"
# @option -u --user[`_choice_search_user`] <string>  Filter runs by user who triggered the run
# @option -w --workflow[`_choice_workflow`] <string>  Filter runs by workflow
# @flag --help                      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
run::list() {
    :;
}
# }}} gh run list

# {{{ gh run rerun
# @cmd Rerun a run
# @flag -d --debug                                Rerun with debug logging
# @flag --failed                                  Rerun only failed jobs, including dependencies
# @option -j --job[`_choice_run_job`] <string>    Rerun a specific job from a run, including dependencies
# @flag --help                                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg run-id[`_choice_failed_run`]
run::rerun() {
    :;
}
# }}} gh run rerun

# {{{ gh run view
# @cmd View a summary of a workflow run
# @option -a --attempt <uint>                     The attempt number of the workflow run
# @flag --exit-status                             Exit with non-zero status if run failed
# @option -j --job[`_choice_run_job`] <string>    View a specific job ID from a run
# @option -q --jq <expression>                    Filter JSON output using a jq expression
# @option --json <fields>                         Output JSON with the specified fields
# @flag --log                                     View full log for either a run or specific job
# @flag --log-failed                              View the log for any failed steps in a run or specific job
# @option -t --template <string>                  Format JSON output using a Go template; see "gh help formatting"
# @flag -v --verbose                              Show job steps
# @flag -w --web                                  Open run in the browser
# @flag --help                                    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg run-id[`_choice_all_run`]
run::view() {
    :;
}
# }}} gh run view

# {{{ gh run watch
# @cmd Watch a run until it completes, showing its progress
# @flag --exit-status            Exit with non-zero status if run fails
# @option -i --interval <int>    Refresh interval in seconds (default 3)
# @flag --help                   Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg run-id![`_choice_inprogress_run`]
run::watch() {
    :;
}
# }}} gh run watch
# }} gh run

# {{ gh workflow
# @cmd View details about GitHub Actions workflows
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
workflow() {
    :;
}

# {{{ gh workflow disable
# @cmd Disable a workflow
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg workflow[`_choice_workflow`]
workflow::disable() {
    :;
}
# }}} gh workflow disable

# {{{ gh workflow enable
# @cmd Enable a workflow
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg workflow[`_choice_workflow`]
workflow::enable() {
    :;
}
# }}} gh workflow enable

# {{{ gh workflow list
# @cmd List workflows
# @flag -a --all                    Include disabled workflows
# @option -q --jq <expression>      Filter JSON output using a jq expression
# @option --json <fields>           Output JSON with the specified fields
# @option -L --limit <int>          Maximum number of workflows to fetch (default 50)
# @option -t --template <string>    Format JSON output using a Go template; see "gh help formatting"
# @flag --help                      Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
workflow::list() {
    :;
}
# }}} gh workflow list

# {{{ gh workflow run
# @cmd Run a workflow by creating a workflow_dispatch event
# @option -F --field <key=value>        Add a string parameter in key=value format, respecting @ syntax
# @flag --json                          Read workflow inputs as JSON via STDIN
# @option -f --raw-field <key=value>    Add a string parameter in key=value format
# @option -r --ref <file>               The branch or tag name which contains the version of the workflow file you'd like to run
# @flag --help                          Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg workflow[`_choice_workflow`]
workflow::run() {
    :;
}
# }}} gh workflow run

# {{{ gh workflow view
# @cmd View the summary of a workflow
# @option -r --ref <file>    The branch or tag name which contains the version of the workflow file you'd like to view
# @flag -w --web             Open workflow in the browser
# @flag -y --yaml            View the workflow yaml file
# @flag --help               Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg workflow[`_choice_workflow_or_file`]
workflow::view() {
    :;
}
# }}} gh workflow view
# }} gh workflow

# {{ gh co
# @cmd Alias for "pr checkout"
co() {
    :;
}
# }} gh co

# {{ gh alias
# @cmd Create command shortcuts
# @flag --help    Show help for command
alias() {
    :;
}

# {{{ gh alias delete
# @cmd Delete set aliases
# @flag --all     Delete all aliases
# @flag --help    Show help for command
# @arg alias[`_choice_alias`]
alias::delete() {
    :;
}
# }}} gh alias delete

# {{{ gh alias import
# @cmd Import aliases from a YAML file
# @option --label <enhancement>
# @flag --clobber    Overwrite existing aliases of the same name
# @flag --help       Show help for command
# @arg filename <<filename>|->
alias::import() {
    :;
}
# }}} gh alias import

# {{{ gh alias list
# @cmd List your aliases
# @flag --help    Show help for command
alias::list() {
    :;
}
# }}} gh alias list

# {{{ gh alias set
# @cmd Create a shortcut for a gh command
# @flag --clobber     Overwrite existing aliases of the same name
# @flag -s --shell    Declare an alias to be passed through a shell interpreter
# @flag --help        Show help for command
# @arg alias![`_choice_alias`]
# @arg expansion!
alias::set() {
    :;
}
# }}} gh alias set
# }} gh alias

# {{ gh api
# @cmd Make an authenticated GitHub API request
# @option --cache <duration>            Cache the response, e.g. "3600s", "60m", "1h"
# @option -F --field <key=value>        Add a typed parameter in key=value format
# @option -H --header <key:value>       Add a HTTP request header in key:value format
# @option --hostname <string>           The GitHub hostname for the request (default "github.com")
# @flag -i --include                    Include HTTP response status line and headers in the output
# @option --input <file>                The file to use as body for the HTTP request (use "-" to read from standard input)
# @option -q --jq <string>              Query to select values from the response using jq syntax
# @option -X --method <string>          The HTTP method for the request (default "GET")
# @flag --paginate                      Make additional HTTP requests to fetch all pages of results
# @option -p --preview <names>          GitHub API preview names to request (without the "-preview" suffix)
# @option -f --raw-field <key=value>    Add a string parameter in key=value format
# @flag --silent                        Do not print the response body
# @option -t --template <string>        Format JSON output using a Go template; see "gh help formatting"
# @flag --verbose                       Include full HTTP request and response in the output
# @flag --help                          Show help for command
# @arg endpoint!
api() {
    :;
}
# }} gh api

# {{ gh completion
# @cmd Generate shell completion scripts
# @option -s --shell[bash|zsh|fish|powershell] <string>  Shell type:
# @flag --help    Show help for command
# @arg shell![bash|zsh|fish|powershell]
completion() {
    :;
}
# }} gh completion

# {{ gh config
# @cmd Manage configuration for gh
# @flag --help    Show help for command
config() {
    :;
}

# {{{ gh config clear-cache
# @cmd Clear the cli cache
# @flag --help    Show help for command
config::clear-cache() {
    :;
}
# }}} gh config clear-cache

# {{{ gh config get
# @cmd Print the value of a given configuration key
# @option -h --host <string>    Get per-host setting
# @flag --help                  Show help for command
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} gh config get

# {{{ gh config list
# @cmd Print a list of configuration keys and values
# @option -h --host <string>    Get per-host configuration
# @flag --help                  Show help for command
config::list() {
    :;
}
# }}} gh config list

# {{{ gh config set
# @cmd Update configuration with a value for the given key
# @option -h --host <string>    Set per-host setting
# @flag --help                  Show help for command
# @arg key![`_choice_config_key`]
# @arg value!
config::set() {
    :;
}
# }}} gh config set
# }} gh config

# {{ gh extension
# @cmd Manage gh extensions
# @flag --help    Show help for command
extension() {
    :;
}

# {{{ gh extension browse
# @cmd Enter a UI for browsing, adding, and removing extensions
# @flag --debug               log to /tmp/extBrowse-*
# @flag -s --single-column    Render TUI with only one column of text
# @flag --help                Show help for command
extension::browse() {
    :;
}
# }}} gh extension browse

# {{{ gh extension create
# @cmd Create a new extension
# @option --precompiled[go|other] <string>    Create a precompiled extension.
# @flag --help                                Show help for command
# @arg name
extension::create() {
    :;
}
# }}} gh extension create

# {{{ gh extension exec
# @cmd Execute an installed extension
extension::exec() {
    :;
}
# }}} gh extension exec

# {{{ gh extension install
# @cmd Install a gh extension from a repository
# @flag --force             force upgrade extension, or ignore if latest already installed
# @option --pin <string>    pin extension to a release tag or commit ref
# @flag --help              Show help for command
# @arg repository!
extension::install() {
    :;
}
# }}} gh extension install

# {{{ gh extension list
# @cmd List installed extension commands
# @flag --help    Show help for command
extension::list() {
    :;
}
# }}} gh extension list

# {{{ gh extension remove
# @cmd Remove an installed extension
# @flag --help    Show help for command
# @arg name!
extension::remove() {
    :;
}
# }}} gh extension remove

# {{{ gh extension search
# @cmd Search extensions to the GitHub CLI
# @option -q --jq <expression>          Filter JSON output using a jq expression
# @option --json <fields>               Output JSON with the specified fields
# @option --license* <string>           Filter based on license type
# @option -L --limit <int>              Maximum number of extensions to fetch (default 30)
# @option --order[asc|desc] <string>    Order of repositories returned, ignored unless '--sort' flag is specified:  (default "desc")
# @option --owner* <string>             Filter on owner
# @option --sort[forks|help-wanted-issues|stars|updated] <string>  Sort fetched repositories:  (default "best-match")
# @option -t --template <string>        Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                        Open the search query in the web browser
# @flag --help                          Show help for command
# @arg query
extension::search() {
    :;
}
# }}} gh extension search

# {{{ gh extension upgrade
# @cmd Upgrade installed extensions
# @flag --all        Upgrade all extensions
# @flag --dry-run    Only display upgrades
# @flag --force      Force upgrade extension
# @flag --help       Show help for command
# @arg name
extension::upgrade() {
    :;
}
# }}} gh extension upgrade
# }} gh extension

# {{ gh gpg-key
# @cmd Manage GPG keys
# @flag --help    Show help for command
gpg-key() {
    :;
}

# {{{ gh gpg-key add
# @cmd Add a GPG key to your GitHub account
# @option -t --title <string>    Title for the new key
# @flag --help                   Show help for command
# @arg key-file
gpg-key::add() {
    :;
}
# }}} gh gpg-key add

# {{{ gh gpg-key delete
# @cmd Delete a GPG key from your GitHub account
# @flag -y --yes    Skip the confirmation prompt
# @flag --help      Show help for command
# @arg key-id![`_choice_gpg_key`]
gpg-key::delete() {
    :;
}
# }}} gh gpg-key delete

# {{{ gh gpg-key list
# @cmd Lists GPG keys in your GitHub account
# @flag --help    Show help for command
gpg-key::list() {
    :;
}
# }}} gh gpg-key list
# }} gh gpg-key

# {{ gh label
# @cmd Manage labels
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
label() {
    :;
}

# {{{ gh label clone
# @cmd Clones labels from one repository to another
# @flag -f --force    Overwrite labels in the destination repository
# @flag --help        Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg source-repository![`_choice_search_repo`]
label::clone() {
    :;
}
# }}} gh label clone

# {{{ gh label create
# @cmd Create a new label
# @option -c --color <string>          Color of the label
# @option -d --description <string>    Description of the label
# @flag -f --force                     Update the label color and description if label already exists
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg name![`_choice_label`]
label::create() {
    :;
}
# }}} gh label create

# {{{ gh label delete
# @cmd Delete a label from a repository
# @flag --yes     Confirm deletion without prompting
# @flag --help    Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg name![`_choice_label`]
label::delete() {
    :;
}
# }}} gh label delete

# {{{ gh label edit
# @cmd Edit a label
# @option -c --color <string>          Color of the label
# @option -d --description <string>    Description of the label
# @option -n --name <string>           New name of the label
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg name![`_choice_label`]
label::edit() {
    :;
}
# }}} gh label edit

# {{{ gh label list
# @cmd List labels in a repository
# @option -q --jq <expression>             Filter JSON output using a jq expression
# @option --json <fields>                  Output JSON with the specified fields
# @option -L --limit <int>                 Maximum number of labels to fetch (default 30)
# @option --order[asc|desc] <string>       Order of labels returned:  (default "asc")
# @option -S --search <string>             Search label names and descriptions
# @option --sort[created|name] <string>    Sort fetched labels:  (default "created")
# @option -t --template <string>           Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                           List labels in the web browser
# @flag --help                             Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
label::list() {
    :;
}
# }}} gh label list
# }} gh label

# {{ gh ruleset
# @cmd View info about repo rulesets
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
ruleset() {
    :;
}

# {{{ gh ruleset check
# @cmd View rules that would apply to a given branch
# @flag --default    Check rules on default branch
# @flag -w --web     Open the branch rules page in a web browser
# @flag --help       Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg branch[`_choice_branch`]
ruleset::check() {
    :;
}
# }}} gh ruleset check

# {{{ gh ruleset list
# @cmd List rulesets for a repository or organization
# @option -L --limit <int>                    Maximum number of rulesets to list (default 30)
# @option -o --org[`_choice_org`] <string>    List organization-wide rulesets for the provided organization
# @flag -p --parents                          Whether to include rulesets configured at higher levels that also apply (default true)
# @flag -w --web                              Open the list of rulesets in the web browser
# @flag --help                                Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
ruleset::list() {
    :;
}
# }}} gh ruleset list

# {{{ gh ruleset view
# @cmd View information about a ruleset
# @option -o --org[`_choice_org`] <string>    Organization name if the provided ID is an organization-level ruleset
# @flag -p --parents                          Whether to include rulesets configured at higher levels that also apply (default true)
# @flag -w --web                              Open the ruleset in the browser
# @flag --help                                Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg ruleset-id[`_choice_ruleset`]
ruleset::view() {
    :;
}
# }}} gh ruleset view
# }} gh ruleset

# {{ gh search
# @cmd Search for repositories, issues, and pull requests
# @flag --help    Show help for command
search() {
    :;
}

# {{{ gh search code
# @cmd Search within code
# @option --extension <file>            Filter on file extension
# @option --filename <file>             Filter on filename
# @option -q --jq <expression>          Filter JSON output using a jq expression
# @option --json <fields>               Output JSON with the specified fields
# @option --language <string>           Filter results by language
# @option -L --limit <int>              Maximum number of code results to fetch (default 30)
# @option --match*[file|path] <file>    Restrict search to file contents or file path:
# @option --owner*[`_choice_search_user`] <string>  Filter on owner
# @option -R --repo*[`_choice_search_repo`] <string>  Filter on repository
# @option --size <string>               Filter on size range, in kilobytes
# @option -t --template <string>        Format JSON output using a Go template; see "gh help formatting"
# @flag -w --web                        Open the search query in the web browser
# @flag --help                          Show help for command
# @arg query!
search::code() {
    :;
}
# }}} gh search code

# {{{ gh search commits
# @cmd Search for commits
# @option --author[`_choice_search_user`] <string>  Filter by author
# @option --author-date <date>          Filter based on authored date
# @option --author-email <string>       Filter on author email
# @option --author-name <string>        Filter on author name
# @option --committer[`_choice_search_user`] <string>  Filter by committer
# @option --committer-date <date>       Filter based on committed date
# @option --committer-email <string>    Filter on committer email
# @option --committer-name <string>     Filter on committer name
# @option --hash <string>               Filter by commit hash
# @option -q --jq <expression>          Filter JSON output using a jq expression
# @option --json*,[`_choice_commit_field`] <fields>  Output JSON with the specified fields
# @option -L --limit <int>              Maximum number of commits to fetch (default 30)
# @flag --merge                         Filter on merge commits
# @option --order[asc|desc] <string>    Order of commits returned, ignored unless '--sort' flag is specified:  (default "desc")
# @option --owner*[`_choice_search_user`] <string>  Filter on repository owner
# @option --parent <string>             Filter by parent hash
# @option -R --repo*[`_choice_search_repo`] <string>  Filter on repository
# @option --sort[author-date|committer-date] <string>  Sort fetched commits:  (default "best-match")
# @option -t --template <string>        Format JSON output using a Go template; see "gh help formatting"
# @option --tree <string>               Filter by tree hash
# @option --visibility*[public|private|internal] <string>  Filter based on repository visibility:
# @flag -w --web                        Open the search query in the web browser
# @flag --help                          Show help for command
# @arg query
search::commits() {
    :;
}
# }}} gh search commits

# {{{ gh search issues
# @cmd Search for issues
# @option --app <string>                   Filter by GitHub App author
# @flag --archived                         Restrict search to archived repositories
# @option --assignee <string>              Filter by assignee
# @option --author[`_choice_search_user`] <string>  Filter by author
# @option --closed <date>                  Filter on closed at date
# @option --commenter <user>               Filter based on comments by user
# @option --comments <number>              Filter on number of comments
# @option --created <date>                 Filter based on created at date
# @flag --include-prs                      Include pull requests in results
# @option --interactions <number>          Filter on number of reactions and comments
# @option --involves <user>                Filter based on involvement of user
# @option -q --jq <expression>             Filter JSON output using a jq expression
# @option --json*,[`_choice_issue_field`] <fields>  Output JSON with the specified fields
# @option --label* <string>                Filter on label
# @option --language <string>              Filter based on the coding language
# @option -L --limit <int>                 Maximum number of results to fetch (default 30)
# @flag --locked                           Filter on locked conversation status
# @option --match*[title|body|comments] <string>  Restrict search to specific field of issue:
# @option --mentions <user>                Filter based on user mentions
# @option --milestone <title>              Filter by milestone title
# @flag --no-assignee                      Filter on missing assignee
# @flag --no-label                         Filter on missing label
# @flag --no-milestone                     Filter on missing milestone
# @flag --no-project                       Filter on missing project
# @option --order[asc|desc] <string>       Order of results returned, ignored unless '--sort' flag is specified:  (default "desc")
# @option --owner*[`_choice_search_user`] <string>  Filter on repository owner
# @option --project <number>               Filter on project board number
# @option --reactions <number>             Filter on number of reactions
# @option -R --repo*[`_choice_search_repo`] <string>  Filter on repository
# @option --sort <string>                  Sort fetched results: {comments|created|interactions|reactions|reactions-+1|reactions--1|reactions-heart|reactions-smile|reactions-tada|reactions-thinking_face|updated} (default "best-match")
# @option --state[open|closed] <string>    Filter based on state:
# @option --team-mentions <string>         Filter based on team mentions
# @option -t --template <string>           Format JSON output using a Go template; see "gh help formatting"
# @option --updated <date>                 Filter on last updated at date
# @option --visibility*[public|private|internal] <string>  Filter based on repository visibility:
# @flag -w --web                           Open the search query in the web browser
# @flag --help                             Show help for command
# @arg query
search::issues() {
    :;
}
# }}} gh search issues

# {{{ gh search prs
# @cmd Search for pull requests
# @option --app <string>                           Filter by GitHub App author
# @flag --archived                                 Restrict search to archived repositories
# @option --assignee <string>                      Filter by assignee
# @option --author[`_choice_search_user`] <string>  Filter by author
# @option -B --base <string>                       Filter on base branch name
# @option --checks[pending|success|failure] <string>  Filter based on status of the checks:
# @option --closed <date>                          Filter on closed at date
# @option --commenter <user>                       Filter based on comments by user
# @option --comments <number>                      Filter on number of comments
# @option --created <date>                         Filter based on created at date
# @flag --draft                                    Filter based on draft state
# @option -H --head <string>                       Filter on head branch name
# @option --interactions <number>                  Filter on number of reactions and comments
# @option --involves <user>                        Filter based on involvement of user
# @option -q --jq <expression>                     Filter JSON output using a jq expression
# @option --json*,[`_choice_pr_field`] <fields>    Output JSON with the specified fields
# @option --label* <string>                        Filter on label
# @option --language <string>                      Filter based on the coding language
# @option -L --limit <int>                         Maximum number of results to fetch (default 30)
# @flag --locked                                   Filter on locked conversation status
# @option --match*[title|body|comments] <string>   Restrict search to specific field of issue:
# @option --mentions <user>                        Filter based on user mentions
# @flag --merged                                   Filter based on merged state
# @option --merged-at <date>                       Filter on merged at date
# @option --milestone <title>                      Filter by milestone title
# @flag --no-assignee                              Filter on missing assignee
# @flag --no-label                                 Filter on missing label
# @flag --no-milestone                             Filter on missing milestone
# @flag --no-project                               Filter on missing project
# @option --order[asc|desc] <string>               Order of results returned, ignored unless '--sort' flag is specified:  (default "desc")
# @option --owner*[`_choice_search_user`] <string>  Filter on repository owner
# @option --project <number>                       Filter on project board number
# @option --reactions <number>                     Filter on number of reactions
# @option -R --repo*[`_choice_search_repo`] <string>  Filter on repository
# @option --review[none|required|approved|changes_requested] <string>  Filter based on review status:
# @option --review-requested <user>                Filter on user or team requested to review
# @option --reviewed-by <user>                     Filter on user who reviewed
# @option --sort <string>                          Sort fetched results: {comments|reactions|reactions-+1|reactions--1|reactions-smile|reactions-thinking_face|reactions-heart|reactions-tada|interactions|created|updated} (default "best-match")
# @option --state[open|closed] <string>            Filter based on state:
# @option --team-mentions <string>                 Filter based on team mentions
# @option -t --template <string>                   Format JSON output using a Go template; see "gh help formatting"
# @option --updated <date>                         Filter on last updated at date
# @option --visibility*[public|private|internal] <string>  Filter based on repository visibility:
# @flag -w --web                                   Open the search query in the web browser
# @flag --help                                     Show help for command
# @arg query
search::prs() {
    :;
}
# }}} gh search prs

# {{{ gh search repos
# @cmd Search for repositories
# @flag --archived                         Filter based on archive state
# @option --created <date>                 Filter based on created at date
# @option --followers <number>             Filter based on number of followers
# @option --forks <number>                 Filter on number of forks
# @option --good-first-issues <number>     Filter on number of issues with the 'good first issue' label
# @option --help-wanted-issues <number>    Filter on number of issues with the 'help wanted' label
# @option --include-forks[false|true|only] <string>  Include forks in fetched repositories:
# @option -q --jq <expression>             Filter JSON output using a jq expression
# @option --json*,[`_choice_repo_field`] <fields>  Output JSON with the specified fields
# @option --language <string>              Filter based on the coding language
# @option --license*[`_choice_license`] <string>  Filter based on license type
# @option -L --limit <int>                 Maximum number of repositories to fetch (default 30)
# @option --match*[name|description|readme] <string>  Restrict search to specific field of repository:
# @option --number-topics <number>         Filter on number of topics
# @option --order[asc|desc] <string>       Order of repositories returned, ignored unless '--sort' flag is specified:  (default "desc")
# @option --owner*[`_choice_search_user`] <string>  Filter on owner
# @option --size <string>                  Filter on a size range, in kilobytes
# @option --sort[forks|help-wanted-issues|stars|updated] <string>  Sort fetched repositories:  (default "best-match")
# @option --stars <number>                 Filter on number of stars
# @option -t --template <string>           Format JSON output using a Go template; see "gh help formatting"
# @option --topic*,[`_choice_search_topic`] <string>  Filter on topic
# @option --updated <date>                 Filter on last updated at date
# @option --visibility*[public|private|internal] <string>  Filter based on visibility:
# @flag -w --web                           Open the search query in the web browser
# @flag --help                             Show help for command
# @arg query
search::repos() {
    :;
}
# }}} gh search repos
# }} gh search

# {{ gh secret
# @cmd Manage GitHub secrets
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
secret() {
    :;
}

# {{{ gh secret delete
# @cmd Delete secrets
# @option -a --app[actions|codespaces|dependabot] <string>  Delete a secret for a specific application:
# @option -e --env <string>                   Delete a secret for an environment
# @option -o --org[`_choice_org`] <string>    Delete a secret for an organization
# @flag -u --user                             Delete a secret for your user
# @flag --help                                Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg secret-name![`_choice_secret`]
secret::delete() {
    :;
}
# }}} gh secret delete

# {{{ gh secret list
# @cmd List secrets
# @option -a --app[actions|codespaces|dependabot] <string>  List secrets for a specific application:
# @option -e --env <string>                   List secrets for an environment
# @option -q --jq <expression>                Filter JSON output using a jq expression
# @option --json <fields>                     Output JSON with the specified fields
# @option -o --org[`_choice_org`] <string>    List secrets for an organization
# @option -t --template <string>              Format JSON output using a Go template; see "gh help formatting"
# @flag -u --user                             List a secret for your user
# @flag --help                                Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
secret::list() {
    :;
}
# }}} gh secret list

# {{{ gh secret set
# @cmd Create or update secrets
# @option -a --app[actions|codespaces|dependabot] <string>  Set the application for a secret:
# @option -b --body <string>           The value for the secret (reads from standard input if not specified)
# @option -e --env <environment>       Set deployment environment secret
# @option -f --env-file <file>         Load secret names and values from a dotenv-formatted file
# @flag --no-store                     Print the encrypted, base64-encoded value instead of storing it on Github
# @option -o --org[`_choice_org`] <organization>  Set organization secret
# @option -r --repos <repositories>    List of repositories that can access an organization or user secret
# @flag -u --user                      Set a secret for your user
# @option -v --visibility[all|private|selected] <string>  Set visibility for an organization secret:  (default "private")
# @flag --help                         Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg secret-name![`_choice_secret`]
secret::set() {
    :;
}
# }}} gh secret set
# }} gh secret

# {{ gh ssh-key
# @cmd Manage SSH keys
# @flag --help    Show help for command
ssh-key() {
    :;
}

# {{{ gh ssh-key add
# @cmd Add an SSH key to your GitHub account
# @option -t --title <string>    Title for the new key
# @option --type[authentication|signing] <string>  Type of the ssh key:  (default "authentication")
# @flag --help                   Show help for command
# @arg key-file
ssh-key::add() {
    :;
}
# }}} gh ssh-key add

# {{{ gh ssh-key delete
# @cmd Delete an SSH key from your GitHub account
# @flag -y --yes    Skip the confirmation prompt
# @flag --help      Show help for command
# @arg id![`_choice_ssh_key`]
ssh-key::delete() {
    :;
}
# }}} gh ssh-key delete

# {{{ gh ssh-key list
# @cmd Lists SSH keys in your GitHub account
# @flag --help    Show help for command
ssh-key::list() {
    :;
}
# }}} gh ssh-key list
# }} gh ssh-key

# {{ gh status
# @cmd Print information about relevant issues, pull requests, and notifications across repositories
# @option -e --exclude* <string>              Comma separated list of repos to exclude in owner/name format
# @option -o --org[`_choice_org`] <string>    Report status within an organization
# @flag --help                                Show help for command
status() {
    :;
}
# }} gh status

# {{ gh variable
# @cmd Manage GitHub Actions variables
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @flag --help    Show help for command
variable() {
    :;
}

# {{{ gh variable delete
# @cmd Delete variables
# @option -e --env[`_choice_env`] <string>    Delete a variable for an environment
# @option -o --org[`_choice_search_org`] <string>  Delete a variable for an organization
# @flag --help                                Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg variable-name![`_choice_variable`]
variable::delete() {
    :;
}
# }}} gh variable delete

# {{{ gh variable list
# @cmd List variables
# @option -e --env[`_choice_env`] <string>    List variables for an environment
# @option -o --org[`_choice_search_org`] <string>  List variables for an organization
# @flag --help                                Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
variable::list() {
    :;
}
# }}} gh variable list

# {{{ gh variable set
# @cmd Create or update variables
# @option -b --body <string>                       The value for the variable (reads from standard input if not specified)
# @option -e --env[`_choice_env`] <environment>    Set deployment environment variable
# @option -f --env-file <file>                     Load variable names and values from a dotenv-formatted file
# @option -o --org[`_choice_search_org`] <organization>  Set organization variable
# @option -r --repos*,[`_choice_search_repo`] <repositories>  List of repositories that can access an organization variable
# @option -v --visibility[all|private|selected] <string>  Set visibility for an organization variable:  (default "private")
# @flag --help                                     Show help for command
# @option -R --repo[`_choice_search_repo`] <[HOST/]OWNER/REPO>  Select another repository using the [HOST/]OWNER/REPO format
# @arg variable-name!
variable::set() {
    :;
}
# }}} gh variable set
# }} gh variable

# {{ gh actions
# @cmd Learn about working with GitHub Actions
# @flag --help    Show help for command
actions() {
    :;
}
# }} gh actions

# {{ gh environment
# @cmd Environment variables that can be used with gh
environment() {
    :;
}
# }} gh environment

# {{ gh exit-codes
# @cmd Exit codes used by gh
exit-codes() {
    :;
}
# }} gh exit-codes

# {{ gh formatting
# @cmd Formatting options for JSON data exported from gh
formatting() {
    :;
}
# }} gh formatting

# {{ gh mintty
# @cmd Information about using gh with MinTTY
mintty() {
    :;
}
# }} gh mintty

# {{ gh reference
# @cmd A comprehensive reference of all gh commands
reference() {
    :;
}
# }} gh reference

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_hostname() {
    host_yml_path="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
    if [[ ! -f "$host_yml_path" ]]; then
        return
    fi
    cat "$host_yml_path" | yq 'keys | .[]'
}

_choice_auth_scope() {
    cat <<-'EOF'
repo	Grants full access to private and public repositories.
repo:status	Grants read/write access to public and private repository commit statuses.
repo_deployment	Grants access to deployment statuses for public and private repositories.
public_repo	Limits access to public repositories.
repo:invite	Grants accept/decline abilities for invitations to collaborate on a repository.
security_events	Grants read and write access to security events in the code scanning API.
admin:repo_hook	Grants read, write, ping, and delete access to repository hooks in public and private repositories.
read:repo_hook	Grants read and ping access to hooks in public or private repositories.
write:repo_hook	Grants read, write, and ping access to hooks in public or private repositories.
admin:org	Fully manage the organization and its teams, projects, and memberships.
write:org	Read and write access to organization membership, organization projects, and team membership.
read:org	Read-only access to organization membership, organization projects, and team membership.
admin:public_key	Fully manage public keys.
write:public_key	Create, list, and view details for public keys.
read:public_key	List and view details for public keys.
admin:org_hook	Grants read, write, ping, and delete access to organization hooks.
gist	Grants write access to gists.
notifications	Grants read access to a user's notifications
user	Grants read/write access to profile info only.
read:user	Grants access to read a user's profile data.
user:email	Grants read access to a user's email addresses.
user:follow	Grants access to follow or unfollow other users.
project	Grants read/write access to user and organization projects.
read:project	Grants read only access to user and organization projects.
delete_repo	Grants access to delete adminable repositories.
write:packages	Grants access to upload or publish a package in GitHub Packages.
read:packages	Grants access to download or install packages from GitHub Packages.
delete:packages	Grants access to delete packages from GitHub Packages.
admin:gpg_key	Fully manage GPG keys.
write:gpg_key	Create, list, and view details for GPG keys.
read:gpg_key	List and view details for GPG keys.
codespace	Full control of codespaces
workflow	Grants the ability to add and update GitHub Actions workflow files.
EOF
}

_choice_branch() {
    _helper_repo_query 'refs(first: 100, refPrefix: "refs/heads/") { nodes { name, target { abbreviatedOid } } }' | \
    yq '.data.repository.refs.nodes[] | .name + "	" + .target.abbreviatedOid'
}

_choice_search_repo() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_owner | _argc_util_transform suffix=/ nospace
    else
        _helper_search_repo "$argc__kv_key" "$argc__kv_filter"
    fi
}

_choice_codespace() {
    gh codespace list --json name,owner,repository,state | \
    yq '.[] | .name + "	" + .owner + " • " + .repository + " • " + .state'
}

_choice_owner() {
    _argc_util_parallel _choice_search_user ::: _choice_search_org
}

_choice_org() {
    gh api user/orgs | yq '.[] | .login + "	" + (.description // "")'
}

_choice_search_user() {
    val=${1:-$ARGC_CWORD}
    if [[ "${#val}" -lt 2 ]]; then
        return
    fi
    gh api graphql -f query='
        query {
            search( type:USER, query: "'$val' in:login", first: 100) {
                edges { node { ... on User { login name } } } 
            }
        }' | \
    yq '.data.search.edges[].node | .login + "	" + (.name // "")'
}

_choice_codespace_field() {
    gh codespace list --json 2>&1 | tail -n +2
}

_choice_gist() {
    _helper_user_query 'gists(first:100, privacy:ALL, orderBy: {field: UPDATED_AT, direction: DESC}) { edges { node { name, description } } } ' | \
    yq '.data.user.gists.edges[].node | .name + "	" + (.description // "")'
}

_choice_gist_file() {
    _helper_user_query 'gist(name:"'$argc_gist'") { files { name } }' | \
    yq '.data.user.gist.files[].name'
}

_choice_assignee() {
    _helper_repo_query 'assignableUsers(first: 100, query: "'$ARGC_CWORD'") { nodes { login, name } }' | \
    yq '.data.repository.assignableUsers.nodes[] | .login + "	" + (.name // "")'
}

_choice_label() {
    _helper_repo_query 'labels(first: 100) { nodes { name, description } }' | \
    yq '.data.repository.labels.nodes[] | .name + "	" + (.description // "")'
}

_choice_milestone() {
    _helper_repo_query 'milestones(first: 100, states: OPEN) { nodes { title, description } }' | \
    yq '.data.repository.milestones.nodes[] | .title + "	" + (.description // "")'
}

_choice_repo_project() {
    _helper_repo_query 'projectsV2(first: 100, orderBy: {direction: DESC, field: UPDATED_AT}) { nodes {  number title } }' | \
    yq '.data.repository.projectsV2.nodes[] | .number + "	" + .title'
}

_choice_issue_template() {
    _helper_repo_query 'issueTemplates { name, about }' | \
    yq '.data.repository.issueTemplates[] | .name + "	" + (.about // "")'
}

_choice_issue_field() {
    gh issue list --json 2>&1 | tail -n +2
}

_choice_mention() {
    _helper_repo_query 'mentionableUsers(first: 100, query: "'$ARGC_CWORD'") { nodes { login, name } }' | \
    yq '.data.repository.mentionableUsers.nodes[] | .login + "	" + (.name // "")'
}

_choice_open_issue() {
    _helper_query_issue OPEN
}

_choice_all_issue() {
    _helper_query_issue
}

_choice_issue_assignee() {
    if [[ -z "$argc_issue" ]]; then
        return
    fi
    _helper_repo_query 'issue(number: '$argc_issue') { assignees(first: 100) { nodes { login, name } } }' | \
    yq '.data.repository.issue.assignees.nodes[]| .login + "	" + (.name // "")'
}

_choice_issue_label() {
    if [[ -z "$argc_issue" ]]; then
        return
    fi
    _helper_repo_query 'issue(number: '$argc_issue') { labels(first: 100) { nodes { name, description } } }' | \
    yq '.data.repository.issue.labels.nodes[] | .name + "	" + (.description // "")'
}

_choice_issue_project() {
    if [[ -z "$argc_issue" ]]; then
        return
    fi
    _helper_repo_query 'issue(number: '$argc_issue') { projectsV2(first:100) { nodes { number title } } }' | \
    yq '.data.repository.issue.projectsV2.nodes[] | .number + "	" + .title'
}

_choice_closed_issue() {
    _helper_query_issue CLOSED
}

_choice_pin_issue() {
    _helper_repo_query 'pinnedIssues(first: 3) { nodes { issue { number, title, state } } }' | \
    yq '.data.repository.pinnedIssues.nodes[].issue | .number + "	" + .title'
}

_choice_pr_field() {
    gh pr list --json 2>&1 | tail -n +2
}

_choice_open_pr() {
    _helper_query_pr OPEN
}

_choice_pr_checks() {
    _argc_util_parallel _choice_branch ::: _choice_open_pr
}

_choice_pr_assignee() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { assignees(first: 100) { nodes { login, name } } }' | \
    yq '.data.repository.pullRequest.assignees.nodes[] | .login + "	" + (.name // "")'
}

_choice_pr_label() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { labels(first: 100) { nodes { name, description } } }' | \
    yq '.data.repository.pullRequest.labels.nodes[] | .name + "	" + (.description // "")'
}

_choice_pr_project() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { projectsV2(first:100) { nodes { number title } } }' | \
    yq '.data.repository.pullRequest.projectsV2.nodes[] | .number + "	" + .title'
}

_choice_pr_reviewer() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_query 'pullRequest(number: '$argc_pr') { latestReviews(first:100) { nodes { author { login } } } }' | \
    yq '.data.repository.pullRequest.latestReviews.nodes[].author.login'
}

_choice_pr_commit() {
    if [[ -z "$argc_pr" ]]; then
        return
    fi
    _helper_repo_curl pulls/$argc_pr/commits | \
    yq '.[] | .sha + "	" + .commit.message'
}

_choice_ready_pr() {
    _helper_repo_query 'pullRequests(first: 100, states: OPEN, orderBy: {direction: DESC, field: UPDATED_AT}) { nodes {  number, title, isDraft, state  } }' | \
    yq '.data.repository.pullRequests.nodes[] | select(.isDraft) | .number + "	" + .title'
}

_choice_closed_pr() {
    _helper_query_pr CLOSED
}

_choice_project() {
    if [[ -n "$argc_owner" ]]; then
        gh api graphql -f query='query { organization(login: "'$argc_owner'") { projectsV2(first: 100) { nodes { number title } } } }' | \
        yq '.data.organization.projectsV2.nodes[] | .number + "	" + .title'
    else
        user_val="$(_helper_get_user)"
        if [[ -n "$user_val" ]]; then
            gh api graphql -f query='query { user(login: "'$user_val'") { projectsV2(first: 100) { nodes { number title } } } }' | \
            yq '.data.user.projectsV2.nodes[] | .number + "	" + .title'
        fi
    fi
}

_choice_discussion_category() {
    _helper_repo_query 'discussionCategories(first:100) { nodes { name, description } } ' | \
    yq '.data.repository.discussionCategories.nodes[] | .name + "	" + (.description // "")'

}

_choice_tag() {
    _helper_repo_query 'refs(first: 100, refPrefix: "refs/tags/", orderBy: {field: TAG_COMMIT_DATE, direction: DESC}) { nodes { name } }' | \
    yq '.data.repository.refs.nodes[] | .name'
}

_choice_release_asset() {
    if [[ -z $argc_tag ]]; then
        return
    fi
    _helper_repo_query 'release(tagName: "'$argc_tag'") { releaseAssets(first:100) { nodes { name } } }' | \
    yq '.data.repository.release.releaseAssets.nodes[].name'
}

_choice_gitignore() {
    gh api gitignore/templates | yq '.[]'
}

_choice_license() {
    gh api licenses | yq '.[] | .key + "	" + .name'
}

_choice_repo_field() {
    gh repo list --json 2>&1 | tail -n +2
}

_choice_repo_key() {
    _helper_repo_curl keys | yq '.[] | .id + "	" + .title'
}

_choice_search_topic() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gh api "search/topics?per_page=100&q=$ARGC_CWORD" | yq '.items[] | .name + "	" + (.short_description // "")'
}

_choice_repo_topic() {
    _helper_repo_query 'repositoryTopics(first:100) { nodes { topic { name } } }' | \
    yq '.data.repository.repositoryTopics.nodes[].topic.name'
}

_choice_inprogress_run() {
    _helper_repo_curl 'actions/runs?status=in_progress' | \
    yq '.workflow_runs[] | .id + "	" + .name + ": " + (.display_title // "")'
}

_choice_all_run() {
    _helper_repo_curl 'actions/runs' | \
    yq '.workflow_runs[] | .id + "	" + .name + ": " + (.display_title // "")'
}

_choice_artifact_name() {
    local path
    if [[ -z "$argc_run_id" ]]; then
        path="actions/artifacts"
    else
        path="actions/runs/$argc_run_id/artifacts"
    fi
    _helper_repo_curl "$path" | \
    yq '.artifacts[].name'
}

_choice_workflow_event() {
    cat <<-'EOF'
branch_protection_rule
check_run
check_suite
create
delete
deployment
deployment_status
discussion
discussion_comment
fork
gollum
issue_comment
issues
label
merge_group
milestone
page_build
project
project_card
project_column
public
pull_request
pull_request_review
pull_request_review_comment
pull_request_target
push
registry_package
release
repository_dispatch
schedule
status
watch
workflow_call
workflow_dispatch
workflow_run
EOF
}

_choice_run_field() {
    gh run list --json 2>&1 | tail -n +2
}

_choice_workflow() {
    _helper_repo_curl "actions/workflows" | \
    yq '.workflows[] | .id + "	" + .name'
}

_choice_run_job() { 
    if [[ -z "$argc_run_id" ]]; then
        return
    fi
    _helper_repo_curl "actions/runs/$argc_run_id/jobs" | \
    yq '.jobs[] | .id + "	" + .name'
}

_choice_failed_run() {
    _helper_repo_curl 'actions/runs?status=failure' | \
    yq '.workflow_runs[] | .id + "	" + .name + ": " + (.display_title // "")'
}

_choice_workflow_or_file() {
    if _argc_util_is_path "$ARGC_CWORD"; then
        _argc_util_comp_path 
    else
        _choice_workflow
    fi
}

_choice_alias() {
    gh alias list | sed 's/:/\t/'
}

_choice_config_key() {
    config_yml_path="$(_argc_util_path_resolve CONFIG_DIR gh/config.yml)"
    if [[ ! -f "$config_yml_path" ]]; then
        return
    fi
    cat "$config_yml_path" | yq 'keys | .[]'
}

_choice_gpg_key() {
    gh api user/gpg_keys | \
    yq '.[] | .key_id + "	" + .name'
}

_choice_ruleset() {
    gh ruleset list $(_argc_util_param_select_options --repo) | \
    _argc_util_transform_table 'ID;NAME' '\t'
}

_choice_commit_field() {
    gh search commits --json 2>&1 | tail -n +2
}

_choice_secret() {
    gh secret list
}

_choice_ssh_key() {
    gh api user/keys | \
    yq '.[] | .id + "	" + .title'
}

_choice_env() {
    _helper_repo_curl 'environments' |
    yq  '.environments[].name'
}

_choice_search_org() {
    val=${1:-$ARGC_CWORD}
    if [[ "${#val}" -lt 2 ]]; then
        return
    fi
    gh api graphql -f query='
        query {
            search( type:USER, query: "'$val' in:login", first: 100) {
                edges { node { ... on Organization  { login name } } } 
            }
        }' | \
    yq '.data.search.edges[].node | .login + "	" + (.name // "")'
}

_choice_variable() {
    if [[ -n "$argc_org" ]]; then
        gh "orgs/$argc_org/actions/variables?per_page=100" | \
        yq '.variables[] | .name + "	" + .value'
    else
       _helper_repo_curl 'actions/variables?per_page=100' | \
        yq '.variables[] | .name + "	" + .value'
    fi
}

_helper_get_user() {
    host_yml_path="$(_argc_util_path_resolve CONFIG_DIR gh/hosts.yml)"
    if [[ ! -f "$host_yml_path" ]]; then
        return
    fi
    cat "$host_yml_path" | yq 'to_entries | .[0].value.user'
}

_helper_query_issue() {
    local states
    if [[ -n "$1" ]]; then
        states="states: $1,"
    fi
    _helper_repo_query 'issues(first: 100, '"$states"' orderBy: {direction: DESC, field: UPDATED_AT}) { nodes { number, title, state } }' | \
    yq '.data.repository.issues.nodes[] | .number + "	" + .title'
}

_helper_query_pr() {
    local states
    if [[ -n "$1" ]]; then
        states="states: $1,"
    fi
    _helper_repo_query 'pullRequests(first: 100, '"$states"' orderBy: {direction: DESC, field: UPDATED_AT}) { nodes {  number, title, isDraft, state  } }' | \
    yq '.data.repository.pullRequests.nodes[] | .number + "	" + .title'
}

_helper_repo_curl() {
    _helper_retrieve_owner_repo_vals
    if [[ -z "$owner_val" ]] || [[ -z "$repo_val" ]]; then
        return
    fi
    gh api "repos/$owner_val/$repo_val/$1"
}

_helper_repo_query() {
    _helper_retrieve_owner_repo_vals
    if [[ -z "$owner_val" ]] || [[ -z "$repo_val" ]]; then
        return
    fi
    gh api graphql -f query='query { repository(owner: "'$owner_val'", name: "'$repo_val'") { '"$1"' } }'
}

_helper_retrieve_owner_repo_vals() {
    if [[ "$argc_repo" == *'/'* ]]; then
        owner_val="${argc_repo%/*}"
        repo_val="${argc_repo##*/}"
    else
        local raw_values="$( \
            git remote -v | \
            gawk '{
                if (match($0, /^origin\thttps:\/\/[^\/]+\/([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                    gsub(".git", "", arr[2])
                    print arr[1] " " arr[2]
                } else if (match($0, /^origin\t[^:]+:([^\/]+)\/([^\/]+) \(fetch\)/, arr)) {
                    gsub(".git", "", arr[2])
                    print arr[1] " " arr[2]
                }
            }' \
        )"
        local values=( $raw_values )
        if [[ "${#values[@]}" -eq 2 ]]; then
            owner_val=${values[0]}
            repo_val=${values[1]}
        fi
    fi
}

_helper_search_repo() {
    gh api graphql -f query='
        query {
            search( type:REPOSITORY, query: """user:'$1' "'$2'" in:name fork:true""", first: 100) {
                edges { node { ... on Repository { name description } } } 
            }
        }' | \
    yq '.data.search.edges[].node | .name + "	" + (.description // "")'
}

_helper_user_query() {
    user_val="$(_helper_get_user)"
    if [[ -z "$user_val" ]]; then
        return
    fi
    gh api graphql -f query='query { user(login: "'$user_val'") { '"$1"' } }'
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"