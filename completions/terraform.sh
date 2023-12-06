#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -chdir <DIR>    Switch to a different working directory before executing the given subcommand.
# @flag -help             Show this help output, or the help for a specified subcommand.
# @flag -version          An alias for the "version" subcommand.

# {{ terraform init
# @cmd Prepare your working directory for other commands
# @option -backend <false>          Disable backend or Terraform Cloud initialization for this configuration and use what was previously initialized instead.
# @option -backend-config <path>    Configuration to be merged with what is in the configuration file's 'backend' block.
# @flag -force-copy                 Suppress prompts about copying state data when initializating a new state backend.
# @option -from-module <SOURCE>     Copy the contents of the given module into the target directory before initialization.
# @option -get <false>              Disable downloading modules for this configuration.
# @option -input <false>            Disable interactive prompts.
# @option -lock <false>             Don't hold a state lock during backend migration.
# @option -lock-timeout <0s>        Duration to retry a state lock.
# @flag -no-color                   If specified, output won't contain any color.
# @flag -plugin-dir                 Directory containing plugin binaries.
# @flag -reconfigure                Reconfigure a backend, ignoring any saved configuration.
# @flag -migrate-state              Reconfigure a backend, and attempt to migrate any existing state.
# @flag -upgrade                    Install the latest module and provider versions allowed within configured constraints, overriding the default behavior of selecting exactly the version recorded in the dependency lockfile.
# @option -lockfile <MODE>          Set a dependency lockfile mode.
# @flag -ignore-remote-version      A rare option used for Terraform Cloud and the remote backend only.
# @option -test-directory <path>    Set the Terraform test directory, defaults to "tests".
init() {
    :;
}
# }} terraform init

# {{ terraform validate
# @cmd Check whether the configuration is valid
# @flag -json                       Produce output in a machine-readable JSON format, suitable for use in text editor integrations and other automated systems.
# @flag -no-color                   If specified, output won't contain any color.
# @flag -no-tests                   If specified, Terraform will not validate test files.
# @option -test-directory <path>    Set the Terraform test directory, defaults to "tests".
validate() {
    :;
}
# }} terraform validate

# {{ terraform plan
# @cmd Show changes required by the current configuration
# @flag -destroy                         Select the "destroy" planning mode, which creates a plan to destroy all objects currently managed by this Terraform configuration instead of the usual behavior.
# @flag -refresh-only                    Select the "refresh only" planning mode, which checks whether remote objects still match the outcome of the most recent Terraform apply but does not propose any actions to undo any changes made outside of Terraform.
# @option -refresh <false>               Skip checking for external changes to remote objects while creating the plan.
# @option -replace[`_choice_resource_parts`] <resource>  Force replacement of a particular resource instance using its resource address.
# @option -target[`_choice_resource_parts`] <resource>  Limit the planning operation to only the given module, resource, or resource instance and all of its dependencies.
# @option -var <foo=bar>                 Set a value for one of the input variables in the root module of the configuration.
# @option -var-file <filename>           Load variable values from the given file, in addition to the default files terraform.tfvars and *.auto.tfvars.
# @flag -compact-warnings                If Terraform produces any warnings that are not accompanied by errors, shows them in a more compact form that includes only the summary messages.
# @flag -detailed-exitcode               Return detailed exit codes when the command exits.
# @option -generate-config-out <path>    (Experimental) If import blocks are present in configuration, instructs Terraform to generate HCL for any imported resources not already present.
# @option -input <true>                  Ask for input for variables if not directly set.
# @option -lock <false>                  Don't hold a state lock during the operation.
# @option -lock-timeout <0s>             Duration to retry a state lock.
# @flag -no-color                        If specified, output won't contain any color.
# @option -out <path>                    Write a plan file to the given path.
# @option -parallelism <n>               Limit the number of concurrent operations.
# @option -state <statefile>             A legacy option used for the local backend only.
plan() {
    :;
}
# }} terraform plan

# {{ terraform apply
# @cmd Create or update infrastructure
# @flag -auto-approve           Skip interactive approval of plan before applying.
# @option -backup <path>        Path to backup the existing state file before modifying.
# @flag -compact-warnings       If Terraform produces any warnings that are not accompanied by errors, show them in a more compact form that includes only the summary messages.
# @flag -destroy                Destroy Terraform-managed infrastructure.
# @option -lock <false>         Don't hold a state lock during the operation.
# @option -lock-timeout <0s>    Duration to retry a state lock.
# @option -input <true>         Ask for input for variables if not directly set.
# @flag -no-color               If specified, output won't contain any color.
# @option -parallelism <n>      Limit the number of parallel resource operations.
# @option -state <path>         Path to read and save state (unless state-out is specified).
# @option -state-out <path>     Path to write state to that is different than "-state".
# @arg plan
apply() {
    :;
}
# }} terraform apply

