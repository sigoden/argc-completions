#!/usr/bin/env bash
# references/compgen-recipes.md: recipe section map and composed samples.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/compgen-recipes.md"

doc_contains "$doc" \
    "## Command plus terminated args" \
    "## Command in a terminated option" \
    "## Command in a terminated positional" \
    "## Value slots of one option" \
    "jq -b -r"

# One choice_fn serves every notation; slot selection is the array length.
doc_contains "$doc" \
    "One option consumes several values" \
    'case "${#argc_pair[@]}" in' \
    '`--pair=left right` does not fill the second slot' \
    "use *Multi-Parts Mode* or *Key-Value Mode*"

# A later slot may query with an earlier value; a free-form final notation has
# no candidate source.
doc_contains "$doc" \
    "pass the stored element to a query helper" \
    "A free-form final notation"

# The samples call the root command and the prerequisites directly.
doc_lacks "$doc" \
    'command -v aichat' \
    'command -v jq'

# The value-slot recipe is a contract with argc: one function is called for
# each slot, and the generated array includes the current word. Exercise the
# three slot calculations from the recipe against argc itself.
cat >"$TMP_DIR/value-slots.sh" <<'SCRIPT'
#!/usr/bin/env bash
# @option --pair[?`_choice_pair`] <LEFT> <RIGHT>
# @option --rep*[?`_choice_rep`] <LEFT> <RIGHT>
# @option --slow*[?`_choice_slow`] <LEFT> <RIGHT?>

_choice_pair() {
    case "${#argc_pair[@]}" in
    1) printf '%s\n' left1 left2 ;;
    2) printf '%s\n' right1 right2 ;;
    esac
}

_choice_rep() {
    case $(( (${#argc_rep[@]} - 1) % 2 + 1 )) in
    1) printf '%s\n' left1 left2 ;;
    2) printf '%s\n' right1 right2 ;;
    esac
}

_choice_slow() {
    local -a names=(--slow)
    local i name start=-1 n=${#argc__args[@]}
    for ((i = n - 1; i >= 0; i--)); do
        for name in "${names[@]}"; do
            if [[ ${argc__args[i]} == "$name" || ${argc__args[i]} == "$name"=* ]]; then
                start=$i
                break 2
            fi
        done
    done
    (( start >= 0 )) || return 0
    local slot=$(( n - start - 1 ))
    (( slot > 0 )) || slot=1
    case $slot in
    1) printf '%s\n' left1 left2 ;;
    2) printf '%s\n' right1 right2 ;;
    esac
}

command eval "$(argc --argc-eval "$0" "$@")"
SCRIPT

check "value slots first" bash "$SCRIPTS/test-compgen.sh" -x left1 -x left2 -c 2 \
    "$TMP_DIR/value-slots.sh" demo --pair ''
check "value slots second" bash "$SCRIPTS/test-compgen.sh" -x right1 -x right2 -c 2 \
    "$TMP_DIR/value-slots.sh" demo --pair left1 ''
check "value slots repeatable fixed arity" bash "$SCRIPTS/test-compgen.sh" -x left1 -x left2 -c 2 \
    "$TMP_DIR/value-slots.sh" demo --rep a b --rep ''
check "value slots repeatable optional final" bash "$SCRIPTS/test-compgen.sh" -x left1 -x left2 -c 2 \
    "$TMP_DIR/value-slots.sh" demo --slow a --slow ''

helper_finish
