#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --where                   Output project home information.
# @flag --venv                    Output virtualenv information.
# @flag --py                      Output Python interpreter information.
# @flag --envs                    Output Environment Variable options.
# @flag --rm                      Remove the virtualenv.
# @flag --bare                    Minimal output.
# @flag --man                     Display manpage.
# @flag --support                 Output diagnostic information for use in GitHub issues.
# @flag --site-packages           Enable site-packages for the virtualenv.
# @flag --no-site-packages        Enable site-packages for the virtualenv.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]     Clears caches.
# @flag -q --quiet                Quiet mode.
# @flag -v --verbose              Verbose mode.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @flag --version                 Show the version and exit.
# @flag -h --help                 Show this message and exit.

# {{ pipenv check
# @cmd Checks for PyUp Safety security vulnerabilities and against PEP 508 markers provided in Pipfile.
# @option --db <TEXT>                  Path or URL to a PyUp Safety vulnerabilities database.
# @option -i --ignore <TEXT>           Ignore specified vulnerability during PyUp Safety checks.
# @option --output[default|json|full-report|bare|screen|text|minimal]  Translates to --json, --full-report or --bare from PyUp Safety check
# @option --key <TEXT>                 Safety API key from PyUp.io for scanning dependencies against a live vulnerabilities database.
# @option --policy-file <TEXT>         Define the policy file to be used
# @flag --exit-code                    Output standard exit codes.
# @flag --continue-on-error            Output standard exit codes.
# @flag --audit-and-monitor            Send results back to pyup.io for viewing on your dashboard.
# @flag --disable-audit-and-monitor    Send results back to pyup.io for viewing on your dashboard.
# @option --project <TEXT>             Project to associate this scan with on pyup.io.
# @option --save-json <TEXT>           Path to where output file will be placed, if the path is a directory, Safety will use safety-report.json as filename.
# @flag --use-installed                Whether to use the lockfile as input to check (instead of result from pip list).
# @option --categories <TEXT>          Use the specified categories from the lockfile as input to check.
# @option --python <TEXT>              Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]          Clears caches.
# @flag -q --quiet                     Quiet mode.
# @flag -v --verbose                   Verbose mode.
# @option --pypi-mirror <TEXT>         Specify a PyPI mirror.
# @flag --system                       System pip management.
# @flag -h --help                      Show this message and exit.
check() {
    :;
}
# }} pipenv check

# {{ pipenv clean
# @cmd Uninstalls all packages not specified in Pipfile.lock.
# @flag --bare               Minimal output.
# @flag --dry-run            Just output unneeded packages.
# @flag -v --verbose         Verbose mode.
# @option --python <TEXT>    Specify which version of Python virtualenv should use.
# @flag -h --help            Show this message and exit.
clean() {
    :;
}
# }} pipenv clean

# {{ pipenv graph
# @cmd Displays currently-installed dependency graph information.
# @flag --bare         Minimal output.
# @flag --json         Output JSON.
# @flag --json-tree    Output JSON in nested tree.
# @flag --reverse      Reversed dependency graph.
# @flag -h --help      Show this message and exit.
graph() {
    :;
}
# }} pipenv graph

# {{ pipenv install
# @cmd Installs provided packages and adds them to Pipfile, or (if no packages are given), installs all packages from Pipfile.
# @flag --system                       System pip management.
# @flag --deploy                       Abort if the Pipfile.lock is out-of-date, or Python version is wrong.
# @flag --site-packages                Enable site-packages for the virtualenv.
# @flag --no-site-packages             Enable site-packages for the virtualenv.
# @flag --selective-upgrade            Update specified packages.
# @flag --skip-lock                    Install from Pipfile bypassing lock mechanisms.
# @option -e --editable <DIRECTORY>    An editable Python package URL or path, often to a VCS repository.
# @flag --ignore-pipfile               Ignore Pipfile when installing, using the Pipfile.lock.
# @option -r --requirements <FILE>     Import a requirements.txt file.
# @option -i --index <TEXT>            Specify target package index by url or index name from Pipfile.
# @option --categories <TEXT>
# @flag -d --dev                       Install both develop and default packages [env var: PIPENV_DEV]
# @option --extra-pip-args <TEXT>
# @flag --pre                          Allow pre-releases.
# @option --python <TEXT>              Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]          Clears caches.
# @flag -q --quiet                     Quiet mode.
# @flag -v --verbose                   Verbose mode.
# @option --pypi-mirror <TEXT>         Specify a PyPI mirror.
# @flag -h --help                      Show this message and exit.
# @arg packages*[`_choice_package`]
install() {
    :;
}
# }} pipenv install

