_patch_help() {
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
EOF
}