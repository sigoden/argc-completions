#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg task[`_choice_task`]

# {{ mix app.config
# @cmd Configures all registered apps
# @flag --force                      forces compilation regardless of compilation times
# @flag --preload-modules            preloads all modules defined in applications
# @flag --no-archives-check          does not check archives
# @flag --no-app-loading             does not load .app resource file after compilation
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-elixir-version-check    does not check Elixir version
# @flag --no-validate-compile-env    does not validate the application compile environment
app.config() {
    :;
}
# }} mix app.config

# {{ mix app.start
# @cmd Starts all registered apps
# @flag --force                      forces compilation regardless of compilation times
# @flag --temporary                  starts the application as temporary
# @flag --permanent                  starts the application as permanent
# @flag --preload-modules            preloads all modules defined in applications
# @flag --no-archives-check          does not check archives
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-elixir-version-check    does not check Elixir version
# @flag --no-start                   does not actually start applications, only compiles and loads code
app.start() {
    :;
}
# }} mix app.start

# {{ mix app.tree
# @cmd Prints the application tree
# @option --exclude* <app>              exclude applications which you do not want to see printed.
# @option --format[pretty|plain|dot]    Can be set to one of either:
app.tree() {
    :;
}
# }} mix app.tree

# {{ mix archive
# @cmd Lists installed archives
archive() {
    :;
}
# }} mix archive

# {{ mix archive.build
# @cmd Archives this project into a .ez file
# @option -o <path>            specifies output file name.
# @option -i <name>            specifies the input directory to archive.
# @flag --no-compile           skips compilation.
# @flag --include-dot-files    adds dot files from priv directory to the archive.
archive.build() {
    :;
}
# }} mix archive.build

# {{ mix archive.install
# @cmd Installs an archive locally
# @flag --sha512          checks the archive matches the given SHA-512 checksum.
# @flag --force           forces installation without a shell prompt; primarily intended for automation in build systems like Make
# @flag --submodules      fetches repository submodules before building archive from Git or GitHub
# @flag --app             specifies a custom app name to be used for building the archive from Git, GitHub, or Hex
# @flag --organization    set this for Hex private packages belonging to an organization
# @flag --repo            set this for self-hosted Hex instances, defaults to hexpm
archive.install() {
    :;
}
# }} mix archive.install

# {{ mix archive.uninstall
# @cmd Uninstalls archives
# @flag --force    forces uninstallation without a shell prompt; primarily intended for automation
archive.uninstall() {
    :;
}
# }} mix archive.uninstall

# {{ mix clean
# @cmd Deletes generated application files
clean() {
    :;
}
# }} mix clean

# {{ mix cmd
# @cmd Executes the given command
# @option --app* <name>    limit running the command to the given app.
# @option --cd <dir>       (since v1.10.4) the directory to run the command in
cmd() {
    :;
}
# }} mix cmd

# {{ mix compile
# @cmd Compiles source files
# @option --erl-config <path>          path to an Erlang term file that will be loaded as Mix config
# @flag --force                        forces compilation
# @flag --list                         lists all enabled compilers
# @flag --no-all-warnings              prints only warnings from files currently compiled (instead of all)
# @flag --no-app-loading               does not load .app resource file after compilation
# @flag --no-archives-check            skips checking of archives
# @flag --no-compile                   does not actually compile, only loads code and perform checks
# @flag --no-deps-check                skips checking of dependencies
# @flag --no-elixir-version-check      does not check Elixir version
# @flag --no-optional-deps             does not compile or load optional deps.
# @flag --no-prune-code-paths          do not prune code paths before compilation, this keeps the entirety of Erlang/OTP available on the project starts
# @flag --no-protocol-consolidation    skips protocol consolidation
# @flag --no-validate-compile-env      does not validate the application compile environment
# @flag --return-errors                returns error status and diagnostics instead of exiting on error
# @flag --warnings-as-errors           exit with non-zero status if compilation has one or more warnings
compile() {
    :;
}
# }} mix compile

# {{ mix deps
# @cmd Lists dependencies and their status
deps() {
    :;
}
# }} mix deps

# {{ mix deps.clean
# @cmd Deletes the given dependencies' files
# @flag --unlock    also unlocks the deleted dependencies
# @flag --build     deletes only compiled files
# @flag --all       deletes all dependencies
# @flag --unused    deletes only unused dependencies
# @arg dep*[`_choice_dependency`]
deps.clean() {
    :;
}
# }} mix deps.clean