# {{ pipenv lock
# @cmd Generates Pipfile.lock.
# @option --categories <TEXT>
# @flag --dev-only                Emit development dependencies *only* (overrides --dev)
# @flag -d --dev                  Generate both develop and default requirements  [env var: PIPENV_DEV]
# @option --extra-pip-args <TEXT>
# @flag --pre                     Allow pre-releases.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]     Clears caches.
# @flag -q --quiet                Quiet mode.
# @flag -v --verbose              Verbose mode.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @flag -h --help                 Show this message and exit.
lock() {
    :;
}
# }} pipenv lock

# {{ pipenv open
# @cmd View a given module in your editor.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]     Clears caches.
# @flag -q --quiet                Quiet mode.
# @flag -v --verbose              Verbose mode.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @flag -h --help                 Show this message and exit.
# @arg module
open() {
    :;
}
# }} pipenv open

# {{ pipenv requirements
# @cmd Generate a requirements.txt from Pipfile.lock.
# @flag --dev                    Also add development requirements.
# @flag --dev-only               Only add development requirements.
# @flag --hash                   Add package hashes.
# @flag --exclude-markers        Exclude markers.
# @option --categories <TEXT>    Only add requirement of the specified categories.
# @flag -h --help                Show this message and exit.
requirements() {
    :;
}
# }} pipenv requirements

# {{ pipenv run
# @cmd Spawns a command installed into the virtualenv.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]     Clears caches.
# @flag -q --quiet                Quiet mode.
# @flag -v --verbose              Verbose mode.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @flag -h --help                 Show this message and exit.
# @arg command
# @arg args*
run() {
    :;
}
# }} pipenv run

# {{ pipenv scripts
# @cmd Lists scripts in current environment config.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]     Clears caches.
# @flag -q --quiet                Quiet mode.
# @flag -v --verbose              Verbose mode.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @flag -h --help                 Show this message and exit.
scripts() {
    :;
}
# }} pipenv scripts

# {{ pipenv shell
# @cmd Spawns a shell within the virtualenv.
# @flag --fancy                   Run in shell in fancy mode.
# @flag --anyway                  Always spawn a sub-shell, even if one is already spawned.
# @flag --quiet                   Quiet standard output, except vulnerability report.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @flag -h --help                 Show this message and exit.
# @arg shell_args*
shell() {
    :;
}
# }} pipenv shell

# {{ pipenv sync
# @cmd Installs all packages specified in Pipfile.lock.
# @flag --system                  System pip management.
# @flag --bare                    Minimal output.
# @option --categories <TEXT>
# @flag -d --dev                  Install both develop and default packages [env var: PIPENV_DEV]
# @option --extra-pip-args <TEXT>
# @flag --pre                     Allow pre-releases.
# @option --python <TEXT>         Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]     Clears caches.
# @flag -q --quiet                Quiet mode.
# @flag -v --verbose              Verbose mode.
# @option --pypi-mirror <TEXT>    Specify a PyPI mirror.
# @flag --site-packages           Enable site-packages for the virtualenv.
# @flag --no-site-packages        Enable site-packages for the virtualenv.
# @flag -h --help                 Show this message and exit.
sync() {
    :;
}
# }} pipenv sync

