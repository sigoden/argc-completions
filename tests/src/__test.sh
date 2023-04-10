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
    --color <WHEN>              Coloring: auto, always, never
Commands:
    run
    build, b
    t, test
    - generate-lock-entry / generateLockEntry
EOF
    fi
}