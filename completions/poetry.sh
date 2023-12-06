#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.

# {{ poetry about
# @cmd Shows information about Poetry.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
about() {
    :;
}
# }} poetry about

# {{ poetry add
# @cmd Adds a new dependency to pyproject.toml.
# @option -G --group           The group to add the dependency to.
# @flag -D --dev               Add as a development dependency.
# @flag -e --editable          Add vcs/path dependencies as editable.
# @option -E --extras          Extras to activate for the dependency.
# @flag --optional             Add as an optional dependency.
# @option --python             Python version for which the dependency must be installed.
# @option --platform           Platforms for which the dependency must be installed.
# @option --source             Name of the source to use to install the package.
# @flag --allow-prereleases    Accept prereleases.
# @flag --dry-run              Output the operations but do not execute anything (implicitly enables --verbose).
# @flag --lock                 Do not perform operations (only update the lockfile).
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg name                    The packages to add.
add() {
    :;
}
# }} poetry add

# {{ poetry build
# @cmd Builds a package, as a tarball and a wheel by default.
# @option -f --format          Limit the format to either sdist or wheel.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
build() {
    :;
}
# }} poetry build

# {{ poetry check
# @cmd Validates the content of the pyproject.toml file and its consistency with the poetry.lock file.
# @flag --lock                 Checks that poetry.lock exists for the current version of pyproject.toml.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
check() {
    :;
}
# }} poetry check

# {{ poetry config
# @cmd Manages configuration settings.
# @flag --list                      List configuration settings.
# @flag --unset                     Unset configuration setting.
# @flag --local                     Set/Get from the project's local configuration.
# @flag -h --help                   Display help for the given command.
# @flag -q --quiet                  Do not output any message.
# @flag -V --version                Display this application version.
# @flag --ansi                      Force ANSI output.
# @flag --no-ansi                   Disable ANSI output.
# @flag -n --no-interaction         Do not ask any interactive question.
# @flag --no-plugins                Disables plugins.
# @flag --no-cache                  Disables Poetry source caches.
# @option -C --directory            The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg key[`_choice_config_key`]    Setting key.
# @arg value                        Setting value.
config() {
    :;
}
# }} poetry config

# {{ poetry export
# @cmd Exports the lock file to alternative formats.
# @option -f --format                     Format to export to.
# @option -o --output                     The name of the output file.
# @flag --without-hashes                  Exclude hashes from the exported file.
# @flag --without-urls                    Exclude source repository urls from the exported file.
# @flag --dev                             Include development dependencies.
# @option --without*,[`_choice_group`]    The dependency groups to ignore.
# @option --with*,[`_choice_group`]       The optional dependency groups to include.
# @option --only*,[`_choice_group`]       The only dependency groups to include.
# @option -E --extras                     Extra sets of dependencies to include.
# @flag --all-extras                      Include all sets of extra dependencies.
# @flag --with-credentials                Include credentials for extra indices.
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message.
# @flag -V --version                      Display this application version.
# @flag --ansi                            Force ANSI output.
# @flag --no-ansi                         Disable ANSI output.
# @flag -n --no-interaction               Do not ask any interactive question.
# @flag --no-plugins                      Disables plugins.
# @flag --no-cache                        Disables Poetry source caches.
# @option -C --directory                  The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                      Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
export() {
    :;
}
# }} poetry export

# {{ poetry init
# @cmd Creates a basic pyproject.toml file in the current directory.
# @option --name               Name of the package.
# @option --description        Description of the package.
# @option --author             Author name of the package.
# @option --python             Compatible Python versions.
# @option --dependency         Package to require, with an optional version constraint, e.g. requests:^2.10.0 or requests=2.11.1.
# @option --dev-dependency     Package to require for development, with an optional version constraint, e.g. requests:^2.10.0 or requests=2.11.1.
# @option -l --license         License of the package.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
init() {
    :;
}
# }} poetry init

