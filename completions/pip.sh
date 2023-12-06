#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.

# {{ pip install
# @cmd Install packages.
# @option -r --requirement <file>                  Install from the given requirements file.
# @option -c --constraint <file>                   Constrain versions using the given constraints file.
# @flag --no-deps                                  Don't install package dependencies.
# @flag --pre                                      Include pre-release and development versions.
# @option -e --editable <path/url>                 Install a project in editable mode (i.e.
# @flag --dry-run                                  Don't actually install anything, just print what would be.
# @option -t --target <dir>                        Install packages into <dir>.
# @option --platform <platform>                    Only use wheels compatible with <platform>.
# @option --python-version <python_version>        The Python interpreter version to use for wheel and "Requires-Python" compatibility checks.
# @option --implementation[pp|jy|cp|ip] <implementation>  Only use wheels compatible with Python implementation <implementation>, e.g. 'pp', 'jy', 'cp',  or 'ip'.
# @option --abi <abi>                              Only use wheels compatible with Python abi <abi>, e.g. 'pypy_41'.
# @flag --user                                     Install to the Python user install directory for your platform.
# @option --root <dir>                             Install everything relative to this alternate root directory.
# @option --prefix <dir>                           Installation prefix where lib, bin and other top-level folders are placed.
# @option --src <dir>                              Directory to check out editable projects into.
# @flag -U --upgrade                               Upgrade all specified packages to the newest available version.
# @option --upgrade-strategy[only-if-needed|eager] <upgrade_strategy>  Determines how dependency upgrading should be handled [default: only-if-needed].
# @flag --force-reinstall                          Reinstall all packages even if they are already up-to-date.
# @flag -I --ignore-installed                      Ignore the installed packages, overwriting them.
# @flag --ignore-requires-python                   Ignore the Requires-Python information.
# @flag --no-build-isolation                       Disable isolation when building a modern source distribution.
# @flag --use-pep517                               Use PEP 517 for building source distributions (use --no-use-pep517 to force legacy behaviour).
# @flag --check-build-dependencies                 Check the build dependencies when PEP517 is used.
# @flag --break-system-packages                    Allow pip to modify an EXTERNALLY-MANAGED Python installation
# @option -C --config-settings <settings>          Configuration settings to be passed to the PEP 517 build backend.
# @option --global-option <options>                Extra global options to be supplied to the setup.py call before the install or bdist_wheel command.
# @flag --compile                                  Compile Python source files to bytecode
# @flag --no-compile                               Do not compile Python source files to bytecode
# @flag --no-warn-script-location                  Do not warn when installing scripts outside PATH
# @flag --no-warn-conflicts                        Do not warn about broken dependencies
# @option --no-binary <format_control>             Do not use binary packages.
# @option --only-binary <format_control>           Do not use source packages.
# @flag --prefer-binary                            Prefer binary packages over source packages, even if the source packages are newer.
# @flag --require-hashes                           Require a hash to check each requirement against, for repeatable installs.
# @option --progress-bar[off|on|ascii|pretty|emoji] <progress_bar>  Specify whether the progress bar should be used [on, off] (default: on)
# @option --root-user-action <root_user_action>    Action if pip is run as a root user.
# @option --report <file>                          Generate a JSON file describing what pip did to install the provided requirements.
# @flag --no-clean                                 Don't clean up build directories.
# @option -i --index-url <url>                     Base URL of the Python Package Index (default https://pypi.org/simple).
# @option --extra-index-url <url>                  Extra URLs of package indexes to use in addition to --index-url.
# @flag --no-index                                 Ignore package index (only looking at --find-links URLs instead).
# @option -f --find-links <url>                    If a URL or path to an html file, then parse for links to archives such as sdist (.tar.gz) or wheel (.whl) files.
# @flag -h --help                                  Show help.
# @flag --debug                                    Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                                 Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv                       Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>                        Run pip with the specified Python interpreter.
# @flag -v --verbose                               Give more output.
# @flag -V --version                               Show version and exit.
# @flag -q --quiet                                 Give less output.
# @option --log <path>                             Path to a verbose appending log.
# @flag --no-input                                 Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>                          Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>                      Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>                          Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>                Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                            Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>                     Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>                        Store the cache data in <dir>.
# @flag --no-cache-dir                             Disable the cache.
# @flag --disable-pip-version-check                Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                                 Suppress colored output.
# @flag --no-python-version-warning                Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>                  Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>               Enable deprecated functionality, that will be removed in the future.
install() {
    :;
}
# }} pip install

