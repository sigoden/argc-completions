#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                                         Ignored for compatibility.
# @flag -b                                         Ignored for compatibility.
# @option -C --directory                           Change to DIRECTORY before doing anything.
# @option -d --diff <file> <file>                  Compare two files with each other.
# @option -f <FILE>                                Read FILE as a makefile.
# @option --file <FILE>                            Read FILE as a makefile.
# @option --makefile <FILE>                        Read FILE as a makefile.
# @flag -H --no-highlight                          Disable syntax highlighting.
# @option -m --model                               Choose a model.
# @option -l <N>                                   Don't start multiple jobs unless load is below N.
# @option --load-average <N>                       Don't start multiple jobs unless load is below N.
# @option --max-load <N>                           Don't start multiple jobs unless load is below N.
# @flag -n                                         Don't actually run any recipe; just print them.
# @flag --just-print                               Don't actually run any recipe; just print them.
# @flag --dry-run                                  Don't actually run any recipe; just print them.
# @flag --recon                                    Don't actually run any recipe; just print them.
# @option -O --output-sync <TYPE>                  Synchronize output of parallel jobs by TYPE.
# @option -p --package <SPEC>                      Package to modify
# @option -w --workdir                             Working directory inside the container
# @option -x --proxy <[protocol://]host[:port]>    Use this proxy
# @flag -v --verbose*                              Use verbose output (-vv very verbose/build.rs output)
# @flag -. --hidden                                Search hidden files and directories.
# @flag -# --progress-bar                          Display transfer progress as a bar
# @option --debug <FLAGS>                          Print various types of debugging information.
# @option --with-commit* <MSG>                     Sets custom commit messages to include in the changelog
# @option --alt-svc <file name>                    Enable alt-svc with this cache file
# @option --mutex <<type>[:specifier]>             use a mutex to ensure only one yarn instance is executing
# @option --ciphers <list of ciphers>              SSL ciphers to use
# @option --resolve <[+]host:port:addr[,addr]...>  Resolve the host+port to this address
# @option --ftp-ssl-ccc-mode <active/passive>      Set CCC mode
# @flag -nc                                        skip downloads that would download to
# @flag --no-clobber                               skip downloads that would download to
# @option --stop-at <y-m-dTh:m>                    Stop rsync at the specified point in time
# @flag --color                                    Controls colors in the output.
# @flag --no-color                                 Controls colors in the output.
# @flag --http1.1                                  Use HTTP 1.1
# @option --filter1 <selector>
# @option --filter2* <pattern>                     Includes all direct and indirect dependencies of the matched packages.
# @option --packages* <packages>                   Packages to inspect for updates
# @option --show-scope[worktree|local|global|system|command]  show scope of config
# @option --edition[2015|2018|2021] <YEAR>         Edition to set for the crate generated
# @option --set-color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option -I <pkcs11>                              Specify the PKCS#11 shared library ssh should use to communicate with a PKCS#11 token providing keys for user authentication.
# @option --jobs <N>                               Number of parallel jobs, defaults to ♯ of CPUs
# @flag --bun                                      Force a script or package to use Bun.js instead of Node.js (via symlinking node)
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @option --progress[auto|plain|tty] <string>      Set type of progress output.
# @option --ansi[never|always|auto] <string>       Control when to print ANSI control characters
# @option --ignored[traditional|matching|no]       Show ignored files, optional modes: traditional, matching, no.
# @option --driver[docker-container|kubernetes|remote] <string>  Driver to use
# @option --exclude* <regex>                       Exclude source files from the report [default: test\.(js|mjs|ts|jsx|tsx)$]
# @option --backend[hardlink|symlink|copyfile] <STR>  Platform-specific optimizations for installing dependencies.
# @flag --container-cap-add                        stringArray kernel capabilities to add to the workflow containers (e.g. --container-cap-add SYS_PTRACE)
# @option --since <string>                         Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
# @option --loader*[js|jsx|ts|tsx|json|toml|text|file|wasm|napi] <STR>  Parse files with .ext:loader, e.g. --loader .js:jsx.
# @option --allow <strings>                        Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
# @option --input-format[auto|a|yaml|y|props|p|xml|x|tsv|t|csv|c|toml] <string>  parse format for input.
# @option -r --reload* <CACHE_BLOCKLIST>           Reload source code cache (recompile TypeScript)
# @option -coverpkg <pattern1,pattern2,pattern3>   For a build that targets package 'main'
# @option --cgroupns <string>                      Cgroup namespace to use (host|private)
# @flag --connection                               Requests compression of all data (including stdin, stdout, stderr, and data for forwarded X11, TCP and UNIX-domain connections).
# @option --sanitizer[address|leak|memory|thread|none]  Use a specific sanitizer
# @flag --unknown
# @option -pkgdir <dir>                            install and load all packages from dir instead of the usual locations.
# @option -ldflags <[pattern=]arg list>            arguments to pass on each go tool link invocation.
# @flag --incremental                              show blame entries as we find them, incrementally
# @flag --line-porcelain                           show porcelain format with per-line commit information
# @arg ARG1!
# @arg ARG2+
# @arg ARG3
# @arg ARG4*
# @arg ARG5*
# @arg deployed-project-name!
# @arg branch-tag!
# @arg arg8*
# @arg repository
# @arg pathspecs*
# @arg tarball-dir <<tarball>|<dir>>
# @arg mbox-Maildir* <<mbox> | <Maildir>>
# @arg tarball-file!
# @arg ARG9*
# @arg rustfmt_options*