# {{ poetry install
# @cmd Installs the project dependencies.
# @option --without*,[`_choice_group`]    The dependency groups to ignore.
# @option --with*,[`_choice_group`]       The optional dependency groups to include.
# @option --only*,[`_choice_group`]       The only dependency groups to include.
# @flag --no-dev                          Do not install the development dependencies.
# @flag --sync                            Synchronize the environment with the locked packages and the specified groups.
# @flag --no-root                         Do not install the root package (the current project).
# @flag --no-directory                    Do not install any directory path dependencies; useful to install dependencies without source code, e.g. for caching of Docker layers)
# @flag --dry-run                         Output the operations but do not execute anything (implicitly enables --verbose).
# @flag --remove-untracked                Removes packages not present in the lock file.
# @option -E --extras                     Extra sets of dependencies to install.
# @flag --all-extras                      Install all extra dependencies.
# @flag --only-root                       Exclude all dependencies.
# @flag --compile                         Compile Python source files to bytecode.
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message.
# @flag -V --version                      Display this application version.
# @flag --ansi                            Force ANSI output.
# @flag --no-ansi                         Disable ANSI output.
# @flag -n --no-interaction               Do not ask any interactive question.
# @flag --no-plugins                      Disables plugins.
# @flag --no-cache                        Disables Poetry source caches.
# @option -C --directory                  The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                      Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
install() {
    :;
}
# }} poetry install

# {{ poetry list
# @cmd Lists commands.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg namespace               The namespace name
list() {
    :;
}
# }} poetry list

# {{ poetry lock
# @cmd Locks the project dependencies.
# @flag --no-update            Do not update locked versions, only refresh lock file.
# @flag --check                Check that the poetry.lock file corresponds to the current version of pyproject.toml.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
lock() {
    :;
}
# }} poetry lock

# {{ poetry new
# @cmd Creates a new Python project at <path>.
# @option --name               Set the resulting package name.
# @flag --src                  Use the src layout for the project.
# @option --readme             Specify the readme file format.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg path                    The path to create the project at.
new() {
    :;
}
# }} poetry new

# {{ poetry publish
# @cmd Publishes a package to a remote repository.
# @option -r --repository      The repository to publish the package to.
# @option -u --username        The username to access the repository.
# @option -p --password        The password to access the repository.
# @option --cert               Certificate authority to access the repository.
# @option --client-cert        Client certificate to access the repository.
# @flag --build                Build the package before publishing.
# @flag --dry-run              Perform all actions except upload the package.
# @flag --skip-existing        Ignore errors from files already existing in the repository.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
publish() {
    :;
}
# }} poetry publish

# {{ poetry remove
# @cmd Removes a package from the project dependencies.
# @option -G --group                      The group to remove the dependency from.
# @flag -D --dev                          Remove a package from the development dependencies.
# @flag --dry-run                         Output the operations but do not execute anything (implicitly enables --verbose).
# @flag --lock                            Do not perform operations (only update the lockfile).
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message.
# @flag -V --version                      Display this application version.
# @flag --ansi                            Force ANSI output.
# @flag --no-ansi                         Disable ANSI output.
# @flag -n --no-interaction               Do not ask any interactive question.
# @flag --no-plugins                      Disables plugins.
# @flag --no-cache                        Disables Poetry source caches.
# @option -C --directory                  The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                      Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg packages*[`_choice_dependency`]    The packages to remove.
remove() {
    :;
}
# }} poetry remove

# {{ poetry run
# @cmd Runs a command in the appropriate environment.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg args*                   The command and arguments/options to run.
run() {
    :;
}
# }} poetry run

# {{ poetry search
# @cmd Searches for packages on remote repositories.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg tokens*                 The tokens to search for.
search() {
    :;
}
# }} poetry search

# {{ poetry shell
# @cmd Spawns a shell within the virtual environment.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
shell() {
    :;
}
# }} poetry shell