# {{ pip download
# @cmd Download packages.
# @option -c --constraint <file>               Constrain versions using the given constraints file.
# @option -r --requirement <file>              Install from the given requirements file.
# @flag --no-deps                              Don't install package dependencies.
# @option --global-option <options>            Extra global options to be supplied to the setup.py call before the install or bdist_wheel command.
# @option --no-binary <format_control>         Do not use binary packages.
# @option --only-binary <format_control>       Do not use source packages.
# @flag --prefer-binary                        Prefer binary packages over source packages, even if the source packages are newer.
# @option --src <dir>                          Directory to check out editable projects into.
# @flag --pre                                  Include pre-release and development versions.
# @flag --require-hashes                       Require a hash to check each requirement against, for repeatable installs.
# @option --progress-bar[off|on|ascii|pretty|emoji] <progress_bar>  Specify whether the progress bar should be used [on, off] (default: on)
# @flag --no-build-isolation                   Disable isolation when building a modern source distribution.
# @flag --use-pep517                           Use PEP 517 for building source distributions (use --no-use-pep517 to force legacy behaviour).
# @flag --check-build-dependencies             Check the build dependencies when PEP517 is used.
# @flag --ignore-requires-python               Ignore the Requires-Python information.
# @option -d --dest <dir>                      Download packages into <dir>.
# @option --platform <platform>                Only use wheels compatible with <platform>.
# @option --python-version <python_version>    The Python interpreter version to use for wheel and "Requires-Python" compatibility checks.
# @option --implementation[pp|jy|cp|ip] <implementation>  Only use wheels compatible with Python implementation <implementation>, e.g. 'pp', 'jy', 'cp',  or 'ip'.
# @option --abi <abi>                          Only use wheels compatible with Python abi <abi>, e.g. 'pypy_41'.
# @flag --no-clean                             Don't clean up build directories.
# @option -i --index-url <url>                 Base URL of the Python Package Index (default https://pypi.org/simple).
# @option --extra-index-url <url>              Extra URLs of package indexes to use in addition to --index-url.
# @flag --no-index                             Ignore package index (only looking at --find-links URLs instead).
# @option -f --find-links <url>                If a URL or path to an html file, then parse for links to archives such as sdist (.tar.gz) or wheel (.whl) files.
# @flag -h --help                              Show help.
# @flag --debug                                Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                             Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv                   Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>                    Run pip with the specified Python interpreter.
# @flag -v --verbose                           Give more output.
# @flag -V --version                           Show version and exit.
# @flag -q --quiet                             Give less output.
# @option --log <path>                         Path to a verbose appending log.
# @flag --no-input                             Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>                      Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>                  Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>                      Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>            Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                        Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>                 Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>                    Store the cache data in <dir>.
# @flag --no-cache-dir                         Disable the cache.
# @flag --disable-pip-version-check            Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                             Suppress colored output.
# @flag --no-python-version-warning            Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>              Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>           Enable deprecated functionality, that will be removed in the future.
download() {
    :;
}
# }} pip download

# {{ pip uninstall
# @cmd Uninstall packages.
# @option -r --requirement <file>                  Uninstall all the packages listed in the given requirements file.
# @flag -y --yes                                   Don't ask for confirmation of uninstall deletions.
# @option --root-user-action <root_user_action>    Action if pip is run as a root user.
# @flag --break-system-packages                    Allow pip to modify an EXTERNALLY-MANAGED Python installation
# @flag -h --help                                  Show help.
# @flag --debug                                    Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                                 Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv                       Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>                        Run pip with the specified Python interpreter.
# @flag -v --verbose                               Give more output.
# @flag -V --version                               Show version and exit.
# @flag -q --quiet                                 Give less output.
# @option --log <path>                             Path to a verbose appending log.
# @flag --no-input                                 Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>                          Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>                      Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>                          Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>                Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                            Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>                     Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>                        Store the cache data in <dir>.
# @flag --no-cache-dir                             Disable the cache.
# @flag --disable-pip-version-check                Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                                 Suppress colored output.
# @flag --no-python-version-warning                Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>                  Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>               Enable deprecated functionality, that will be removed in the future.
# @arg package[`_choice_package`]
uninstall() {
    :;
}
# }} pip uninstall

# {{ pip freeze
# @cmd Output installed packages in requirements format.
# @option -r --requirement <file>       Use the order in the given requirements file and its comments when generating output.
# @flag -l --local                      If in a virtualenv that has global access, do not output globally-installed packages.
# @flag --user                          Only output packages installed in user-site.
# @option --path <path>                 Restrict to the specified installation path for listing packages (can be used multiple times).
# @option --all[pip|setuptools|wheel|distribute]  Do not skip these packages in the output.
# @flag --exclude-editable              Exclude editable package from output.
# @option --exclude[`_choice_package`] <package>  Exclude specified package from the output
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
freeze() {
    :;
}
# }} pip freeze