# {{ mix deps.compile
# @cmd Compiles dependencies
# @flag --force                     force compilation of deps
# @flag --skip-umbrella-children    skips umbrella applications from compiling
# @flag --skip-local-deps           skips non-remote dependencies, such as path deps, from compiling
deps.compile() {
    :;
}
# }} mix deps.compile

# {{ mix deps.get
# @cmd Gets all out of date dependencies
# @flag --check-locked         raises if there are pending changes to the lockfile
# @flag --no-archives-check    does not check archives before fetching deps
# @flag --only                 only fetches dependencies for given environment
deps.get() {
    :;
}
# }} mix deps.get

# {{ mix deps.tree
# @cmd Prints the dependency tree
# @option --only <value>                      the environment to show dependencies for
# @option --target <value>                    the target to show dependencies for
# @option --exclude*[`_choice_dependency`]    exclude dependencies which you do not want to see printed.
# @option --format[pretty|plain|dot]          Can be set to one of either:
deps.tree() {
    :;
}
# }} mix deps.tree

# {{ mix deps.unlock
# @cmd Unlocks the given dependencies
# @flag --all                  unlocks all dependencies
# @option --filter <filter>    unlocks only deps matching the given name
# @flag --unused               unlocks only unused dependencies
# @flag --check-unused         checks that the mix.lock file has no unused dependencies
# @arg dep*[`_choice_dependency`]
deps.unlock() {
    :;
}
# }} mix deps.unlock

# {{ mix deps.update
# @cmd Updates the given dependencies
# @flag --all                  updates all dependencies
# @option --only <value>       only fetches dependencies for given environment
# @option --target <value>     only fetches dependencies for given target
# @flag --no-archives-check    does not check archives before fetching deps
# @arg dep*[`_choice_dependency`]
deps.update() {
    :;
}
# }} mix deps.update

# {{ mix do
# @cmd Executes the tasks separated by plus
# @option --app* <value>    limit recursive tasks to the given apps.
do_() {
    :;
}
# }} mix do

# {{ mix escript
# @cmd Lists installed escripts
escript() {
    :;
}
# }} mix escript

# {{ mix escript.build
# @cmd Builds an escript for the project
escript.build() {
    :;
}
# }} mix escript.build

# {{ mix escript.install
# @cmd Installs an escript locally
# @flag --sha512                  checks the escript matches the given SHA-512 checksum.
# @flag --force                   forces installation without a shell prompt; primarily intended for automation in build systems like Make
# @flag --submodules              fetches repository submodules before building escript from Git or GitHub
# @option --app <name>            specifies a custom app name to be used for building the escript from Git, GitHub, or Hex
# @option --organization <org>    set this for Hex private packages belonging to an organization
# @option --repo <repo>           set this for self-hosted Hex instances, defaults to hexpm
escript.install() {
    :;
}
# }} mix escript.install

# {{ mix escript.uninstall
# @cmd Uninstalls escripts
# @flag --force    forces uninstallation without a shell prompt; primarily intended for automation
escript.uninstall() {
    :;
}
# }} mix escript.uninstall

# {{ mix eval
# @cmd Evaluates the given code
# @flag --no-archives-check          does not check archives
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-elixir-version-check    does not check the Elixir version from mix.exs
# @flag --no-mix-exs                 allows the command to run even if there is no mix.exs
eval_() {
    :;
}
# }} mix eval

# {{ mix format
# @cmd Formats the given files/patterns
# @flag --check-formatted             checks that the file is already formatted.
# @flag --no-exit                     only valid when used with --check-formatted.
# @flag --dry-run                     does not save files after formatting.
# @option --dot-formatter <path>      path to the file with formatter configuration.
# @option --stdin-filename <value>    path to the file being formatted on stdin.
format() {
    :;
}
# }} mix format

# {{ mix hex
# @cmd Prints Hex help information
hex() {
    :;
}
# }} mix hex

# {{ mix hex.audit
# @cmd Shows retired Hex deps for the current project
hex.audit() {
    :;
}
# }} mix hex.audit

# {{ mix hex.build
# @cmd Builds a new package version locally
# @flag --unpack                Builds the tarball and unpacks contents into a directory.
# @option -o --output <path>    Sets output path.
hex.build() {
    :;
}
# }} mix hex.build

