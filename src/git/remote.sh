# @cmd
# @flag -f --fetch
# @flag --tags
# @option -t --track <branch>
# @option -m --master <branch>
# @option --mirror <push,fetch>
# @arg name!
# @arg url!
add() {
    :;
}

# @cmd
# @arg old!
# @arg new!
rename() {
    :;
}

# @cmd
# @arg name!
remove() {
    :;
}

# @cmd
# @flag -a --auto
# @flag -d --delete
# @arg name!
# @arg branch
set-head() {
    :;
}

# @cmd
# @flag -n
# @arg name!
show() {
    :;
}

# @cmd
# @flag -n --dry-run
# @arg name!
prune() {
    :;
}


# @cmd
# @flag -p --prune
# @arg remote*
update() {
    :;
}

# @cmd
# @flag --add
# @arg name!
# @arg branch+
set-branches() {
    :;
}

# @cmd
# @flag --push
# @flag --all
# @arg name!
get-url() {
    :;
}

# @cmd
# @flag --push
# @flag --add
# @flag --delete
# @arg name!
# @arg newurl!
# @arg oldurl
set-url() {
    :;
}