# {{ pip inspect
# @cmd Inspect the python environment.
# @flag --local                         If in a virtualenv that has global access, do not list globally-installed packages.
# @flag --user                          Only output packages installed in user-site.
# @option --path <path>                 Restrict to the specified installation path for listing packages (can be used multiple times).
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
inspect() {
    :;
}
# }} pip inspect

# {{ pip list
# @cmd List installed packages.
# @flag -o --outdated                   List outdated packages
# @flag -u --uptodate                   List uptodate packages
# @flag -e --editable                   List editable projects.
# @flag -l --local                      If in a virtualenv that has global access, do not list globally-installed packages.
# @flag --user                          Only output packages installed in user-site.
# @option --path <path>                 Restrict to the specified installation path for listing packages (can be used multiple times).
# @flag --pre                           Include pre-release and development versions.
# @option --format <list_format>        Select the output format among: columns (default), freeze, or json.
# @flag --not-required                  List packages that are not dependencies of installed packages.
# @flag --exclude-editable              Exclude editable package from output.
# @flag --include-editable              Include editable package from output.
# @option --exclude[`_choice_package`] <package>  Exclude specified package from the output
# @option -i --index-url <url>          Base URL of the Python Package Index (default https://pypi.org/simple).
# @option --extra-index-url <url>       Extra URLs of package indexes to use in addition to --index-url.
# @flag --no-index                      Ignore package index (only looking at --find-links URLs instead).
# @option -f --find-links <url>         If a URL or path to an html file, then parse for links to archives such as sdist (.tar.gz) or wheel (.whl) files.
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
list() {
    :;
}
# }} pip list

# {{ pip show
# @cmd Show information about installed packages.
# @flag -f --files                      Show the full list of installed files for each package.
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
# @arg package[`_choice_package`]
show() {
    :;
}
# }} pip show

# {{ pip check
# @cmd Verify installed packages have compatible dependencies.
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
check() {
    :;
}
# }} pip check

# {{ pip config
# @cmd Manage local and global configuration.
# @option --editor <editor>             Editor to use to edit the file.
# @flag --global                        Use the system-wide configuration file only
# @flag --user                          Use the user configuration file only
# @flag --site                          Use the current environment configuration file only
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
config() {
    :;
}

# {{{ pip config list
# @cmd List the active configuration (or from the file specified)
config::list() {
    :;
}
# }}} pip config list

# {{{ pip config edit
# @cmd Edit the configuration file in an editor
# @option --editor <editor-path>    Editor to use to edit the file
config::edit() {
    :;
}
# }}} pip config edit

# {{{ pip config get
# @cmd Get the value associated with command.option
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} pip config get

# {{{ pip config set
# @cmd Set the command.option=value
# @arg key![`_choice_config_key`]
# @arg value!
config::set() {
    :;
}
# }}} pip config set

# {{{ pip config unset
# @cmd Unset the value associated with command.option
# @arg key![`_choice_config_key`]
config::unset() {
    :;
}
# }}} pip config unset

# {{{ pip config debug
# @cmd List the configuration files and values defined under them
config::debug() {
    :;
}
# }}} pip config debug
# }} pip config

# {{ pip search
# @cmd Search PyPI for packages.
# @option -i --index <url>              Base URL of Python Package Index (default https://pypi.org/pypi)
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
search() {
    :;
}
# }} pip search

# {{ pip cache
# @cmd Inspect and manage pip's wheel cache.
# @option --format <list_format>        Select the output format among: human (default) or abspath
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
cache() {
    :;
}

# {{{ pip cache dir
# @cmd Show the cache directory.
cache::dir() {
    :;
}
# }}} pip cache dir

# {{{ pip cache info
# @cmd Show information about the cache.
cache::info() {
    :;
}
# }}} pip cache info

# {{{ pip cache list
# @cmd List filenames of packages stored in the cache.
# @option --format <human|abspath>    Select the output format
# @arg pattern!
cache::list() {
    :;
}
# }}} pip cache list

# {{{ pip cache remove
# @cmd Remove one or more package from the cache.
# @arg pattern!
cache::remove() {
    :;
}
# }}} pip cache remove

# {{{ pip cache purge
# @cmd Remove all items from the cache.
cache::purge() {
    :;
}
# }}} pip cache purge
# }} pip cache