# {{ mix hex.config
# @cmd Reads, updates or deletes local Hex config
# @option --delete <value>    Remove a specific config key
hex.config() {
    :;
}
# }} mix hex.config

# {{ mix hex.docs
# @cmd Fetches or opens documentation of a package
# @option --module <Some.Module>    Open a specified module documentation page inside desired package
# @option --organization            Set this for private packages belonging to an organization
# @flag --latest                    Looks for the latest release of a package
# @option --format <epub>           When opening documentation offline, use this flag to open the epub formatted version
hex.docs() {
    :;
}
# }} mix hex.docs

# {{ mix hex.info
# @cmd Prints Hex information
# @option --organization    Set this for private packages belonging to an organization
hex.info() {
    :;
}
# }} mix hex.info

# {{ mix hex.organization
# @cmd Manages Hex.pm organizations
# @option --key                    Hash of key used to authenticate HTTP requests to repository, if omitted will generate a new key with your account credentials.
# @option --key-name <KEY_NAME>    By default Hex will base the key name on your machine's hostname and the organization name, use this option to give your own name.
# @option --permission             Sets the permissions on the key, this option can be given multiple times, possibly values are:
hex.organization() {
    :;
}
# }} mix hex.organization

# {{ mix hex.outdated
# @cmd Shows outdated Hex deps for the current project
# @flag --all                    shows all outdated packages, including children of packages defined in `mix.exs`
# @flag --pre                    include pre-releases when checking for newer versions
# @flag --within-requirements    exit with non-zero code only if requirements specified in `mix.exs` is met.
hex.outdated() {
    :;
}
# }} mix hex.outdated

# {{ mix hex.owner
# @cmd Manages Hex package ownership
# @option --level[maintainer|full] <maintainer>    Maintainer level owners have all the powers of package ownership, except they cannot add or remove other package owners
# @option --organization                           Set this for private packages belonging to an organization
hex.owner() {
    :;
}
# }} mix hex.owner

# {{ mix hex.package
# @cmd Fetches or diffs packages
# @flag --unpack                Unpacks the tarball after fetching it
# @option -o --output <path>    Sets output path.
# @option --organization        Set this for private packages belonging to an organization
# @option --repo                Set this for self-hosted Hex instances, default: `hexpm`
hex.package() {
    :;
}
# }} mix hex.package

# {{ mix hex.publish
# @cmd Publishes a new package version
# @option --organization        Set this for private packages belonging to an organization
# @flag --yes                   Publishes the package without any confirmation prompts
# @flag --dry-run               Builds package and performs local checks without publishing, use `mix hex.build --unpack` to inspect package contents before publishing
# @flag --replace               Allows overwriting an existing package version if it exists.
# @option --revert <VERSION>    Revert given version.
hex.publish() {
    :;
}
# }} mix hex.publish

# {{ mix hex.registry
# @cmd Manages local Hex registries
# @option --name <value>          The name of the registry
# @option --private-key <path>    Path to the private key
hex.registry() {
    :;
}
# }} mix hex.registry

# {{ mix hex.repo
# @cmd Manages Hex repositories
# @option --public-key <PATH>                 Path to public key used to verify the registry (optional).
# @option --auth-key <KEY>                    Key used to authenticate HTTP requests to repository (optional).
# @option --fetch-public-key <FINGERPRINT>    Download public key from the repository and verify against the fingerprint (optional).
hex.repo() {
    :;
}
# }} mix hex.repo

# {{ mix hex.retire
# @cmd Retires a package version
# @option --message <"MESSAGE">    Required message (up to 140 characters) clarifying the retirement reason
# @option --organization           Set this for private packages belonging to an organization
hex.retire() {
    :;
}
# }} mix hex.retire

# {{ mix hex.search
# @cmd Searches for package names
# @option --organization    Set this for private packages belonging to an organization
hex.search() {
    :;
}
# }} mix hex.search

# {{ mix hex.sponsor
# @cmd Show Hex packages accepting sponsorships
hex.sponsor() {
    :;
}
# }} mix hex.sponsor

# {{ mix hex.user
# @cmd Manages your Hex user account
# @option --key-name <KEY_NAME>    By default Hex will base the key name on your machine's hostname, use this option to give your own name.
# @option --permission             Sets the permissions on the key, this option can be given multiple times, possible values are:
hex.user() {
    :;
}
# }} mix hex.user

