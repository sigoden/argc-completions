#!/usr/bin/env bash
# Set subcommands[].status in one parent fragment under a lock.
#
# Compile children finish concurrently and the orchestrator updates the parent
# after each result. A plain jq + mv read-modify-write lets two concurrent
# updates overwrite each other, so the read, the write, and the rename all
# happen while holding one lock file, and one call can carry every finished
# node.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"

LOCK_STALE_SECONDS=30
LOCK_TIMEOUT_TRIES=600

usage() {
    cat <<'USAGE'
Usage: update-subcommand-status.sh <parent.json> <name> <status> [<name> <status>...]

Set subcommands[].status in one parent fragment. All pairs apply in a single
locked read-modify-write, so concurrent calls cannot drop a status and a batch
is atomic as a whole.

  update-subcommand-status.sh <REPO_ROOT>/cache/compile/demo/_root.json remote succeeded
  update-subcommand-status.sh <REPO_ROOT>/cache/compile/demo/remote.json add failed cat todo

Statuses: todo, succeeded, failed. The call writes nothing when a name is not
declared by the parent (an alias is not a name) or a status is unknown.

Options:
  -h, --help  Show this help
USAGE
}

tmp=""
lock_held=0
lock_file=""

cleanup() {
    [[ -z "$tmp" ]] || rm -f -- "$tmp"
    [[ "$lock_held" -eq 0 ]] || rm -f -- "$lock_file"
}
trap cleanup EXIT

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        --)
            shift
            break
            ;;
        -*)
            die "unknown option: $1"
            ;;
        *)
            break
            ;;
    esac
done

args=("$@")
[[ ${#args[@]} -ge 3 ]] || {
    usage >&2
    die "missing arguments"
}
(( (${#args[@]} - 1) % 2 == 0 )) || die "expected <name> <status> pairs after the parent fragment"

parent="${args[0]}"
[[ -f "$parent" ]] || die "parent fragment not found: $parent"
parent_dir="$(cd -P "$(dirname "$parent")" && pwd -P)" || die "parent directory not found: $parent"
parent="$parent_dir/$(basename "$parent")"
jq -e 'type == "object" and (.subcommands | type == "array")' "$parent" >/dev/null 2>&1 \
    || die "invalid parent fragment (needs a subcommands array): $parent"

names=()
statuses=()
for ((i = 1; i < ${#args[@]}; i += 2)); do
    name="${args[i]}"
    status="${args[i + 1]}"
    [[ -n "$name" ]] || die "empty subcommand name"
    case "$status" in
        todo|succeeded|failed) ;;
        *) die "unknown status: $status (expected todo, succeeded, or failed)" ;;
    esac
    names+=("$name")
    statuses+=("$status")
done

# A noclobber redirection is the portable mutex: bash creates the lock file
# with O_CREAT|O_EXCL, so exactly one caller wins, and it needs no `flock`
# (absent from macOS and Git Bash) or `mkdir` (a concurrent-safe `mkdir` is not
# guaranteed by every coreutils build). A holder that dies without its trap
# leaves the file behind, so a waiter may steal a lock older than any real
# update.
lock_key="$(printf '%s' "$parent" | cksum | cut -d' ' -f1)"
lock_root="${TMPDIR:-/tmp}/argc-completions-generate-${UID:-0}"
mkdir -p "$lock_root" 2>/dev/null || die "cannot create lock directory: $lock_root"
lock_file="$lock_root/status-$lock_key.lock"

lock_is_stale() {
    local mtime now
    mtime="$(stat -c %Y "$lock_file" 2>/dev/null || stat -f %m "$lock_file" 2>/dev/null)" || return 1
    now="$(date +%s)"
    (( now - mtime > LOCK_STALE_SECONDS ))
}

take_lock() {
    ( set -o noclobber; : >"$lock_file" ) 2>/dev/null
}

tries=0
while ! take_lock; do
    if lock_is_stale; then
        mv "$lock_file" "$lock_file.stale.$$" 2>/dev/null && rm -f -- "$lock_file.stale.$$"
        continue
    fi
    tries=$((tries + 1))
    (( tries < LOCK_TIMEOUT_TRIES )) \
        || die "timed out waiting for lock: $lock_file (held by pid $(cat "$lock_file" 2>/dev/null), remove it if no update is running)"
    sleep 0.1
done
lock_held=1
printf '%s\n' "$$" >"$lock_file"

for name in "${names[@]}"; do
    if ! jq -e --arg name "$name" '.subcommands[]? | select(.name == $name)' "$parent" >/dev/null; then
        alias_target="$(jq -r --arg name "$name" '.subcommands[]? | select((.aliases // []) | index($name)) | .name' "$parent")"
        if [[ -n "$alias_target" ]]; then
            die "alias not supported: $name (canonical name: $alias_target)"
        fi
        die "subcommand not declared: $name (declared: $(jq -r '[.subcommands[].name] | join(", ")' "$parent"))"
    fi
done

names_json="$(jq -n --args '$ARGS.positional' -- "${names[@]}")"
statuses_json="$(jq -n --args '$ARGS.positional' -- "${statuses[@]}")"
tmp="$(mktemp "$parent_dir/.update-subcommand-status.XXXXXX")" \
    || die "failed to create a temporary file in $parent_dir"
jq --argjson names "$names_json" --argjson statuses "$statuses_json" '
    reduce range(0; $names | length) as $i (.;
        (.subcommands[] | select(.name == $names[$i]) | .status) = $statuses[$i])
' "$parent" >"$tmp" || die "failed to update $parent"
[[ -s "$tmp" ]] || die "update produced no output: $parent"
if mode="$(stat -c '%a' "$parent" 2>/dev/null)" || mode="$(stat -f '%Lp' "$parent" 2>/dev/null)"; then
    chmod "$mode" "$tmp"
fi
mv -f "$tmp" "$parent"
tmp=""

printf 'parent=%s\n' "$parent"
for ((i = 0; i < ${#names[@]}; i++)); do
    printf 'name=%s status=%s\n' "${names[i]}" "${statuses[i]}"
done