# {{ __test run
# @cmd Run a binary or example of the local package
run() {
    :;
}
# }} __test run

# {{ __test build
# @cmd Compile the current package
# @alias b
build() {
    :;
}
# }} __test build

# {{ __test test
# @cmd Run the tests
# @alias t
test() {
    :;
}
# }} __test test

# {{ __test cmd1
# @cmd
cmd1() {
    :;
}
# }} __test cmd1

# {{ __test cmd2
# @cmd Compare two commit ranges (e.g. two versions of a branch)
# @arg pattern!
# @arg rev*
# @arg path*
cmd2() {
    :;
}
# }} __test cmd2

# {{ __test cmd3
# @cmd
# @arg CONTAINER*
cmd3() {
    :;
}
# }} __test cmd3

# {{ __test cmd4
# @cmd
# @alias c
# @arg value[foo|bar|baz]
cmd4() {
    :;
}
# }} __test cmd4

# {{ __test cmd5
# @cmd
# @alias d
# @arg source_file
# @arg filter    Dot separated path to symbol
cmd5() {
    :;
}
# }} __test cmd5

# {{ __test bug
# @cmd start a bug report
bug() {
    :;
}
# }} __test bug

# {{ __test mod
# @cmd module maintenance
mod() {
    :;
}
# }} __test mod

# {{ __test add
# @cmd Installs a package and any packages that it depends on.
add() {
    :;
}
# }} __test add

# {{ __test import
# @cmd Generates a pnpm-lock.yaml from an npm package-lock.json (or npm-shrinkwrap.json) file
import() {
    :;
}
# }} __test import

# {{ __test install
# @cmd Install all dependencies for a project
# @alias i
install() {
    :;
}
# }} __test install

# {{ __test install-test
# @cmd Runs a pnpm install followed immediately by a pnpm test
# @alias it
install-test() {
    :;
}
# }} __test install-test

# {{ __test link
# @cmd Connect the local project to another one
# @alias ln
link() {
    :;
}
# }} __test link

# {{ __test compile
# @cmd UNSTABLE: Compile the script into a self contained executable
compile() {
    :;
}
# }} __test compile

# {{ __test completions
# @cmd Generate shell completions
completions() {
    :;
}
# }} __test completions

# {{ __test coverage
# @cmd Print coverage reports
coverage() {
    :;
}
# }} __test coverage

# {{ __test pack
# @cmd
pack() {
    :;
}
# }} __test pack

# {{ __test publish
# @cmd Publishes a package to the registry
publish() {
    :;
}
# }} __test publish

# {{ __test list-units
# @cmd List units currently in memory
list-units() {
    :;
}
# }} __test list-units

# {{ __test set-property
# @cmd Sets one or more properties of a unit
set-property() {
    :;
}
# }} __test set-property

# {{ __test mount-image
# @cmd Mount an image from the host into a
mount-image() {
    :;
}
# }} __test mount-image

command eval "$(argc --argc-eval "$0" "$@")"