# {{ mix loadconfig
# @cmd Loads and persists the given configuration
loadconfig() {
    :;
}
# }} mix loadconfig

# {{ mix local
# @cmd Lists tasks installed locally via archives
local() {
    :;
}
# }} mix local

# {{ mix local.hex
# @cmd Installs Hex locally
# @flag --force         forces installation without a shell prompt; primarily intended for automation in build systems like `make`
# @flag --if-missing    performs installation only if Hex is not installed yet; intended to avoid repeatedly reinstalling Hex in automation when a script may be run multiple times
local.hex() {
    :;
}
# }} mix local.hex

# {{ mix local.phx
# @cmd Updates the Phoenix project generator locally
local.phx() {
    :;
}
# }} mix local.phx

# {{ mix local.public_keys
# @cmd Manages public keys
# @flag --force    forces installation without a shell prompt; primarily intended for automation in build systems like `make`
local.public_keys() {
    :;
}
# }} mix local.public_keys

# {{ mix local.rebar
# @cmd Installs Rebar locally
# @flag --sha512        checks the Rebar script matches the given SHA-512 checksum
# @flag --force         forces installation without a shell prompt; primarily intended for automation in build systems like `make`
# @flag --if-missing    performs installation only if not installed yet; intended to avoid repeatedly reinstalling in automation when a script may be run multiple times
local.rebar() {
    :;
}
# }} mix local.rebar

# {{ mix new
# @cmd Creates a new Elixir project
# @option --app <name>        set app name.
# @option --module <value>    set module name.
# @flag --sub                 generate an OTP application skeleton including a supervision tree.
# @flag --umbrella            generate an umbrella project.
new() {
    :;
}
# }} mix new

# {{ mix phx.new
# @cmd Creates a new Phoenix v1.7.10 application
# @flag --umbrella               generate an umbrella project, with one application for your domain, and a second application for the web interface.
# @option --app <name>           the name of the OTP application
# @option --module <name>        the name of the base module in the generated skeleton
# @option --database[postgres|mysql|mssql|sqlite3]  specify the database adapter for Ecto.
# @flag --adapter                specify the http adapter.
# @flag --no-assets              equivalent to --no-esbuild and --no-tailwind
# @flag --no-dashboard           do not include Phoenix.LiveDashboard
# @flag --no-ecto                do not generate Ecto files
# @flag --no-esbuild             do not include esbuild dependencies and assets.
# @flag --no-gettext             do not generate gettext files
# @flag --no-html                do not generate HTML views
# @flag --no-live                comment out LiveView socket setup in assets/js/app.js.
# @flag --no-mailer              do not generate Swoosh mailer files
# @flag --no-tailwind            do not include tailwind dependencies and assets.
# @option --binary-id <value>    use binary_id as primary key type in Ecto schemas
# @flag --verbose                use verbose output
# @flag -v --version             prints the Phoenix installer version
phx.new() {
    :;
}
# }} mix phx.new

# {{ mix phx.new.ecto
# @cmd Creates a new Ecto project within an umbrella project
# @option --app <name>           the name of the OTP application
# @option --module <name>        the name of the base module in the generated skeleton
# @option --database[postgres|mysql|mssql|sqlite3]  specify the database adapter for Ecto.
# @option --binary-id <value>    use binary_id as primary key type in Ecto schemas
phx.new.ecto() {
    :;
}
# }} mix phx.new.ecto

# {{ mix phx.new.web
# @cmd Creates a new Phoenix web project within an umbrella project
phx.new.web() {
    :;
}
# }} mix phx.new.web

# {{ mix profile.cprof
# @cmd Profiles the given file or expression with cprof
# @option --matching <pattern>       only profile calls matching the given `Module.function/arity` pattern
# @option --limit <n>                filters out any results with a call count less than the limit
# @option --module <name>            filters out any results not pertaining to the given module
# @option -e --eval <code>           evaluate the given code
# @flag -r --require                 requires pattern before running the command
# @flag -p --parallel                makes all requires parallel
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-archives-check          does not check archives
# @flag --no-halt                    does not halt the system after running the command
# @flag --no-start                   does not start applications after compilation
# @flag --no-elixir-version-check    does not check the Elixir version from mix.exs
profile.cprof() {
    :;
}
# }} mix profile.cprof

