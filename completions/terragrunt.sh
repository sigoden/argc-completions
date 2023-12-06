#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version

# {{ terragrunt aws-provider-patch
# @cmd Overwrite settings on nested AWS providers to work around a Terraform bug (issue ♯13018).
# @flag --terragrunt-override-attr                 A key=value attribute to override in a provider block as part of the aws-provider-patch command.
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
aws-provider-patch() {
    :;
}
# }} terragrunt aws-provider-patch

# {{ terragrunt graph-dependencies
# @cmd Prints the terragrunt dependency graph to stdout.
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
graph-dependencies() {
    :;
}
# }} terragrunt graph-dependencies

# {{ terragrunt hclfmt
# @cmd Recursively find hcl files and rewrite them into a canonical format.
# @flag --terragrunt-check                         Enable check mode in the hclfmt command.
# @flag --terragrunt-diff                          Print diff between original and modified file versions when running with 'hclfmt'.
# @flag --terragrunt-hclfmt-file                   The path to a single hcl file that the hclfmt command should run on.
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
hclfmt() {
    :;
}
# }} terragrunt hclfmt

# {{ terragrunt output-module-groups
# @cmd Output groups of modules ordered by command (apply or destroy) as a list of list in JSON (useful for CI use cases).
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
output-module-groups() {
    :;
}

# {{{ terragrunt output-module-groups apply
# @cmd Recursively find terragrunt modules in the current directory tree and output the dependency order as a list of list in JSON for the apply
output-module-groups::apply() {
    :;
}
# }}} terragrunt output-module-groups apply

# {{{ terragrunt output-module-groups destroy
# @cmd Recursively find terragrunt modules in the current directory tree and output the dependency order as a list of list in JSON for the destroy
output-module-groups::destroy() {
    :;
}
# }}} terragrunt output-module-groups destroy
# }} terragrunt output-module-groups

# {{ terragrunt render-json
# @cmd Render the final terragrunt config, with all variables, includes, and functions resolved, as json.
# @flag --terragrunt-json-out                      The file path that terragrunt should use when rendering the terragrunt.hcl config as json.
# @flag --with-metadata                            Add metadata to the rendered JSON file.
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
render-json() {
    :;
}
# }} terragrunt render-json

# {{ terragrunt run-all
# @cmd Run a terraform command against a 'stack' by running the specified command in each subfolder.
# @flag --terragrunt-config                        The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @flag --terragrunt-download-dir                  The path where to download Terraform code.
# @flag --terragrunt-exclude-dir                   Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @flag --terragrunt-iam-assume-role-duration      Session duration for IAM Assume Role session.
# @flag --terragrunt-iam-assume-role-session-name  Name for the IAM Assummed Role session.
# @flag --terragrunt-iam-role                      Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @flag --terragrunt-include-dir                   Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace]  Sets the logging level for Terragrunt.
# @flag --terragrunt-modules-that-include          If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @flag --terragrunt-parallelism                   *-all commands parallelism set to at most N modules [$TERRAGRUNT_PARALLELISM]
# @flag --terragrunt-source                        Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @flag --terragrunt-source-map                    Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @flag --terragrunt-tfpath                        Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @flag --terragrunt-working-dir                   The path to the Terraform templates.
run-all() {
    :;
}

# {{{ terragrunt run-all aws-provider-patch
# @cmd Overwrite settings on nested AWS providers to work around a Terraform bug (issue ♯13018).
run-all::aws-provider-patch() {
    :;
}
# }}} terragrunt run-all aws-provider-patch

# {{{ terragrunt run-all graph-dependencies
# @cmd Prints the terragrunt dependency graph to stdout.
run-all::graph-dependencies() {
    :;
}
# }}} terragrunt run-all graph-dependencies

# {{{ terragrunt run-all hclfmt
# @cmd Recursively find hcl files and rewrite them into a canonical format.
run-all::hclfmt() {
    :;
}
# }}} terragrunt run-all hclfmt

# {{{ terragrunt run-all render-json
# @cmd Render the final terragrunt config, with all variables, includes, and functions resolved, as json.
run-all::render-json() {
    :;
}
# }}} terragrunt run-all render-json

# {{{ terragrunt run-all terragrunt-info
# @cmd Emits limited terragrunt state on stdout and exits.
run-all::terragrunt-info() {
    :;
}
# }}} terragrunt run-all terragrunt-info

