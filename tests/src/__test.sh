_patch_help() {
    if [[ "$*" == "__test" ]]; then
    cat <<-'EOF'
Arguments:
    <ARG1>
    <ARG2>...
    [ARG3]
    [ARG4]...
    ARG5...
    <deployed project name>
    arg7 ...
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
    --unknown

-------

Environment variables:
    NO_COLOR                    Disable ansi color.
Commands:
    run                         
    build, b
    t, test
    cmd1                        Compare two commit ranges (e.g. two versions of a branch) 
    cmd2
    cmd3,
    cmd4
    cmd5
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
    fi
}