# {{ pip index
# @cmd Inspect information available from package indexes.
# @option --platform <platform>                Only use wheels compatible with <platform>.
# @option --python-version <python_version>    The Python interpreter version to use for wheel and "Requires-Python" compatibility checks.
# @option --implementation[pp|jy|cp|ip] <implementation>  Only use wheels compatible with Python implementation <implementation>, e.g. 'pp', 'jy', 'cp',  or 'ip'.
# @option --abi <abi>                          Only use wheels compatible with Python abi <abi>, e.g. 'pypy_41'.
# @flag --ignore-requires-python               Ignore the Requires-Python information.
# @flag --pre                                  Include pre-release and development versions.
# @option --no-binary <format_control>         Do not use binary packages.
# @option --only-binary <format_control>       Do not use source packages.
# @option -i --index-url <url>                 Base URL of the Python Package Index (default https://pypi.org/simple).
# @option --extra-index-url <url>              Extra URLs of package indexes to use in addition to --index-url.
# @flag --no-index                             Ignore package index (only looking at --find-links URLs instead).
# @option -f --find-links <url>                If a URL or path to an html file, then parse for links to archives such as sdist (.tar.gz) or wheel (.whl) files.
# @flag -h --help                              Show help.
# @flag --debug                                Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                             Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv                   Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>                    Run pip with the specified Python interpreter.
# @flag -v --verbose                           Give more output.
# @flag -V --version                           Show version and exit.
# @flag -q --quiet                             Give less output.
# @option --log <path>                         Path to a verbose appending log.
# @flag --no-input                             Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>                      Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>                  Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>                      Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>            Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                        Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>                 Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>                    Store the cache data in <dir>.
# @flag --no-cache-dir                         Disable the cache.
# @flag --disable-pip-version-check            Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                             Suppress colored output.
# @flag --no-python-version-warning            Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>              Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>           Enable deprecated functionality, that will be removed in the future.
index() {
    :;
}
# }} pip index

# {{ pip wheel
# @cmd Build wheels from your requirements.
# @option -w --wheel-dir <dir>               Build wheels into <dir>, where the default is the current working directory.
# @option --no-binary <format_control>       Do not use binary packages.
# @option --only-binary <format_control>     Do not use source packages.
# @flag --prefer-binary                      Prefer binary packages over source packages, even if the source packages are newer.
# @flag --no-build-isolation                 Disable isolation when building a modern source distribution.
# @flag --use-pep517                         Use PEP 517 for building source distributions (use --no-use-pep517 to force legacy behaviour).
# @flag --check-build-dependencies           Check the build dependencies when PEP517 is used.
# @option -c --constraint <file>             Constrain versions using the given constraints file.
# @option -e --editable <path/url>           Install a project in editable mode (i.e.
# @option -r --requirement <file>            Install from the given requirements file.
# @option --src <dir>                        Directory to check out editable projects into.
# @flag --ignore-requires-python             Ignore the Requires-Python information.
# @flag --no-deps                            Don't install package dependencies.
# @option --progress-bar[off|on|ascii|pretty|emoji] <progress_bar>  Specify whether the progress bar should be used [on, off] (default: on)
# @flag --no-verify                          Don't verify if built wheel is valid.
# @option -C --config-settings <settings>    Configuration settings to be passed to the PEP 517 build backend.
# @option --build-option <options>           Extra arguments to be supplied to 'setup.py bdist_wheel'.
# @option --global-option <options>          Extra global options to be supplied to the setup.py call before the install or bdist_wheel command.
# @flag --pre                                Include pre-release and development versions.
# @flag --require-hashes                     Require a hash to check each requirement against, for repeatable installs.
# @flag --no-clean                           Don't clean up build directories.
# @option -i --index-url <url>               Base URL of the Python Package Index (default https://pypi.org/simple).
# @option --extra-index-url <url>            Extra URLs of package indexes to use in addition to --index-url.
# @flag --no-index                           Ignore package index (only looking at --find-links URLs instead).
# @option -f --find-links <url>              If a URL or path to an html file, then parse for links to archives such as sdist (.tar.gz) or wheel (.whl) files.
# @flag -h --help                            Show help.
# @flag --debug                              Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                           Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv                 Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>                  Run pip with the specified Python interpreter.
# @flag -v --verbose                         Give more output.
# @flag -V --version                         Show version and exit.
# @flag -q --quiet                           Give less output.
# @option --log <path>                       Path to a verbose appending log.
# @flag --no-input                           Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>                    Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>                Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>                    Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>          Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                      Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>               Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>                  Store the cache data in <dir>.
# @flag --no-cache-dir                       Disable the cache.
# @flag --disable-pip-version-check          Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                           Suppress colored output.
# @flag --no-python-version-warning          Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>            Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>         Enable deprecated functionality, that will be removed in the future.
wheel() {
    :;
}
# }} pip wheel