# {{ poetry show
# @cmd Shows information about packages.
# @option --without*,[`_choice_group`]    The dependency groups to ignore.
# @option --with*,[`_choice_group`]       The optional dependency groups to include.
# @option --only*,[`_choice_group`]       The only dependency groups to include.
# @flag --no-dev                          Do not list the development dependencies.
# @flag -t --tree                         List the dependencies as a tree.
# @flag --why                             When showing the full list, or a --tree for a single package, also display why it's included.
# @flag -l --latest                       Show the latest version.
# @flag -o --outdated                     Show the latest version but only for packages that are outdated.
# @flag -a --all                          Show all packages (even those not compatible with current system).
# @flag -T --top-level                    Show only top-level dependencies.
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message.
# @flag -V --version                      Display this application version.
# @flag --ansi                            Force ANSI output.
# @flag --no-ansi                         Disable ANSI output.
# @flag -n --no-interaction               Do not ask any interactive question.
# @flag --no-plugins                      Disables plugins.
# @flag --no-cache                        Disables Poetry source caches.
# @option -C --directory                  The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                      Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg package[`_choice_dependency`]      The package to inspect
show() {
    :;
}
# }} poetry show

# {{ poetry update
# @cmd Update the dependencies as according to the pyproject.toml file.
# @option --without*,[`_choice_group`]    The dependency groups to ignore.
# @option --with*,[`_choice_group`]       The optional dependency groups to include.
# @option --only*,[`_choice_group`]       The only dependency groups to include.
# @flag --no-dev                          Do not update the development dependencies.
# @flag --dry-run                         Output the operations but do not execute anything (implicitly enables --verbose).
# @flag --lock                            Do not perform operations (only update the lockfile).
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message.
# @flag -V --version                      Display this application version.
# @flag --ansi                            Force ANSI output.
# @flag --no-ansi                         Disable ANSI output.
# @flag -n --no-interaction               Do not ask any interactive question.
# @flag --no-plugins                      Disables plugins.
# @flag --no-cache                        Disables Poetry source caches.
# @option -C --directory                  The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                      Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg packages*[`_choice_dependency`]    The packages to update
update() {
    :;
}
# }} poetry update

# {{ poetry version
# @cmd Shows the version of the project or bumps it when a valid bump rule is provided.
# @flag -s --short             Output the version number only
# @flag --dry-run              Do not update pyproject.toml file
# @flag --next-phase           Increment the phase of the current version
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg version                 The version number or the rule to update the version.
version() {
    :;
}
# }} poetry version

# {{ poetry cache
# @cmd Interact with Poetry’s cache.
cache() {
    :;
}

# {{{ poetry cache clear
# @cmd Clears a Poetry cache by name.
# @flag --all                  Clear all entries in the cache.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg cache                   The name of the cache to clear.
cache::clear() {
    :;
}
# }}} poetry cache clear

# {{{ poetry cache list
# @cmd List Poetry's caches.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
cache::list() {
    :;
}
# }}} poetry cache list
# }} poetry cache

# {{ poetry debug
# @cmd Debug operations.
debug() {
    :;
}

# {{{ poetry debug info
# @cmd Shows debug information.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
debug::info() {
    :;
}
# }}} poetry debug info

# {{{ poetry debug resolve
# @cmd Debugs dependency resolution.
# @option -E --extras                   Extras to activate for the dependency.
# @option --python                      Python version(s) to use for resolution.
# @flag --tree                          Display the dependency tree.
# @flag --install                       Show what would be installed for the current system.
# @flag -h --help                       Display help for the given command.
# @flag -q --quiet                      Do not output any message.
# @flag -V --version                    Display this application version.
# @flag --ansi                          Force ANSI output.
# @flag --no-ansi                       Disable ANSI output.
# @flag -n --no-interaction             Do not ask any interactive question.
# @flag --no-plugins                    Disables plugins.
# @flag --no-cache                      Disables Poetry source caches.
# @option -C --directory                The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                    Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg package[`_choice_dependency`]    The packages to resolve.
debug::resolve() {
    :;
}
# }}} poetry debug resolve
# }} poetry debug

# {{ poetry env
# @cmd Interact with the virtualenvs associated with a specific project.
env() {
    :;
}

# {{{ poetry env info
# @cmd Displays information about the current environment.
# @flag -p --path              Only display the environment's path.
# @flag -e --executable        Only display the environment's python executable path.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
env::info() {
    :;
}
# }}} poetry env info

# {{{ poetry env list
# @cmd Lists all virtualenvs associated with the current project.
# @flag --full-path            Output the full paths of the virtualenvs.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
env::list() {
    :;
}
# }}} poetry env list