# {{ terraform destroy
# @cmd Destroy previously-created infrastructure
# @flag -auto-approve           Skip interactive approval of plan before applying.
# @option -backup <path>        Path to backup the existing state file before modifying.
# @flag -compact-warnings       If Terraform produces any warnings that are not accompanied by errors, show them in a more compact form that includes only the summary messages.
# @flag -destroy                Destroy Terraform-managed infrastructure.
# @option -lock <false>         Don't hold a state lock during the operation.
# @option -lock-timeout <0s>    Duration to retry a state lock.
# @option -input <true>         Ask for input for variables if not directly set.
# @flag -no-color               If specified, output won't contain any color.
# @option -parallelism <n>      Limit the number of parallel resource operations.
# @option -state <path>         Path to read and save state (unless state-out is specified).
# @option -state-out <path>     Path to write state to that is different than "-state".
destroy() {
    :;
}
# }} terraform destroy

# {{ terraform console
# @cmd Try Terraform expressions at an interactive command prompt
# @option -state <path>      Legacy option for the local backend only.
# @option -var <foo=bar>     Set a variable in the Terraform configuration.
# @option -var-file <foo>    Set variables in the Terraform configuration from a file.
console() {
    :;
}
# }} terraform console

# {{ terraform fmt
# @cmd Reformat your configuration in the standard style
# @option -list <false>     Don't list files whose formatting differs (always disabled if using STDIN)
# @option -write <false>    Don't write to source files (always disabled if using STDIN or -check)
# @flag -diff               Display diffs of formatting changes
# @flag -check              Check if the input is formatted.
# @flag -no-color           If specified, output won't contain any color.
# @flag -recursive          Also process files in subdirectories.
# @arg target*
fmt() {
    :;
}
# }} terraform fmt

# {{ terraform force-unlock
# @cmd Release a stuck lock on the current workspace
# @flag -force    Don't ask for input for unlock confirmation.
# @arg lock_id
force-unlock() {
    :;
}
# }} terraform force-unlock

# {{ terraform get
# @cmd Install or upgrade remote Terraform modules
# @flag -update                     Check already-downloaded modules for available updates and install the newest versions available.
# @flag -no-color                   Disable text coloring in the output.
# @option -test-directory <path>    Set the Terraform test directory, defaults to "tests".
get() {
    :;
}
# }} terraform get

# {{ terraform graph
# @cmd Generate a Graphviz graph of the steps in an operation
# @option -plan <tfplan>       Render graph using the specified plan file instead of the configuration in the current directory.
# @flag -draw-cycles           Highlight any cycles in the graph with colored edges.
# @option -type <plan>         Type of graph to output.
# @option -module-depth <n>    (deprecated) In prior versions of Terraform, specified the depth of modules to show in the output.
graph() {
    :;
}
# }} terraform graph

# {{ terraform import
# @cmd Associate existing infrastructure with a Terraform resource
# @option -config <path>          Path to a directory of Terraform configuration files to use to configure the provider.
# @option -input <false>          Disable interactive input prompts.
# @option -lock <false>           Don't hold a state lock during the operation.
# @option -lock-timeout <0s>      Duration to retry a state lock.
# @flag -no-color                 If specified, output won't contain any color.
# @option -var <foo=bar>          Set a variable in the Terraform configuration.
# @option -var-file <foo>         Set variables in the Terraform configuration from a file.
# @flag -ignore-remote-version    A rare option used for the remote backend only.
# @flag -state                    state-out, and -backup are legacy options supported for the local
# @arg addr
# @arg id
import() {
    :;
}
# }} terraform import

# {{ terraform login
# @cmd Obtain and save credentials for a remote host
# @arg hostname
login() {
    :;
}
# }} terraform login

# {{ terraform logout
# @cmd Remove locally-stored credentials for a remote host
# @arg hostname
logout() {
    :;
}
# }} terraform logout

# {{ terraform metadata
# @cmd Metadata related commands
metadata() {
    :;
}

# {{{ terraform metadata functions
# @cmd Show signatures and descriptions for the available functions
metadata::functions() {
    :;
}
# }}} terraform metadata functions
# }} terraform metadata

