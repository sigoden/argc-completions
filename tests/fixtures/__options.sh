_patch_help() {
    cat <<-'EOF'
Options:
    -a, -b
    -C DIRECTORY, --directory=DIRECTORY
    -d --diff <file> <file>
    -f FILE, --file=FILE, --makefile=FILE
    -H --no-highlight
    -m --model <MODEL>
    --shell <SHELL>
    -l [N], --load-average[=N], --max-load[=N]
    -n --just-print, --dry-run, --recon
    -O[TYPE], --output-sync[=TYPE]
    -p, --package [<SPEC>]
    -x, --proxy <[protocol://]host[:port]>
    -v, --verbose...
    -., --hidden
    --debug[=FLAGS]
    --info
    --with-commit <MSG>...
    --alt-svc <file name>
    --mutex <type>[:specifier]
    --ciphers <list of ciphers>
    --resolve <[+]host:port:addr[,addr]...>
    --ftp-ssl-ccc-mode <active,passive>
    -nc, --no-clobber
    --stop-at=y-m-dTh:m
    --ansi (never,always,auto)
    --[no-]color
    --http1.1
    --filter !<selector>
    --regexp ...<pattern>
    --packages [packages ...]
    --pkg [<pkg> ...]
    --otp <Yes|No>
EOF
}