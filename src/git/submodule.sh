# @cmd
# @option -b <branch>
# @flag -f --force
# @option --name <name>
# @option --reference <repository>
# @arg repository!
# @arg path
add() {
    :;
}

# @cmd
# @flag --recursive
# @arg path*
status() {
    :;
}

# @cmd
# @arg path*
init() {
    :;
}

# @cmd
# @flag -f --force
# @flag --all
# @arg path*
deinit() {
    :;
}

# @cmd
# @flag --init
# @flag --remote
# @flag -N --no-fetch
# @flag -f --force
# @flag --checkout
# @flag --merge
# @flag --rebase
# @flag --recommend-shallow
# @flag --no-recommend-shallow
# @option --reference <repository>
# @flag --single-branch
# @flag --no-single-branch
# @arg path*
update() {
    :;
}

# @cmd
# @flag --default
# @option --branch <branch>
# @arg path
set-branch() {
    :;
}

# @cmd
# @arg path!
# @arg newurl!
set-url() {
    :;
}

# @cmd
# @flag --cached
# @flag --files
# @option --summary-limit <n>
# @arg commit
# @arg path*
summary() {
    :;
}

# @cmd
# @flag --recursive
# @arg cmd
foreach() {
    :;
}

# @cmd
# @flag --recursive
# @arg path*
sync() {
    :;
}

# @cmd
# @arg path*
absorbgitdirs() {
    :;
}