# {{ terraform output
# @cmd Show output values from your root module
# @option -state <path>    Path to the state file to read.
# @flag -no-color          If specified, output won't contain any color.
# @flag -json              If specified, machine readable output will be printed in JSON format.
# @flag -raw               For value types that can be automatically converted to a string, will print the raw string directly, rather than a human-oriented representation of the value.
# @arg name
output() {
    :;
}
# }} terraform output

# {{ terraform providers
# @cmd Show the providers required for this configuration
# @option -test-directory <path>    Set the Terraform test directory, defaults to "tests".
# @arg dir
providers() {
    :;
}

# {{{ terraform providers lock
# @cmd Write out dependency locks for the configured providers
# @option -fs-mirror <dir>       Consult the given filesystem mirror directory instead of the origin registry for each of the given providers.
# @option -net-mirror <url>      Consult the given network mirror (given as a base URL) instead of the origin registry for each of the given providers.
# @option -platform <os_arch>    Choose a target platform to request package checksums for.
# @arg providers*
providers::lock() {
    :;
}
# }}} terraform providers lock

# {{{ terraform providers mirror
# @cmd Save local copies of all required provider plugins
# @option -platform <os_arch>    Choose which target platform to build a mirror for.
# @arg target-dir!
providers::mirror() {
    :;
}
# }}} terraform providers mirror

# {{{ terraform providers schema
# @cmd Show schemas for the providers used in the configuration
providers::schema() {
    :;
}
# }}} terraform providers schema
# }} terraform providers

# {{ terraform refresh
# @cmd Update the state to match remote systems
# @flag -compact-warnings       If Terraform produces any warnings that are not accompanied by errors, show them in a more compact form that includes only the summary messages.
# @option -input <true>         Ask for input for variables if not directly set.
# @option -lock <false>         Don't hold a state lock during the operation.
# @option -lock-timeout <0s>    Duration to retry a state lock.
# @flag -no-color               If specified, output won't contain any color.
# @option -parallelism <n>      Limit the number of concurrent operations.
# @option -target[`_choice_resource_parts`] <resource>  Resource to target.
# @option -var <foo=bar>        Set a variable in the Terraform configuration.
# @option -var-file <foo>       Set variables in the Terraform configuration from a file.
# @flag -state                  state-out, and -backup are legacy options supported for the local
refresh() {
    :;
}
# }} terraform refresh

# {{ terraform show
# @cmd Show the current state or a saved plan
# @flag -no-color    If specified, output won't contain any color.
# @flag -json        If specified, output the Terraform plan or state in a machine-readable form.
# @arg path
show() {
    :;
}
# }} terraform show

# {{ terraform state
# @cmd Advanced state management
state() {
    :;
}

# {{{ terraform state list
# @cmd List resources in the state
# @option -state <statefile>    Path to a Terraform state file to use to look up Terraform-managed resources.
# @option -id                   Filters the results to include only instances whose resource types have an attribute named "id" whose value equals the given id string.
# @arg address*[`_choice_resource_parts`]
state::list() {
    :;
}
# }}} terraform state list

# {{{ terraform state mv
# @cmd Move an item in the state
# @flag -dry-run                  If set, prints out what would've been moved but doesn't actually move anything.
# @option -lock <false>           Don't hold a state lock during the operation.
# @option -lock-timeout <0s>      Duration to retry a state lock.
# @flag -ignore-remote-version    A rare option used for the remote backend only.
# @flag -state                    state-out, and -backup are legacy options supported for the local
# @arg source[`_choice_resource_parts`]
# @arg destination[`_choice_resource_parts`]
state::mv() {
    :;
}
# }}} terraform state mv

# {{{ terraform state pull
# @cmd Pull current state and output to stdout
state::pull() {
    :;
}
# }}} terraform state pull

# {{{ terraform state push
# @cmd Update remote state from a local state file
# @flag -force                  Write the state even if lineages don't match or the remote serial is higher.
# @option -lock <false>         Don't hold a state lock during the operation.
# @option -lock-timeout <0s>    Duration to retry a state lock.
# @arg path
state::push() {
    :;
}
# }}} terraform state push

# {{{ terraform state replace-provider
# @cmd Replace provider in the state
# @flag -auto-approve             Skip interactive approval.
# @option -lock <false>           Don't hold a state lock during the operation.
# @option -lock-timeout <0s>      Duration to retry a state lock.
# @flag -ignore-remote-version    A rare option used for the remote backend only.
# @flag -state                    state-out, and -backup are legacy options supported for the local
# @arg from_provider_fqn
# @arg to_provider_fqn
state::replace-provider() {
    :;
}
# }}} terraform state replace-provider