# {{ pipenv uninstall
# @cmd Uninstalls a provided package and removes it from Pipfile.
# @flag --all-dev                      Uninstall all package from [dev-packages].
# @flag --all                          Purge all package(s) from virtualenv.
# @flag --skip-lock                    Install from Pipfile bypassing lock mechanisms.
# @option -e --editable <DIRECTORY>    An editable Python package URL or path, often to a VCS repository.
# @flag -d --dev                       Deprecated (as it has no effect).
# @option --categories <TEXT>
# @option --extra-pip-args <TEXT>
# @flag --pre                          Allow pre-releases.
# @option --python <TEXT>              Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]          Clears caches.
# @flag -q --quiet                     Quiet mode.
# @flag -v --verbose                   Verbose mode.
# @option --pypi-mirror <TEXT>         Specify a PyPI mirror.
# @flag -h --help                      Show this message and exit.
# @arg packages*[`_choice_package`]
uninstall() {
    :;
}
# }} pipenv uninstall

# {{ pipenv update
# @cmd Runs lock, then sync.
# @flag --bare                         Minimal output.
# @flag --outdated                     List out-of-date dependencies.
# @flag --dry-run                      List out-of-date dependencies.
# @flag --selective-upgrade            Update specified packages.
# @flag --skip-lock                    Install from Pipfile bypassing lock mechanisms.
# @option -e --editable <DIRECTORY>    An editable Python package URL or path, often to a VCS repository.
# @flag --ignore-pipfile               Ignore Pipfile when installing, using the Pipfile.lock.
# @option -r --requirements <FILE>     Import a requirements.txt file.
# @option -i --index <TEXT>            Specify target package index by url or index name from Pipfile.
# @option --categories <TEXT>
# @flag -d --dev                       Install both develop and default packages  [env var: PIPENV_DEV]
# @option --extra-pip-args <TEXT>
# @flag --pre                          Allow pre-releases.
# @option --python <TEXT>              Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]          Clears caches.
# @flag -q --quiet                     Quiet mode.
# @flag -v --verbose                   Verbose mode.
# @option --pypi-mirror <TEXT>         Specify a PyPI mirror.
# @flag --lock-only                    Only update lock file (specifiers not added to Pipfile).
# @flag -h --help                      Show this message and exit.
# @arg packages*[`_choice_package`]
update() {
    :;
}
# }} pipenv update

# {{ pipenv upgrade
# @cmd Resolves provided packages and adds them to Pipfile, or (if no packages are given), merges results to Pipfile.lock
# @flag --system                       System pip management.
# @flag --site-packages                Enable site-packages for the virtualenv.
# @flag --no-site-packages             Enable site-packages for the virtualenv.
# @flag --selective-upgrade            Update specified packages.
# @flag --skip-lock                    Install from Pipfile bypassing lock mechanisms.
# @option -e --editable <DIRECTORY>    An editable Python package URL or path, often to a VCS repository.
# @flag --ignore-pipfile               Ignore Pipfile when installing, using the Pipfile.lock.
# @option -r --requirements <FILE>     Import a requirements.txt file.
# @option -i --index <TEXT>            Specify target package index by url or index name from Pipfile.
# @option --categories <TEXT>
# @flag -d --dev                       Install both develop and default packages [env var: PIPENV_DEV]
# @option --extra-pip-args <TEXT>
# @flag --pre                          Allow pre-releases.
# @option --python <TEXT>              Specify which version of Python virtualenv should use.
# @option --clear[pipenv|pip]          Clears caches.
# @flag -q --quiet                     Quiet mode.
# @flag -v --verbose                   Verbose mode.
# @option --pypi-mirror <TEXT>         Specify a PyPI mirror.
# @flag --lock-only                    Only update lock file (specifiers not added to Pipfile).
# @flag -h --help                      Show this message and exit.
# @arg packages*[`_choice_package`]
upgrade() {
    :;
}
# }} pipenv upgrade

# {{ pipenv verify
# @cmd Verify the hash in Pipfile.lock is up-to-date.
# @flag -h --help    Show this message and exit.
verify() {
    :;
}
# }} pipenv verify

_choice_package() {
    pip list --format json | yq '.[] | .name + "	" + .version'
}

command eval "$(argc --argc-eval "$0" "$@")"