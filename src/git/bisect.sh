# @cmd reset bisect state and start bisection.
# @option --term-new term
# @option --term-bad term
# @option --term-old term
# @option --term-good term
# @flag --no-checkout
# @flag --first-parent
start() {
    :;
}

# @cmd mark <rev> bad revision after change in a given property.
# @arg rev
bad() {
    :;
}

# @cmd mark <rev> new revision after change in a given property.
# @arg rev
new() {
    :;
}

# @cmd mark <rev>... good revisions before change in a given property.
# @arg rev*
good() {
    :;
}

# @cmd mark <rev>... old revisions before change in a given property.
# @arg rev*
old() {
    :;
}

# @cmd show the terms used for old and new commits
# @flag --term-good
# @flag --term-bad
terms() {
    :;
}

# @cmd mark <rev>... untestable revisions.
# @arg rev-range*
skip() {
    :;
}

# @cmd find next bisection to test and check it out.
next() {
    :;
}

# @cmd finish bisection search and go back to commit.
# @arg commit
reset() {
    :;
}

# @cmd how bisect status in gitk.
visualize() {
    :;
}

# @cmd show bisect status in gitk.
view() {
    :;
}

# @cmd replay bisection log.
# @arg logfile!
replay() {
    :;
}

# @cmd show bisect log.
log() {
    :;
}

# @cmd  use <cmd>... to automatically bisect.
# @arg cmd*
run() {
    :;
}
