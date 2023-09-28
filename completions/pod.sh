#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --version       Show the version of the tool
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command

# {{ pod cache
# @cmd Manipulate the CocoaPods cache
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
cache() {
    :;
}

# {{{ pod cache clean
# @cmd Remove the cache for pods
# @flag --all           Remove all the cached pods without asking
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
cache::clean() {
    :;
}
# }}} pod cache clean

# {{{ pod cache list
# @cmd List the paths of pod caches for each known pod
# @flag --short         Only print the path relative to the cache root
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
cache::list() {
    :;
}
# }}} pod cache list
# }} pod cache

# {{ pod deintegrate
# @cmd Deintegrate CocoaPods from your project
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
# @arg xcode_project
deintegrate() {
    :;
}
# }} pod deintegrate

# {{ pod env
# @cmd Display pod environment
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
env() {
    :;
}
# }} pod env

# {{ pod init
# @cmd Generate a Podfile for the current directory
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg xcodeproj
init() {
    :;
}
# }} pod init

# {{ pod install
# @cmd Install project dependencies according to versions from a Podfile.lock
# @flag --repo-update                            Force running `pod repo update` before install
# @flag --deployment                             Disallow any changes to the Podfile or the Podfile.lock during installation
# @flag --clean-install                          Ignore the contents of the project cache and force a full pod installation.
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
install() {
    :;
}
# }} pod install

# {{ pod ipc
# @cmd Inter-process communication
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
ipc() {
    :;
}

# {{{ pod ipc list
# @cmd Lists the specifications known to CocoaPods
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
ipc::list() {
    :;
}
# }}} pod ipc list

# {{{ pod ipc podfile
# @cmd Converts a Podfile to YAML
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
# @arg path
ipc::podfile() {
    :;
}
# }}} pod ipc podfile

# {{{ pod ipc podfile-json
# @cmd Converts a Podfile to JSON
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
# @arg path
ipc::podfile-json() {
    :;
}
# }}} pod ipc podfile-json

# {{{ pod ipc repl
# @cmd The repl listens to commands on standard input
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
ipc::repl() {
    :;
}
# }}} pod ipc repl

# {{{ pod ipc spec
# @cmd Converts a podspec to JSON
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg path
ipc::spec() {
    :;
}
# }}} pod ipc spec

# {{{ pod ipc update-search-index
# @cmd Updates the search index
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
ipc::update-search-index() {
    :;
}
# }}} pod ipc update-search-index
# }} pod ipc

# {{ pod lib
# @cmd Develop pods
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
lib() {
    :;
}

# {{{ pod lib create
# @cmd Creates a new Pod
# @option --template-url <URL>    The URL of the git repo containing a compatible template
# @flag --allow-root              Allows CocoaPods to run as root
# @flag --silent                  Show nothing
# @flag --verbose                 Show more debugging information
# @flag --no-ansi                 Show output without ANSI codes
# @flag --help                    Show help banner of specified command
# @arg name
lib::create() {
    :;
}
# }}} pod lib create

# {{{ pod lib lint
# @cmd Validates a Pod
# @flag --quick                                 Lint skips checks that would require to download and build the spec
# @flag --allow-warnings                        Lint validates even if warnings are present
# @option --subspec <NAME>                      Lint validates only the given subspec
# @flag --no-subspecs                           Lint skips validation of subspecs
# @flag --no-clean                              Lint leaves the build directory intact for inspection
# @flag --fail-fast                             Lint stops on the first failing platform or subspec
# @flag --use-libraries                         Lint uses static libraries to install the spec
# @flag --use-modular-headers                   Lint uses modular headers during installation
# @flag --use-static-frameworks                 Lint uses static frameworks during installation
# @option --sources <https://cdn.cocoapods.org/>  The sources from which to pull dependent pods (defaults to https://cdn.cocoapods.org/).
# @option --platforms <ios,macos>               Lint against specific platforms (defaults to all platforms supported by the podspec).
# @flag --private                               Lint skips checks that apply only to public specs
# @option --swift-version <VERSION>             The `SWIFT_VERSION` that should be used to lint the spec.
# @option --include-podspecs <**/*.podspec>     Additional ancillary podspecs which are used for linting via :path
# @option --external-podspecs <**/*.podspec>    Additional ancillary podspecs which are used for linting via :podspec.
# @flag --skip-import-validation                Lint skips validating that the pod can be imported
# @flag --skip-tests                            Lint skips building and running tests during validation
# @option --test-specs <test-spec1,test-spec2,etc>  List of test specs to run
# @flag --analyze                               Validate with the Xcode Static Analysis tool
# @option --configuration                       Build using the given configuration (defaults to Release)
# @flag --validation-dir                        The directory to use for validation.
# @flag --allow-root                            Allows CocoaPods to run as root
# @flag --silent                                Show nothing
# @flag --verbose                               Show more debugging information
# @flag --no-ansi                               Show output without ANSI codes
# @flag --help                                  Show help banner of specified command
# @arg podspec_paths*
lib::lint() {
    :;
}
# }}} pod lib lint
# }} pod lib

