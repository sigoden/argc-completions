#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --debug                      Enable or disable debug mode.
# @flag --no-debug                   Enable or disable debug mode.
# @flag -v --verbose                 Increase Ansible verbosity level.
# @option -c --base-config <TEXT>    Path to a base config (can be specified multiple times).
# @option -e --env-file <TEXT>       The file to read variables from when rendering molecule.yml.
# @flag --version
# @flag --help                       Show this message and exit.

# {{ molecule check
# @cmd Use the provisioner to perform a Dry-Run (destroy,...
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --parallel                     Enable or disable parallel mode.
# @flag --no-parallel                  Enable or disable parallel mode.
# @flag --help                         Show this message and exit.
check() {
    :;
}
# }} molecule check

# {{ molecule cleanup
# @cmd Use the provisioner to cleanup any changes made to...
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
cleanup() {
    :;
}
# }} molecule cleanup

# {{ molecule converge
# @cmd Use the provisioner to configure instances (dependency,...
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
# @arg ansible_args*
converge() {
    :;
}
# }} molecule converge

# {{ molecule create
# @cmd Use the provisioner to start the instances.
# @option -s --scenario-name <TEXT>     Name of the scenario to target.
# @option -d --driver-name <default>    Name of driver to use.
# @flag --help                          Show this message and exit.
create() {
    :;
}
# }} molecule create

# {{ molecule dependency
# @cmd Manage the role's dependencies.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
dependency() {
    :;
}
# }} molecule dependency

# {{ molecule destroy
# @cmd Use the provisioner to destroy the instances.
# @option -s --scenario-name <TEXT>     Name of the scenario to target.
# @option -d --driver-name <default>    Name of driver to use.
# @flag --all                           Destroy all scenarios.
# @flag --no-all                        Destroy all scenarios.
# @flag --parallel                      Enable or disable parallel mode.
# @flag --no-parallel                   Enable or disable parallel mode.
# @flag --help                          Show this message and exit.
destroy() {
    :;
}
# }} molecule destroy

# {{ molecule drivers
# @cmd List drivers.
# @option -f --format <simple|plain>    Change output format.
# @flag --help                          Show this message and exit.
drivers() {
    :;
}
# }} molecule drivers

# {{ molecule idempotence
# @cmd Use the provisioner to configure the instances and parse...
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
# @arg ansible_args*
idempotence() {
    :;
}
# }} molecule idempotence

# {{ molecule init
# @cmd Initialize a new scenario.
# @flag --help    Show this message and exit.
init() {
    :;
}

# {{{ molecule init scenario
# @cmd Initialize a new scenario for use with Molecule.
# @option --dependency-name <galaxy>      Name of dependency to initialize.
# @option -d --driver-name <default>      Name of driver to initialize.
# @option --provisioner-name <ansible>    Name of provisioner to initialize.
# @flag --help                            Show this message and exit.
# @arg scenario_name
init::scenario() {
    :;
}
# }}} molecule init scenario
# }} molecule init

# {{ molecule list
# @cmd List status of instances.
# @option -s --scenario-name <TEXT>         Name of the scenario to target.
# @option -f --format[simple|plain|yaml]    Change output format.
# @flag --help                              Show this message and exit.
list() {
    :;
}
# }} molecule list

# {{ molecule login
# @cmd Log in to one instance.
# @option -h --host <TEXT>             Host to access.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
login() {
    :;
}
# }} molecule login

# {{ molecule matrix
# @cmd List matrix of steps used to test instances.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
# @arg subcommand
matrix() {
    :;
}
# }} molecule matrix

# {{ molecule prepare
# @cmd Use the provisioner to prepare the instances into a...
# @option -s --scenario-name <TEXT>     Name of the scenario to target.
# @option -d --driver-name <default>    Name of driver to use.
# @flag -f                              Enable or disable force mode.
# @flag --force                         Enable or disable force mode.
# @flag --no-force                      Enable or disable force mode.
# @flag --help                          Show this message and exit.
prepare() {
    :;
}
# }} molecule prepare

# {{ molecule reset
# @cmd Reset molecule temporary folders.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
reset() {
    :;
}
# }} molecule reset

# {{ molecule side-effect
# @cmd Use the provisioner to perform side-effects to the instances.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
side-effect() {
    :;
}
# }} molecule side-effect

# {{ molecule syntax
# @cmd Use the provisioner to syntax check the role.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
syntax() {
    :;
}
# }} molecule syntax

# {{ molecule test
# @cmd Test (dependency, cleanup, destroy, syntax, create,...
# @option -s --scenario-name <TEXT>     Name of the scenario to target.
# @option -p --platform-name <TEXT>     Name of the platform to target only.
# @option -d --driver-name <default>    Name of driver to use.
# @flag --all                           Test all scenarios.
# @flag --no-all                        Test all scenarios.
# @option --destroy <always|never>      The destroy strategy used at the conclusion of a Molecule run (always).
# @flag --parallel                      Enable or disable parallel mode.
# @flag --no-parallel                   Enable or disable parallel mode.
# @flag --help                          Show this message and exit.
# @arg ansible_args*
test() {
    :;
}
# }} molecule test

# {{ molecule verify
# @cmd Run automated tests against instances.
# @option -s --scenario-name <TEXT>    Name of the scenario to target.
# @flag --help                         Show this message and exit.
verify() {
    :;
}
# }} molecule verify

command eval "$(argc --argc-eval "$0" "$@")"