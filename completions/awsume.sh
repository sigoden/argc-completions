#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  show this help message and exit
# @flag -v --version                               Display the current version of awsume
# @option -o --output-profile <output_profile>     A profile to output credentials to
# @flag --clean                                    Clean expired output profiles
# @flag -r --refresh                               Force refresh credentials
# @flag -s --show-commands                         Show the commands to set the credentials
# @flag -u --unset                                 Unset your aws environment variables
# @flag -a --auto-refresh                          Auto refresh credentials
# @flag -k --kill-refresher                        Kill autoawsume
# @option -l --list-profiles <more>                List profiles, "more" for detail (slow)
# @flag --refresh-autocomplete                     Refresh all plugin autocomplete profiles
# @option --role-arn <role_arn>                    Role ARN or <partition>:<a ccount_id>:<role_name>
# @option --principal-arn <principal_arn>          Principal ARN or <partitio n>:<account_id>:<provider_ name>
# @option --source-profile <source_profile>        source_profile to use (role-arn only)
# @option --external-id <external_id>              External ID to pass to the assume_role
# @option --mfa-token <mfa_token>                  Your mfa token
# @option --region <region>                        The region you want to awsume into
# @option --session-name <session_name>            Set a custom role session name
# @option --role-duration <role_duration>          Seconds to get role creds for
# @flag --with-saml                                Use saml (requires plugin)
# @flag --with-web-identity                        Use web identity (requires plugin)
# @option --json <json>                            Use json credentials
# @option --credentials-file <credentials_file>    Target a shared credentials file
# @option --config-file <config_file>              Target a config file
# @option --config* <option>                       Configure awsume
# @flag --list-plugins                             List installed plugins
# @flag --info                                     Print any info logs to stderr
# @flag --debug                                    Print any debug logs to stderr
# @arg profile_name                                The target profile name

command eval "$(argc --argc-eval "$0" "$@")"