# {{ pod list
# @cmd List pods
# @flag --update        Run `pod repo update` before listing
# @flag --stats         Show additional stats (like GitHub watchers and forks)
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
list() {
    :;
}
# }} pod list

# {{ pod outdated
# @cmd Show outdated project dependencies
# @flag --ignore-prerelease                      Don't consider prerelease versions to be updates
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --no-repo-update                         Skip running `pod repo update` before install
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
outdated() {
    :;
}
# }} pod outdated

# {{ pod plugins
# @cmd Show available CocoaPods plugins
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
plugins() {
    :;
}

# {{{ pod plugins create
# @cmd Creates a new plugin
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
# @arg template_url
plugins::create() {
    :;
}
# }}} pod plugins create

# {{{ pod plugins installed
# @cmd List plugins installed on your machine
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
plugins::installed() {
    :;
}
# }}} pod plugins installed

# {{{ pod plugins publish
# @cmd Request to add the plugin to the official plugins list
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
plugins::publish() {
    :;
}
# }}} pod plugins publish

# {{{ pod plugins search
# @cmd Search for known plugins
# @flag --full          Search by name, author, and description
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg query
plugins::search() {
    :;
}
# }}} pod plugins search
# }} pod plugins

# {{ pod repo
# @cmd Manage spec-repositories
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
repo() {
    :;
}

# {{{ pod repo add
# @cmd Add a spec repo
# @flag --progress      Show the progress of cloning the spec repository
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
# @arg url
# @arg branch
repo::add() {
    :;
}
# }}} pod repo add

# {{{ pod repo add-cdn
# @cmd Add a spec repo backed by a CDN
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
# @arg url
repo::add-cdn() {
    :;
}
# }}} pod repo add-cdn

# {{{ pod repo lint
# @cmd Validates all specs in a repo
# @flag --only-errors    Lint presents only the errors
# @flag --allow-root     Allows CocoaPods to run as root
# @flag --silent         Show nothing
# @flag --verbose        Show more debugging information
# @flag --no-ansi        Show output without ANSI codes
# @flag --help           Show help banner of specified command
# @arg name-directory <NAME|DIRECTORY>
repo::lint() {
    :;
}
# }}} pod repo lint

# {{{ pod repo push
# @cmd Push new specifications to a spec-repo
# @flag --allow-warnings               Allows pushing even if there are warnings
# @flag --use-libraries                Linter uses static libraries to install the spec
# @flag --use-modular-headers          Lint uses modular headers during installation
# @option --sources <https://cdn.cocoapods.org/>  The sources from which to pull dependent pods (defaults to all available repos).
# @flag --local-only                   Does not perform the step of pushing REPO to its remote
# @flag --no-private                   Lint includes checks that apply only to public repos
# @flag --skip-import-validation       Lint skips validating that the pod can be imported
# @flag --skip-tests                   Lint skips building and running tests during validation
# @option --commit-message <"Fix> <bug> <in> <pod">  Add custom commit message.
# @flag --use-json                     Convert the podspec to JSON before pushing it to the repo
# @option --swift-version <VERSION>    The `SWIFT_VERSION` that should be used when linting the spec.
# @flag --no-overwrite                 Disallow pushing that would overwrite an existing spec
# @flag --update-sources               Make sure sources are up-to-date before a push
# @flag --validation-dir               The directory to use for validation.
# @flag --allow-root                   Allows CocoaPods to run as root
# @flag --silent                       Show nothing
# @flag --verbose                      Show more debugging information
# @flag --no-ansi                      Show output without ANSI codes
# @flag --help                         Show help banner of specified command
# @arg repo
# @arg name-podspec <NAME.podspec>
repo::push() {
    :;
}
# }}} pod repo push

