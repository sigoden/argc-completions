_patch_help() {
    if [[ "$*" == "__test" ]]; then
    cat <<'EOF'
Arguments:
    <ARG1>
    <ARG2>...
    [ARG3]
    [ARG4]...
    ARG5...
    <deployed project name>
    <branch,tag>
    [<arg8>...]
    [<repository>]
    [<pathspecs>]...
    [<tarball>|<dir>]
    [(<mbox> | <Maildir>)...]
    <tarball file>
    [ARG9...]
    [rustfmt_options]...
Options:
    -a, -b                      Ignored for compatibility.
    -C DIRECTORY, --directory=DIRECTORY
                                Change to DIRECTORY before doing anything.
    -d --diff <file> <file>     Compare two files with each other.
    -f FILE, --file=FILE, --makefile=FILE
                                Read FILE as a makefile.
    -H --no-highlight           Disable syntax highlighting.
    -m --model <MODEL>          Choose a model.
    -l [N], --load-average[=N], --max-load[=N]
                                Don't start multiple jobs unless load is below N.
    -n --just-print, --dry-run, --recon
                                Don't actually run any recipe; just print them.
    -O[TYPE], --output-sync[=TYPE]
                                Synchronize output of parallel jobs by TYPE.
    -p, --package [<SPEC>]      Package to modify
    -w, --workdir=""            Working directory inside the container
        --non-printable-format=FMT specify how non-printable chars are printed
    --gdbserver=                Run the command with gdbserver
    -x, --proxy [protocol://]host[:port] Use this proxy
    -v, --verbose...            Use verbose output (-vv very verbose/build.rs output)
    -., --hidden                Search hidden files and directories.
    -#, --progress-bar          Display transfer progress as a bar
    --debug[=FLAGS]             Print various types of debugging information.
    --with-commit <MSG>...      Sets custom commit messages to include in the changelog 
    --alt-svc <file name>       Enable alt-svc with this cache file
    --mutex <type>[:specifier]  use a mutex to ensure only one yarn instance is executing
    --ciphers <list of ciphers> SSL ciphers to use
    --resolve <[+]host:port:addr[,addr]...>
                                Resolve the host+port to this address
    --ftp-ssl-ccc-mode <active/passive> Set CCC mode
    -nc, --no-clobber           skip downloads that would download to
    --stop-at=y-m-dTh:m         Stop rsync at the specified point in time
    --[no-]color                Controls colors in the output.
    --[no]heading               Print a filename heading above each file's results.
    --http1.1                   Use HTTP 1.1
    --filter1 !<selector>       
    --filter2 ...<pattern>      Includes all direct and indirect dependencies of the matched packages. 
    --packages [packages ...]   Packages to inspect for updates
    --show-scope                show scope of config (worktree, local, global, system, command)
    --edition <YEAR>            Edition to set for the crate generated [possible values: 2015, 2018, 2021]
    --set-color <WHEN>          Coloring: auto, always, never
    -I pkcs11                   Specify the PKCS#11 shared library ssh should use to communicate with a PKCS#11 token providing keys for user authentication.
    --jobs <N>                  Number of parallel jobs, defaults to # of CPUs
	--bun                       Force a script or package to use Bun.js instead of Node.js (via symlinking node)
    --install-strategy <value>  Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --progress string           Set type of progress output ("auto", "plain", "tty").
    --ansi string               Control when to print ANSI control characters ("never"|"always"|"auto")
    --ignored                   Show ignored files, optional modes: traditional, matching, no. 
    --driver string             Driver to use (available: "docker-container", "kubernetes", "remote")
    --exclude =<regex>...       Exclude source files from the report [default: test\.(js|mjs|ts|jsx|tsx)$]
    --backend <STR>             Platform-specific optimizations for installing dependencies. Possible values: "hardlink" (default), "symlink", "copyfile"
    --container-cap-add stringArray kernel capabilities to add to the workflow containers (e.g. --container-cap-add SYS_PTRACE)
    --since string              Show logs since timestamp (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)
    --loader <STR>...           Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi
    --allow <strings>           Allow extra privileged entitlement (e.g., "network.host", "security.insecure")
    --input-format string       [auto|a|yaml|y|props|p|xml|x|tsv|t|csv|c|toml] parse format for input. Note that json is a subset of yaml. (default "auto")
    --argjson a v               set variable $a to JSON value <v>;
    --git-protocol <string>     The protocol to use for git operations: {ssh|https}
    --graph:node_limit <integer>   
    -r, --reload[=<CACHE_BLOCKLIST>...]
          Reload source code cache (recompile TypeScript)
          --reload
            Reload everything
          --reload=https://deno.land/std
            Reload only standard modules
          --reload=https://deno.land/std/fs/utils.ts,https://deno.land/std/fmt/colors.ts
            Reloads specific modules
          --reload=npm:
            Reload all npm modules
          --reload=npm:chalk
            Reload specific npm module

    -coverpkg pattern1,pattern2,pattern3
          For a build that targets package 'main' 

    --cgroupns string                Cgroup namespace to use (host|private)
                                     'host':    Run the container in the Docker host's cgroup namespace
                                     'private': Run the container in its own private cgroup namespace
                                     '':        Use the cgroup namespace as configured by the
                                                default-cgroupns-mode option on the daemon (default)

    --connection      Requests compression of all data (including stdin, stdout, stderr, and data for forwarded X11, TCP and UNIX-domain connec‐
                      tions).  The compression algorithm is the same used by gzip(1).
    --sanitizer <SANITIZER>
            Use a specific sanitizer
            
            [default: address]
            [possible values: address, leak, memory, thread, none]
    --email-obfuscation=none|javascript|references        Specify a method for obfuscating mailto: links in HTML documents.
    --top-level-division=[default|section|chapter|part]   Treat top-level headings as the given division type in LaTeX, ConTeXt, DocBook, and TEI output.
    --unknown
    --trace-ascii <file> Like --trace, but without hex output
    --prepend --add KEY VALUE
            Add one configuration value to the beginning of a list key.
    --which PATH [PATH ...]
            Given some file's PATH, print which conda package the file came from.
    -backup, -keep	keep a backup of the modified files
    --encoding={s,S,b,l,B,L}  Select character size and endianness:
    --log-level-cmake=<ERROR|WARNING|NOTICE|STATUS|VERBOSE|DEBUG|TRACE>   Set the verbosity of messages from CMake files. 
    --trace-format={human|json-v1}  Set the output format of the trace.
    --sec-severity {Critical,Important,Moderate,Low}, --secseverity {Critical,Important,Moderate,Low}
            Include security relevant packages matching the

	-pkgdir dir
		install and load all packages from dir instead of the usual locations.

	-ldflags '[pattern=]arg list'
		arguments to pass on each go tool link invocation.

    --forcearch ARCH      Force the use of an architecture

    {metadata,packages,dbcache,expire-cache,all}
                        Metadata type to clean

    -<alertname>  disable alert <alertname>
    --<alertname> treat <alertname> as non-fatal

    --block-size=SIZE, -B    force a fixed checksum block-size
    --output FORMAT, -o FORMAT   Render output using given FORMAT. Valid options are 'json' or 'yaml'
    -P <proto> | --proto <proto> | --protocol <proto>
            Specify  the  protocol  to use when communicating with the remote mail server.
    --disabled‐login
          Do not run passwd to set the password.  The user won’t be able to use her account until the password is set.
    -fcf-protection=<value> Instrument control-flow architecture protection. Options: return, branch, full, none.
    -fcf-protection         Enable cf-protection in 'full' mode
    -only-testing                    constrains testing by specifying tests to include, and excluding other tests
    -only-testing- <TEST-IDENTIFIER> constrains testing by specifying tests to include, and excluding other tests
-------

Future runs of this module will trigger no downloads or compilation unless
--reload is specified.

Other:

    --incremental         show blame entries as we find them, incrementally
    --line-porcelain      show porcelain format with per-line commit information
    -[no]spotlight        do (not) create a Spotlight™ index

Environment variables:
NO_COLOR                        Disable ansi color.
NODE_DEBUG                      ','-separated list of core modules that should print debug information

Commands:
    run                         Run a binary or example of the local package 
    build, b                    Compile the current package
    t, test                     Run the tests
    x [cmd] [key] [value]       View or set your gatsby-cli configuration settings.   
    cat                         fn name will be `cat_`
    toJSON                      Convert front matter to JSON

Other:
    cmd1
    cmd2                        Compare two commit ranges (e.g. two versions of a branch) 
    cmd3,
    cmd4, c
    cmd5, d,
    cmd6
    cmd7
    cmd8
    cmd9
    cmda
    cmdb
    cmdc
    cmde
    cmdf
    cmd:a

The commands are:

	bug         start a bug report
	mod         module maintenance

Manage your dependencies:
      add                  Installs a package and any packages that it depends on. By default, any new package is installed as a
                           prod dependency
      import               Generates a pnpm-lock.yaml from an npm package-lock.json (or npm-shrinkwrap.json) file
   i, install              Install all dependencies for a project
  it, install-test         Runs a pnpm install followed immediately by a pnpm test
  ln, link                 Connect the local project to another one

Other:
  compile
          UNSTABLE: Compile the script into a self contained executable
  completions
          Generate shell completions
  coverage
          Print coverage reports

Other:
      pack
      publish              Publishes a package to the registry

Systemctl Commands:
  list-units [PATTERN...]             List units currently in memory
  set-property UNIT PROPERTY=VALUE... Sets one or more properties of a unit
  mount-image UNIT PATH [PATH [OPTS]] Mount an image from the host into a

Emerge Commands:
    ebuild   An ebuild must be, at a minimum, a valid Portage package directory name without a version or category, such as portage or python.  Both categories and version numbers may be used in addition, such as sys-apps/portage or =python-2.2.1-r2.  emerge ignores a trailing slash so that filename completion can be used.  The ebuild may also be an actual filename, such as /var/db/repos/gentoo/app-admin/python/python-2.2.1-r2.ebuild.  WARNING: The implementation of emerge /path/to/ebuild is broken and so this syntax shouldn't be used.
    tbz2 file
            A tbz2 file must be a valid .tbz2 created with ebuild <package>-<version>.ebuild package or emerge --buildpkg [category/]<package> or quickpkg [category/]<package>.

Mix Commands:
  deps.clean    Deletes the given dependencies' files
  deps.compile    Compiles dependencies

EXPERIMENTAL:
  docker manifest is an experimental feature.
  Experimental features provide early access to product functionality. 
  These features may change between releases without warning, or can be removed from a future release.

OPAMSWITCH see option `--switch'. Automatically set by `opam env
--switch=SWITCH --set-switch'.
EOF
    elif [[ "$*" == "__test cmd1" ]]; then
        echo "Usage: __test cmd1 [OPTIONS] <--build|--clear>"
    elif [[ "$*" == "__test cmd2" ]]; then
        echo "Usage: __test cmd2 [<options>] [-e] <pattern> [<rev>...] [[--] <path>...]"
    elif [[ "$*" == "__test cmd3" ]]; then
        echo "Usage: __test cmd3 [<OPTIONS>] CONTAINER [CONTAINER...]"
    elif [[ "$*" == "__test cmd4" ]]; then
        echo "Usage: __test cmd4 (foo|bar|baz)"
    elif [[ "$*" == "__test cmd5" ]]; then
        cat <<-'EOF'
Usage: deno doc [OPTIONS] [source_file] [filter]

Arguments:
  [source_file]
          

  [filter]
          Dot separated path to symbol
EOF
    elif [[ "$*" == "__test cmd6" ]]; then
        echo "Usage: __test cmd6 add|list|rm [<args>]"
    elif [[ "$*" == "__test cmd7" ]]; then
        cat <<-'EOF'
usage: __test cmd7 [-c [config file]] [-q] [-v] [--version] [--installroot [path]] [--nodocs] [--noplugins]
              [--enableplugin [plugin]] [--disableplugin [plugin]] [--releasever RELEASEVER] [--setopt SETOPTS]
              PACKAGE [PACKAGE ...]
EOF
    elif [[ "$*" == "__test cmd8" ]]; then
        echo "Usage: __test cmd8 [DIR(S)]"
    elif [[ "$*" == "__test cmd9" ]]; then
        echo "Usage: __test cmd9 [hosted-url|--all]"
    elif [[ "$*" == "__test cmda" ]]; then
        echo "Usage: __test cmda [DIR] ..."
    elif [[ "$*" == "__test cmdb" ]]; then
        echo "Usage: __test cmdb [OPTION…] LOCATION FILENAME NAME [BRANCH]"
    elif [[ "$*" == "__test cmdc" ]]; then
        echo "Usage: __test cmdc COMMAND [ARGS]..."
    elif [[ "$*" == "__test cmde" ]]; then
        echo "Usage: __test cmde [COMMAND [ARGS...]]"
    elif [[ "$*" == "__test cmdf" ]]; then
        echo "Usage: __test cmdf files" 
    fi
}

_patch_table() {
    if [[ "$*" == "__test" ]]; then
        _patch_table_edit_commands \
            '' ';;' \
            '(--sync, -S);Synchronize packages' \
            '(--remove, -R);Remove package(s) from the system' \

    else
        cat
    fi
}