# {{ mix profile.eprof
# @cmd Profiles the given file or expression with eprof
# @flag --matching                   only profile calls matching the given `Module.function/arity` pattern
# @flag --calls                      filters out any results with a call count lower than this
# @flag --time                       filters out any results that took lower than specified (in µs)
# @flag --sort                       sorts the results by time or calls (default: time)
# @flag -e --eval                    evaluates the given code
# @flag -r --require                 requires pattern before running the command
# @flag -p --parallel                makes all requires parallel
# @flag --no-warmup                  skips the warmup step before profiling
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-archives-check          does not check archives
# @flag --no-halt                    does not halt the system after running the command
# @flag --no-start                   does not start applications after compilation
# @flag --no-elixir-version-check    does not check the Elixir version from mix.exs
profile.eprof() {
    :;
}
# }} mix profile.eprof

# {{ mix profile.fprof
# @cmd Profiles the given file or expression with fprof
# @flag --callers                    prints detailed information about immediate callers and called functions
# @flag --details                    includes profile data for each profiled process
# @option --sort[acc|own] <key>      sorts the output by given key: acc (default) or own
# @option --trace-to-file <file>     uses a file to trace.
# @option -e --eval <code>           evaluates the given code
# @option -r --require <file>        requires pattern before running the command
# @flag -p --parallel                makes all requires parallel
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-archives-check          does not check archives
# @flag --no-start                   does not start applications after compilation
# @flag --no-elixir-version-check    does not check the Elixir version from mix.exs
# @flag --no-warmup                  does not execute code once before profiling
profile.fprof() {
    :;
}
# }} mix profile.fprof

# {{ mix release
# @cmd Assembles a self-contained release
# @flag --force                      forces recompilation
# @flag --no-archives-check          does not check archive
# @flag --no-deps-check              does not check dependencies
# @flag --no-elixir-version-check    does not check Elixir version
# @flag --no-compile                 does not compile before assembling the release
# @flag --overwrite                  if there is an existing release version, overwrite it
# @option --path <path>              the path of the release
# @flag --quiet                      does not write progress to the standard output
# @option --version <value>          the version of the release
release() {
    :;
}
# }} mix release

# {{ mix release.init
# @cmd Generates sample files for releases
release.init() {
    :;
}
# }} mix release.init

# {{ mix run
# @cmd Runs the current application
# @option -e --eval <code>           evaluates the given code
# @option -r --require <file>        executes the given pattern/file
# @flag -p --parallel                makes all requires parallel
# @flag --preload-modules            preloads all modules defined in applications
# @flag --no-archives-check          does not check archives
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-elixir-version-check    does not check the Elixir version from mix.exs
# @flag --no-halt                    does not halt the system after running the command
# @flag --no-mix-exs                 allows the command to run even if there is no mix.exs
# @flag --no-start                   does not start applications after compilation
run() {
    :;
}
# }} mix run

# {{ mix test
# @cmd Runs a project's tests
# @flag --color                       enables color in the output
# @option --cover <value>             runs coverage tool.
# @flag --exclude                     excludes tests that match the filter
# @option --exit-status <n>           use an alternate exit status to use when the test suite fails (default is 2).
# @flag --export-coverage             the name of the file to export coverage results to.
# @flag --failed                      runs only tests that failed the last time they ran
# @flag --force                       forces compilation regardless of modification times
# @option --formatter <value>         sets the formatter module that will print the results.
# @option --include* <value>          includes tests that match the filter
# @flag --listen-on-stdin             runs tests, and then listens on stdin.
# @option --max-cases <n>             sets the maximum number of tests running asynchronously.
# @option --max-failures <n>          the suite stops evaluating tests when this number of test failures is reached.
# @flag --no-all-warnings             prints only warnings from files currently compiled (instead of all)
# @flag --no-archives-check           does not check archives
# @flag --no-color                    disables color in the output
# @flag --no-compile                  does not compile, even if files require compilation
# @flag --no-deps-check               does not check dependencies
# @flag --no-elixir-version-check     does not check the Elixir version from `mix.exs`
# @flag --no-start                    does not start applications after compilation
# @flag --only                        runs only tests that match the filter
# @option --partitions <n>            sets the amount of partitions to split tests in.
# @flag --preload-modules             preloads all modules defined in applications
# @option --profile-require <time>    profiles the time spent to require test files.
# @flag --raise                       raises if the test suite failed
# @option --seed <n>                  seeds the random number generator used to randomize the order of tests; `--seed 0` disables randomization so the tests in a single file will always be ran in the same order they were defined in
# @flag --slowest                     prints timing information for the N slowest tests.
# @flag --stale                       runs only tests which reference modules that changed since the last time tests were ran with `--stale`.
# @option --timeout <n>               sets the timeout for the tests
# @flag --trace                       runs tests with detailed reporting.
# @flag --warnings-as-errors          (since v1.12.0) treats warnings as errors and returns a non-zero exit status.
test() {
    :;
}
# }} mix test