# {{{ poetry env remove
# @cmd Remove virtual environments associated with the project.
# @flag --all                   Remove all managed virtual environments associated with the project.
# @flag -h --help               Display help for the given command.
# @flag -q --quiet              Do not output any message.
# @flag -V --version            Display this application version.
# @flag --ansi                  Force ANSI output.
# @flag --no-ansi               Disable ANSI output.
# @flag -n --no-interaction     Do not ask any interactive question.
# @flag --no-plugins            Disables plugins.
# @flag --no-cache              Disables Poetry source caches.
# @option -C --directory        The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose            Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg python[`_choice_env`]    The python executables associated with, or names of the virtual environments which are to be removed.
env::remove() {
    :;
}
# }}} poetry env remove

# {{{ poetry env use
# @cmd Activates or creates a new virtualenv for the current project.
# @flag -h --help               Display help for the given command.
# @flag -q --quiet              Do not output any message.
# @flag -V --version            Display this application version.
# @flag --ansi                  Force ANSI output.
# @flag --no-ansi               Disable ANSI output.
# @flag -n --no-interaction     Do not ask any interactive question.
# @flag --no-plugins            Disables plugins.
# @flag --no-cache              Disables Poetry source caches.
# @option -C --directory        The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose            Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg python[`_choice_env`]    The python executable to use.
env::use() {
    :;
}
# }}} poetry env use
# }} poetry env

# {{ poetry self
# @cmd Manage the Poetry installation itself.
self() {
    :;
}

# {{{ poetry self add
# @cmd Add additional packages to Poetry's runtime environment.
# @flag -e --editable          Add vcs/path dependencies as editable.
# @option -E --extras          Extras to activate for the dependency.
# @option --source             Name of the source to use to install the package.
# @flag --allow-prereleases    Accept prereleases.
# @flag --dry-run              Output the operations but do not execute anything (implicitly enables --verbose).
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg name                    The packages to add.
self::add() {
    :;
}
# }}} poetry self add

# {{{ poetry self install
# @cmd Install locked packages (incl.
# @flag --sync                 Synchronize the environment with the locked packages and the specified groups.
# @flag --dry-run              Output the operations but do not execute anything (implicitly enables --verbose).
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
self::install() {
    :;
}
# }}} poetry self install

# {{{ poetry self lock
# @cmd Lock the Poetry installation's system requirements.
# @flag --no-update            Do not update locked versions, only refresh lock file.
# @flag --check                Check that the poetry.lock file corresponds to the current version of pyproject.toml.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
self::lock() {
    :;
}
# }}} poetry self lock

# {{{ poetry self remove
# @cmd Remove additional packages from Poetry's runtime environment.
# @flag --dry-run                     Output the operations but do not execute anything (implicitly enables --verbose).
# @flag -h --help                     Display help for the given command.
# @flag -q --quiet                    Do not output any message.
# @flag -V --version                  Display this application version.
# @flag --ansi                        Force ANSI output.
# @flag --no-ansi                     Disable ANSI output.
# @flag -n --no-interaction           Do not ask any interactive question.
# @flag --no-plugins                  Disables plugins.
# @flag --no-cache                    Disables Poetry source caches.
# @option -C --directory              The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg packages*[`_choice_plugin`]    The packages to remove.
self::remove() {
    :;
}
# }}} poetry self remove

# {{{ poetry self show
# @cmd Show packages from Poetry's runtime environment.
# @flag --addons                        List only add-on packages installed.
# @flag -t --tree                       List the dependencies as a tree.
# @flag -l --latest                     Show the latest version.
# @flag -o --outdated                   Show the latest version but only for packages that are outdated.
# @flag -h --help                       Display help for the given command.
# @flag -q --quiet                      Do not output any message.
# @flag -V --version                    Display this application version.
# @flag --ansi                          Force ANSI output.
# @flag --no-ansi                       Disable ANSI output.
# @flag -n --no-interaction             Do not ask any interactive question.
# @flag --no-plugins                    Disables plugins.
# @flag --no-cache                      Disables Poetry source caches.
# @option -C --directory                The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose                    Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg package*[`_choice_self_show`]    The package to inspect
self::show() {
    :;
}
# }}} poetry self show