# {{ pip hash
# @cmd Compute hashes of package archives.
# @option -a --algorithm[sha256|sha384|sha512] <algorithm>  The hash algorithm to use: one of sha256, sha384, sha512
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
# @arg file+
hash() {
    :;
}
# }} pip hash

# {{ pip completion
# @cmd A helper command used for command completion.
# @flag -b --bash                       Emit completion code for bash
# @flag -z --zsh                        Emit completion code for zsh
# @flag -f --fish                       Emit completion code for fish
# @flag -p --powershell                 Emit completion code for powershell
# @flag -h --help                       Show help.
# @flag --debug                         Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                      Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv            Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>             Run pip with the specified Python interpreter.
# @flag -v --verbose                    Give more output.
# @flag -V --version                    Show version and exit.
# @flag -q --quiet                      Give less output.
# @option --log <path>                  Path to a verbose appending log.
# @flag --no-input                      Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>               Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>           Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>               Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>     Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                 Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>          Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>             Store the cache data in <dir>.
# @flag --no-cache-dir                  Disable the cache.
# @flag --disable-pip-version-check     Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                      Suppress colored output.
# @flag --no-python-version-warning     Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>       Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>    Enable deprecated functionality, that will be removed in the future.
completion() {
    :;
}
# }} pip completion

# {{ pip debug
# @cmd Show information useful for debugging.
# @option --platform <platform>                Only use wheels compatible with <platform>.
# @option --python-version <python_version>    The Python interpreter version to use for wheel and "Requires-Python" compatibility checks.
# @option --implementation[pp|jy|cp|ip] <implementation>  Only use wheels compatible with Python implementation <implementation>, e.g. 'pp', 'jy', 'cp',  or 'ip'.
# @option --abi <abi>                          Only use wheels compatible with Python abi <abi>, e.g. 'pypy_41'.
# @flag -h --help                              Show help.
# @flag --debug                                Let unhandled exceptions propagate outside the main subroutine, instead of logging them to stderr.
# @flag --isolated                             Run pip in an isolated mode, ignoring environment variables and user configuration.
# @flag --require-virtualenv                   Allow pip to only run in a virtual environment; exit with an error otherwise.
# @option --python <python>                    Run pip with the specified Python interpreter.
# @flag -v --verbose                           Give more output.
# @flag -V --version                           Show version and exit.
# @flag -q --quiet                             Give less output.
# @option --log <path>                         Path to a verbose appending log.
# @flag --no-input                             Disable prompting for input.
# @option --keyring-provider[disabled|import|subprocess] <keyring_provider>  Enable the credential lookup via the keyring library if user input is allowed.
# @option --proxy <proxy>                      Specify a proxy in the form scheme://[user:passwd@]proxy.server:port.
# @option --retries <retries>                  Maximum number of retries each connection should attempt (default 5 times).
# @option --timeout <sec>                      Set the socket timeout (default 15 seconds).
# @option --exists-action[`_choice_exists_action`] <action>  Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
# @option --trusted-host <hostname>            Mark this host or host:port pair as trusted, even though it does not have valid or any HTTPS.
# @option --cert <path>                        Path to PEM-encoded CA certificate bundle.
# @option --client-cert <path>                 Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
# @option --cache-dir <dir>                    Store the cache data in <dir>.
# @flag --no-cache-dir                         Disable the cache.
# @flag --disable-pip-version-check            Don't periodically check PyPI to determine whether a new version of pip is available for download.
# @flag --no-color                             Suppress colored output.
# @flag --no-python-version-warning            Silence deprecation warnings for upcoming unsupported Pythons.
# @option --use-feature <feature>              Enable new functionality, that may be backward incompatible.
# @option --use-deprecated <feature>           Enable deprecated functionality, that will be removed in the future.
debug() {
    :;
}
# }} pip debug

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_exists_action() {
    cat <<-'EOF'
s	switch
i	ignore
w	wipe
b	backup
a	abort
EOF
}

_choice_package() {
    pip list --format json | yq '.[] | .name + "	" + .version'
}

_choice_config_key() {
    pip config $(_argc_util_param_select_options --global --site --user) list | \
    gawk -F= '{gsub("\047", "", $2); print $1 "\t" $2}'
}

command eval "$(argc --argc-eval "$0" "$@")"