# {{ mix test.coverage
# @cmd Build report from exported test coverage
test.coverage() {
    :;
}
# }} mix test.coverage

# {{ mix xref
# @cmd Prints cross reference information
# @flag --fail-above                 generates a failure if the relevant metric is above the given threshold.
# @flag --include-siblings           includes dependencies that have :in_umbrella set to true in the current project in the reports.
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check dependencies
# @flag --no-archives-check          does not check archives
# @flag --no-elixir-version-check    does not check the Elixir version from mix.exs
xref() {
    :;
}
# }} mix xref

# {{ mix compile.app
# @cmd
# @flag --force                    forces compilation regardless of modification times
# @option --compile-path <path>    where to find .beam files and write the resulting .app file
compile.app() {
    :;
}
# }} mix compile.app

# {{ mix compile.elixir
# @cmd
# @flag --docs                                attaches (or not) documentation to compiled modules
# @flag --no-docs                             attaches (or not) documentation to compiled modules
# @flag --debug-info                          attaches (or not) debug info to compiled modules
# @flag --no-debug-info                       attaches (or not) debug info to compiled modules
# @flag --force                               forces compilation regardless of modification times
# @flag --ignore-module-conflict              does not emit warnings if a module was previously defined
# @option --long-compilation-threshold <N>    sets the "long compilation" threshold (in seconds) to N (see the docs for Kernel.ParallelCompiler.compile/2)
# @option --purge-consolidation-path-if-stale <PATH>  deletes and purges modules in the given protocol consolidation path if compilation is required
# @flag --profile                             if set to time, outputs timing information of compilation steps
# @flag --tracer                              adds a compiler tracer in addition to any specified in the mix.exs file
# @flag --verbose                             prints each file being compiled
# @flag --warnings-as-errors                  treats warnings in the current project as errors and return a non-zero exit status
compile.elixir() {
    :;
}
# }} mix compile.elixir

# {{ mix compile.erlang
# @cmd
# @flag --force              forces compilation regardless of modification times
# @flag --no-all-warnings    prints only warnings from files currently compiled (instead of all)
compile.erlang() {
    :;
}
# }} mix compile.erlang

# {{ mix compile.leex
# @cmd
# @flag --force              forces compilation regardless of modification times
# @flag --no-all-warnings    prints only warnings from files currently compiled (instead of all)
compile.leex() {
    :;
}
# }} mix compile.leex

# {{ mix compile.protocols
# @cmd
compile.protocols() {
    :;
}
# }} mix compile.protocols

# {{ mix compile.yecc
# @cmd
# @flag --force              forces compilation regardless of modification times
# @flag --no-all-warnings    prints only warnings from files currently compiled (instead of all)
compile.yecc() {
    :;
}
# }} mix compile.yecc

# {{ mix deps.loadpaths
# @cmd
# @flag --no-archives-check          does not check archives
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check or compile deps, only load available ones
# @flag --no-elixir-version-check    does not check Elixir version
# @flag --no-optional-deps           does not compile or load optional deps
deps.loadpaths() {
    :;
}
# }} mix deps.loadpaths

# {{ mix deps.precompile
# @cmd
deps.precompile() {
    :;
}
# }} mix deps.precompile

# {{ mix iex
# @cmd
iex() {
    :;
}
# }} mix iex

# {{ mix loadpaths
# @cmd
# @flag --no-archives-check          does not check archives
# @flag --no-compile                 does not compile even if files require compilation
# @flag --no-deps-check              does not check or compile deps, only load available ones
# @flag --no-elixir-version-check    does not check Elixir version
# @flag --no-optional-deps           does not compile or load optional deps
loadpaths() {
    :;
}
# }} mix loadpaths