# {{{ pod repo remove
# @cmd Remove a spec repo
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
repo::remove() {
    :;
}
# }}} pod repo remove

# {{{ pod repo update
# @cmd Update a spec repo
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
repo::update() {
    :;
}
# }}} pod repo update
# }} pod repo

# {{ pod search
# @cmd Search for pods
# @flag --regex         Interpret the `QUERY` as a regular expression
# @flag --simple        Search only by name
# @flag --stats         Show additional stats (like GitHub watchers and forks)
# @flag --web           Searches on cocoapods.org
# @flag --ios           Restricts the search to Pods supported on iOS
# @flag --osx           Restricts the search to Pods supported on macOS
# @flag --watchos       Restricts the search to Pods supported on watchOS
# @flag --visionos      Restricts the search to Pods supported on visionOS
# @flag --tvos          Restricts the search to Pods supported on tvOS
# @flag --no-pager      Do not pipe search results into a pager
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg query
search() {
    :;
}
# }} pod search

# {{ pod setup
# @cmd Set up the CocoaPods environment
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
setup() {
    :;
}
# }} pod setup

# {{ pod spec
# @cmd Manage pod specs
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
spec() {
    :;
}

# {{{ pod spec cat
# @cmd Prints a spec file
# @flag --regex         Interpret the `QUERY` as a regular expression
# @flag --show-all      Pick from all versions of the given podspec
# @flag --version       Print a specific version of the given podspec
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg query
spec::cat_() {
    :;
}
# }}} pod spec cat

# {{{ pod spec create
# @cmd Create spec file stub.
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name-https-github-com-user-repo <NAME|https://github.com/USER/REPO>
spec::create() {
    :;
}
# }}} pod spec create

# {{{ pod spec edit
# @cmd Edit a spec file
# @flag --regex         Interpret the `QUERY` as a regular expression
# @flag --show-all      Pick from all versions of the given podspec
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg query
spec::edit() {
    :;
}
# }}} pod spec edit

# {{{ pod spec lint
# @cmd Validates a spec file
# @flag --quick                        Lint skips checks that would require to download and build the spec
# @flag --allow-warnings               Lint validates even if warnings are present
# @option --subspec <NAME>             Lint validates only the given subspec
# @flag --no-subspecs                  Lint skips validation of subspecs
# @flag --no-clean                     Lint leaves the build directory intact for inspection
# @flag --fail-fast                    Lint stops on the first failing platform or subspec
# @flag --use-libraries                Lint uses static libraries to install the spec
# @flag --use-modular-headers          Lint uses modular headers during installation
# @flag --use-static-frameworks        Lint uses static frameworks during installation
# @option --sources <https://cdn.cocoapods.org/>  The sources from which to pull dependent pods (defaults to https://cdn.cocoapods.org/).
# @option --platforms <ios,macos>      Lint against specific platforms (defaults to all platforms supported by the podspec).
# @flag --private                      Lint skips checks that apply only to public specs
# @option --swift-version <VERSION>    The `SWIFT_VERSION` that should be used to lint the spec.
# @flag --skip-import-validation       Lint skips validating that the pod can be imported
# @flag --skip-tests                   Lint skips building and running tests during validation
# @option --test-specs <test-spec1,test-spec2,etc>  List of test specs to run
# @flag --analyze                      Validate with the Xcode Static Analysis tool
# @option --configuration              Build using the given configuration (defaults to Release)
# @flag --validation-dir               The directory to use for validation.
# @flag --allow-root                   Allows CocoaPods to run as root
# @flag --silent                       Show nothing
# @flag --verbose                      Show more debugging information
# @flag --no-ansi                      Show output without ANSI codes
# @flag --help                         Show help banner of specified command
# @arg name-podspec-directory-http-path-name-podspec* <NAME.podspec|DIRECTORY|http://PATH/NAME.podspec>
spec::lint() {
    :;
}
# }}} pod spec lint

# {{{ pod spec which
# @cmd Prints the path of the given spec
# @flag --regex         Interpret the `QUERY` as a regular expression
# @flag --show-all      Print all versions of the given podspec
# @flag --version       Print a specific version of the given podspec
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg query
spec::which() {
    :;
}
# }}} pod spec which
# }} pod spec

# {{ pod trunk
# @cmd Interact with the CocoaPods API (e.g. publishing new specs)
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
trunk() {
    :;
}

# {{{ pod trunk add-owner
# @cmd Add an owner to a pod
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg pod
# @arg owner-email
trunk::add-owner() {
    :;
}
# }}} pod trunk add-owner