# {{{ terraform state rm
# @cmd Remove instances from the state
# @flag -dry-run                  If set, prints out what would've been removed but doesn't actually remove anything.
# @option -backup <PATH>          Path where Terraform should write the backup state.
# @option -lock <false>           Don't hold a state lock during the operation.
# @option -lock-timeout <0s>      Duration to retry a state lock.
# @option -state <PATH>           Path to the state file to update.
# @flag -ignore-remote-version    Continue even if remote and local Terraform versions are incompatible.
# @arg address*[`_choice_resource_parts`]
state::rm() {
    :;
}
# }}} terraform state rm

# {{{ terraform state show
# @cmd Show a resource in the state
# @option -state <statefile>    Path to a Terraform state file to use to look up Terraform-managed resources.
# @arg address[`_choice_resource_parts`]
state::show() {
    :;
}
# }}} terraform state show
# }} terraform state

# {{ terraform taint
# @cmd Mark a resource instance as not fully functional
# @flag -allow-missing            If specified, the command will succeed (exit code 0) even if the resource is missing.
# @option -lock <false>           Don't hold a state lock during the operation.
# @option -lock-timeout <0s>      Duration to retry a state lock.
# @flag -ignore-remote-version    A rare option used for the remote backend only.
# @flag -state                    state-out, and -backup are legacy options supported for the local
# @arg address!
taint() {
    :;
}
# }} terraform taint

# {{ terraform test
# @cmd Execute integration tests for Terraform modules
# @option -cloud-run <source>       If specified, Terraform will execute this test run remotely using Terraform Cloud.
# @option -filter <testfile>        If specified, Terraform will only execute the test files specified by this flag.
# @flag -json                       If specified, machine readable output will be printed in JSON format
# @flag -no-color                   If specified, output won't contain any color.
# @option -test-directory <path>    Set the Terraform test directory, defaults to "tests".
# @option -var <foo=bar>            Set a value for one of the input variables in the root module of the configuration.
# @option -var-file <filename>      Load variable values from the given file, in addition to the default files terraform.tfvars and *.auto.tfvars.
# @flag -verbose                    Print the plan or state for each test run block as it executes.
test() {
    :;
}
# }} terraform test

# {{ terraform untaint
# @cmd Remove the 'tainted' state from a resource instance
# @flag -allow-missing            If specified, the command will succeed (exit code 0) even if the resource is missing.
# @option -lock <false>           Don't hold a state lock during the operation.
# @option -lock-timeout <0s>      Duration to retry a state lock.
# @flag -ignore-remote-version    A rare option used for the remote backend only.
# @flag -state                    state-out, and -backup are legacy options supported for the local
# @arg name
untaint() {
    :;
}
# }} terraform untaint

# {{ terraform version
# @cmd Show the current Terraform version
# @flag -json    Output the version information as a JSON object.
version() {
    :;
}
# }} terraform version

# {{ terraform workspace
# @cmd Workspace management
workspace() {
    :;
}

# {{{ terraform workspace delete
# @cmd Delete a workspace
# @flag -force                  Remove a workspace even if it is managing resources.
# @option -lock <false>         Don't hold a state lock during the operation.
# @option -lock-timeout <0s>    Duration to retry a state lock.
# @arg name[`_choice_workspace`]
workspace::delete() {
    :;
}
# }}} terraform workspace delete

# {{{ terraform workspace list
# @cmd List Workspaces
workspace::list() {
    :;
}
# }}} terraform workspace list

# {{{ terraform workspace new
# @cmd Create a new workspace
# @option -lock <false>         Don't hold a state lock during the operation.
# @option -lock-timeout <0s>    Duration to retry a state lock.
# @option -state <path>         Copy an existing state file into the new workspace.
# @arg name[`_choice_workspace`]
workspace::new() {
    :;
}
# }}} terraform workspace new

# {{{ terraform workspace select
# @cmd Select a workspace
# @option -or-create <false>    Create the Terraform workspace if it doesn't exist.
# @arg name[`_choice_workspace`]
workspace::select_() {
    :;
}
# }}} terraform workspace select

# {{{ terraform workspace show
# @cmd Show the name of the current workspace
workspace::show() {
    :;
}
# }}} terraform workspace show
# }} terraform workspace

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_resource_parts() {
    _choice_resource | _argc_util_comp_parts '.'
}

_choice_workspace() {
    terraform workspace list | sed -n 's/^[* ] \(.*\)$/\1/p'
} 

_choice_resource() {
    local opts=""
    if [[ -n "$argc_state" ]]; then 
        opts="--state $argc_state"
    fi
    terraform state list $opts
}

command eval "$(argc --argc-eval "$0" "$@")"