# {{ mix phx
# @cmd
phx() {
    :;
}
# }} mix phx

# {{ mix phx.digest
# @cmd
phx.digest() {
    :;
}
# }} mix phx.digest

# {{ mix phx.digest.clean
# @cmd
# @option -o --output <path>    indicates the path to your compiled assets directory.
# @option --age <secs>          specifies a maximum age (in seconds) for assets.
# @option --keep <n>            specifies how many previous versions of assets to keep.
# @flag --all                   specifies that all compiled assets (including the manifest) will be removed.
phx.digest.clean() {
    :;
}
# }} mix phx.digest.clean

# {{ mix phx.gen
# @cmd
phx.gen() {
    :;
}
# }} mix phx.gen

# {{ mix phx.gen.auth
# @cmd
# @option --hashing-lib[bcrypt|pbkdf2|argon2]    select hashing mechanism.
# @option --binary-id <value>                    use binary_id for its primary key and foreign keys.
# @flag --no-binary-id                           use normal ids despite the default configuration.
# @option --web <name>                           customize the web module namespace
# @option --table <name>                         custom table name
phx.gen.auth() {
    :;
}
# }} mix phx.gen.auth

# {{ mix phx.gen.cert
# @cmd
# @option -o --output <path>    the path and base filename for the certificate and key
# @option -n --name <name>      the Common Name value in certificate's subject
phx.gen.cert() {
    :;
}
# }} mix phx.gen.cert

# {{ mix phx.gen.channel
# @cmd
phx.gen.channel() {
    :;
}
# }} mix phx.gen.channel

# {{ mix phx.gen.context
# @cmd
phx.gen.context() {
    :;
}
# }} mix phx.gen.context

# {{ mix phx.gen.embedded
# @cmd
phx.gen.embedded() {
    :;
}
# }} mix phx.gen.embedded

# {{ mix phx.gen.html
# @cmd
# @option --context-app <value>    set context_app
# @option --web <name>             customize the web module namespace
# @flag --no-context
# @flag --no-schema
phx.gen.html() {
    :;
}
# }} mix phx.gen.html

# {{ mix phx.gen.json
# @cmd
# @option --context-app <value>    set context_app
# @option --web <name>             customize the web module namespace
# @flag --no-context
# @flag --no-schema
phx.gen.json() {
    :;
}
# }} mix phx.gen.json

# {{ mix phx.gen.live
# @cmd
# @option --context-app <value>    set context_app
# @option --web <name>             customize the web module namespace
# @flag --no-context
# @flag --no-schema
phx.gen.live() {
    :;
}
# }} mix phx.gen.live

# {{ mix phx.gen.notifier
# @cmd
# @option --context-app <value>    set context_app
phx.gen.notifier() {
    :;
}
# }} mix phx.gen.notifier

# {{ mix phx.gen.presence
# @cmd
phx.gen.presence() {
    :;
}
# }} mix phx.gen.presence

# {{ mix phx.gen.release
# @cmd
# @flag --docker    Generate docker files
phx.gen.release() {
    :;
}
# }} mix phx.gen.release

# {{ mix phx.gen.schema
# @cmd
# @flag --no-migration
# @flag --migration
# @option --context-app <value>    set context_app
# @option --table <name>           custom table name
# @option --binary-id <value>      use binary_id for its primary key and foreign keys.
# @flag --no-binary-id             use normal ids despite the default configuration.
# @option --prefix <value>         set schema prefix
phx.gen.schema() {
    :;
}
# }} mix phx.gen.schema

# {{ mix phx.gen.secret
# @cmd
phx.gen.secret() {
    :;
}
# }} mix phx.gen.secret

# {{ mix phx.gen.socket
# @cmd
phx.gen.socket() {
    :;
}
# }} mix phx.gen.socket

# {{ mix phx.routes
# @cmd
# @option --info <value>    locate the controller function definition called by the given url
phx.routes() {
    :;
}
# }} mix phx.routes

# {{ mix phx.server
# @cmd
# @flag --no-compile
# @flag --no-deps-check
# @flag --open    open browser window for each started endpoint
phx.server() {
    :;
}
# }} mix phx.server

_choice_task() {
    mix help | sed -n 's/mix \(\S\+\)\s*# \(.*\)$/\1\t\2/p'
}

_choice_dependency() {
    mix deps.get | sed -n 's/^  \(\S\+\) .*$/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"