# {{{ pod trunk delete
# @cmd Deletes a version of a pod.
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
# @arg version
trunk::delete() {
    :;
}
# }}} pod trunk delete

# {{{ pod trunk deprecate
# @cmd Deprecates a pod.
# @option --in-favor-of <OTHER_NAME>    The pod to deprecate this pod in favor of.
# @flag --allow-root                    Allows CocoaPods to run as root
# @flag --silent                        Show nothing
# @flag --verbose                       Show more debugging information
# @flag --no-ansi                       Show output without ANSI codes
# @flag --help                          Show help banner of specified command
# @arg name
trunk::deprecate() {
    :;
}
# }}} pod trunk deprecate

# {{{ pod trunk info
# @cmd Returns information about a Pod.
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg name
trunk::info() {
    :;
}
# }}} pod trunk info

# {{{ pod trunk me
# @cmd Display information about your sessions
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
trunk::me() {
    :;
}

# {{{{ pod trunk me clean-sessions
# @cmd Remove sessions
# @flag --all           Removes all your sessions, except for the current one
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
trunk::me::clean-sessions() {
    :;
}
# }}}} pod trunk me clean-sessions
# }}} pod trunk me

# {{{ pod trunk push
# @cmd Publish a podspec
# @flag --allow-warnings               Allows push even if there are lint warnings
# @flag --use-libraries                Linter uses static libraries to install the spec
# @flag --use-modular-headers          Lint uses modular headers during installation
# @option --swift-version <VERSION>    The SWIFT_VERSION that should be used to lint the spec.
# @flag --skip-import-validation       Lint skips validating that the pod can be imported
# @flag --skip-tests                   Lint skips building and running tests during validation
# @flag --synchronous                  If validation depends on other recently pushed pods, synchronize
# @flag --allow-root                   Allows CocoaPods to run as root
# @flag --silent                       Show nothing
# @flag --verbose                      Show more debugging information
# @flag --no-ansi                      Show output without ANSI codes
# @flag --help                         Show help banner of specified command
# @arg path
trunk::push() {
    :;
}
# }}} pod trunk push

# {{{ pod trunk register
# @cmd Manage sessions
# @option --description    An arbitrary description to easily identify your session later on.
# @flag --allow-root       Allows CocoaPods to run as root
# @flag --silent           Show nothing
# @flag --verbose          Show more debugging information
# @flag --no-ansi          Show output without ANSI codes
# @flag --help             Show help banner of specified command
# @arg email
# @arg your_name
trunk::register() {
    :;
}
# }}} pod trunk register

# {{{ pod trunk remove-owner
# @cmd Remove an owner from a pod
# @flag --allow-root    Allows CocoaPods to run as root
# @flag --silent        Show nothing
# @flag --verbose       Show more debugging information
# @flag --no-ansi       Show output without ANSI codes
# @flag --help          Show help banner of specified command
# @arg pod
# @arg owner-email
trunk::remove-owner() {
    :;
}
# }}} pod trunk remove-owner
# }} pod trunk

# {{ pod try
# @cmd Try a Pod!
# @option --podspec_name <name>    The name of the podspec file within the Git Repository
# @flag --no-repo-update           Skip running `pod repo update` before install
# @flag --allow-root               Allows CocoaPods to run as root
# @flag --silent                   Show nothing
# @flag --verbose                  Show more debugging information
# @flag --no-ansi                  Show output without ANSI codes
# @flag --help                     Show help banner of specified command
# @arg name-url <NAME|URL>
try() {
    :;
}
# }} pod try

# {{ pod update
# @cmd Update outdated project dependencies and create new Podfile.lock
# @option --sources <https://cdn.cocoapods.org/>  The sources from which to update dependent pods.
# @option --exclude-pods <podName>               Pods to exclude during update.
# @flag --clean-install                          Ignore the contents of the project cache and force a full pod installation.
# @option --project-directory </project/dir/>    The path to the root of the project directory
# @flag --no-repo-update                         Skip running `pod repo update` before install
# @flag --allow-root                             Allows CocoaPods to run as root
# @flag --silent                                 Show nothing
# @flag --verbose                                Show more debugging information
# @flag --no-ansi                                Show output without ANSI codes
# @flag --help                                   Show help banner of specified command
# @arg pod_names*
update() {
    :;
}
# }} pod update

command eval "$(argc --argc-eval "$0" "$@")"