# {{{ poetry self update
# @cmd Updates Poetry to the latest version.
# @flag --preview              Allow the installation of pre-release versions.
# @flag --dry-run              Output the operations but do not execute anything (implicitly enables --verbose).
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg version                 The version to update to.
self::update() {
    :;
}
# }}} poetry self update
# }} poetry self

# {{ poetry source
# @cmd Manage repository sources for a Poetry project.
source() {
    :;
}

# {{{ poetry source add
# @cmd Add source configuration for project.
# @flag -d --default           Set this source as the default (disable PyPI).
# @flag -s --secondary         Set this source as secondary.
# @option -p --priority[default|primary|secondary|supplemental|explicit]  Set the priority of this source.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message.
# @flag -V --version           Display this application version.
# @flag --ansi                 Force ANSI output.
# @flag --no-ansi              Disable ANSI output.
# @flag -n --no-interaction    Do not ask any interactive question.
# @flag --no-plugins           Disables plugins.
# @flag --no-cache             Disables Poetry source caches.
# @option -C --directory       The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg name                    Source repository name.
# @arg url                     Source repository URL.
source::add() {
    :;
}
# }}} poetry source add

# {{{ poetry source remove
# @cmd Remove source configured for the project.
# @flag -h --help                Display help for the given command.
# @flag -q --quiet               Do not output any message.
# @flag -V --version             Display this application version.
# @flag --ansi                   Force ANSI output.
# @flag --no-ansi                Disable ANSI output.
# @flag -n --no-interaction      Do not ask any interactive question.
# @flag --no-plugins             Disables plugins.
# @flag --no-cache               Disables Poetry source caches.
# @option -C --directory         The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose             Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg name[`_choice_source`]    Source repository name.
source::remove() {
    :;
}
# }}} poetry source remove

# {{{ poetry source show
# @cmd Show information about sources configured for the project.
# @flag -h --help                  Display help for the given command.
# @flag -q --quiet                 Do not output any message.
# @flag -V --version               Display this application version.
# @flag --ansi                     Force ANSI output.
# @flag --no-ansi                  Disable ANSI output.
# @flag -n --no-interaction        Do not ask any interactive question.
# @flag --no-plugins               Disables plugins.
# @flag --no-cache                 Disables Poetry source caches.
# @option -C --directory           The working directory for the Poetry command (defaults to the current working directory).
# @flag -v --verbose               Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug.
# @arg source[`_choice_source`]    Source(s) to show information for.
source::show() {
    :;
}
# }}} poetry source show
# }} poetry source

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_config_key() {
    poetry config $(_argc_util_param_select_options --local) --list | \
    sed 's/ = /\t/' | \
    _argc_util_comp_parts .
}

_choice_group() {
    printf "%s\n" main test docs
    _helper_find_pyproject_toml_path
    if [[ -z "$pyproject_toml_path" ]]; then
        return
    fi
    cat "$pyproject_toml_path" | \
    yq -p toml '.tool.poetry.group | keys | .[]'
}

_choice_dependency() {
    _helper_find_pyproject_toml_path
    if [[ -z "$pyproject_toml_path" ]]; then
        return
    fi
    cat "$pyproject_toml_path" | \
    yq -p toml '.tool.poetry | .. | select(has("dependencies")) | .dependencies | keys | .[]'
}

_choice_env() {
    poetry env list
}

_choice_plugin() {
    poetry self show plugins | sed -n 's/^  • \(\S\+\) .*/\1/p'
}

_choice_self_show() {
    echo "plugins"
    _choice_plugin
}

_choice_source() {
    _helper_find_pyproject_toml_path
    if [[ -z "$pyproject_toml_path" ]]; then
        return
    fi
    cat "$pyproject_toml_path" | \
    yq -p toml '.tool.poetry.source.[].name'
}

_helper_find_pyproject_toml_path() {
    pyproject_toml_path="$(_argc_util_path_search_parent pyproject.toml)"
}

command eval "$(argc --argc-eval "$0" "$@")"