# {{{ terragrunt run-all validate-inputs
# @cmd Checks if the terragrunt configured inputs align with the terraform defined variables.
run-all::validate-inputs() {
    :;
}
# }}} terragrunt run-all validate-inputs
# }} terragrunt run-all

# {{ terragrunt terragrunt-info
# @cmd Emits limited terragrunt state on stdout and exits.
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
terragrunt-info() {
    :;
}
# }} terragrunt terragrunt-info

# {{ terragrunt validate-inputs
# @cmd Checks if the terragrunt configured inputs align with the terraform defined variables.
# @flag --terragrunt-strict-validate               Sets strict mode for the validate-inputs command.
# @option --terragrunt-config <file>               The path to the Terragrunt config file.
# @flag --terragrunt-debug                         Write terragrunt-debug.tfvars to working folder to help root-cause issues.
# @flag --terragrunt-disable-bucket-update         When this flag is set Terragrunt will not update the remote state bucket.
# @flag --terragrunt-disable-command-validation    When this flag is set, Terragrunt will not validate the terraform command.
# @option --terragrunt-download-dir <dir>          The path where to download Terraform code.
# @option --terragrunt-exclude-dir <dir>           Unix-style glob of directories to exclude when running *-all commands.
# @flag --terragrunt-fail-on-state-bucket-creation  When this flag is set Terragrunt will fail if the remote state bucket needs to be created.
# @flag --terragrunt-fetch-dependency-output-from-state  The option fetchs dependency output directly from the state file instead of init dependencies and running terraform on them.
# @option --terragrunt-iam-assume-role-duration <value>  Session duration for IAM Assume Role session.
# @option --terragrunt-iam-assume-role-session-name <value>  Name for the IAM Assummed Role session.
# @option --terragrunt-iam-role <value>            Assume the specified IAM role before executing Terraform.
# @flag --terragrunt-ignore-dependency-errors      *-all commands continue processing components even if a dependency fails.
# @flag --terragrunt-ignore-dependency-order       *-all commands will be run disregarding the dependencies
# @flag --terragrunt-ignore-external-dependencies  *-all commands will not attempt to include external dependencies
# @option --terragrunt-include-dir <dir>           Unix-style glob of directories to include when running *-all commands
# @flag --terragrunt-include-external-dependencies  *-all commands will include external dependencies [$TERRAGRUNT_INCLUDE_EXTERNAL_DEPENDENCIES]
# @flag --terragrunt-include-module-prefix         When this flag is set output from Terraform sub-commands is prefixed with module path.
# @option --terragrunt-log-level[panic|fatal|error|warn|info|debug|trace] <value>  Sets the logging level for Terragrunt.
# @option --terragrunt-modules-that-include <file>  If flag is set, 'run-all' will only run the command against Terragrunt modules that include the specified file.
# @flag --terragrunt-no-auto-approve               Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag -auto-approve                              Don't automatically append -auto-approve to the underlying Terraform commands run with 'run-all'.
# @flag --terragrunt-no-auto-init                  Don't automatically run 'terraform init' during other terragrunt commands.
# @flag --terragrunt-no-auto-retry                 Don't automatically re-run command in case of transient errors.
# @flag --terragrunt-no-color                      If specified, Terragrunt output won't contain any color.
# @flag --terragrunt-non-interactive               Assume "yes" for all prompts.
# @option --terragrunt-parallelism <value>         *-all commands parallelism set to at most N modules (default: 2147483647) [$TERRAGRUNT_PARALLELISM]
# @option --terragrunt-source <value>              Download Terraform configurations from the specified source into a temporary folder, and run Terraform in that temporary folder.
# @option --terragrunt-source-map <value>          Replace any source URL (including the source URL of a config pulled in with dependency blocks) that has root source with dest.
# @flag --terragrunt-source-update                 Delete the contents of the temporary folder to clear out any old, cached source code before downloading new source code into it.
# @flag --terragrunt-strict-include                If flag is set, only modules under the directories passed in with '--terragrunt-include-dir' will be included.
# @option --terragrunt-tfpath <path>               Path to the Terraform binary.
# @flag --terragrunt-use-partial-parse-config-cache  Enables caching of includes during partial parsing operations.
# @option --terragrunt-working-dir <dir>           The path to the Terraform templates.
# @flag -h --help                                  Show help
# @flag -v --version                               Show terragrunt version
validate-inputs() {
    :;
}
# }} terragrunt validate-inputs

command eval "$(argc --argc-eval "$0" "$@")"