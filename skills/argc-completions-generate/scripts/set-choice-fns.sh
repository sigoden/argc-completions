#!/usr/bin/env bash
# Bind one or more fragment items to dynamic choice functions in one update.
#
# Usage: set-choice-fns.sh <fragment> <name>[`<fn>`]...
#        set-choice-fns.sh <fragment> <name>~[`<fn>`]...
#
# Every binding is resolved before anything is written. A flag target, a
# missing item, an invalid function name, a terminated conflict, a duplicate
# or overlapping binding, or a fragment that fails validate-fragment.jq leaves
# the original file untouched.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd jq "run $REPO_ROOT/install.sh"

usage() {
    cat <<'USAGE'
Usage: set-choice-fns.sh <fragment> <binding...>

Bind one or more fragment items to dynamic choice functions.

  <fragment>    JSON fragment file to update
  <binding...>  One binding per parameter, written as
                  <name>[`<fn>`]    bind <name> to <fn>
                  <name>~[`<fn>`]   bind <name> to <fn> and set
                                    terminated: true

                <name> is an option name (for example --foo or -f) or one
                positional arg name; the trailing "~" before the bracket
                marks a command-valued item. The backticks around <fn> are
                optional. Pass every name of an option that is split across
                items as its own binding.

Nothing is written unless every binding resolves and the updated fragment
passes validation.

Options:
  -h, --help    Show this help
USAGE
}

if [[ $# -eq 0 ]]; then
    usage >&2
    exit 2
fi
case "$1" in
    -h|--help)
        usage
        exit 0
        ;;
esac

fragment="$1"
shift
if [[ $# -eq 0 ]]; then
    usage >&2
    exit 2
fi

[[ -f "$fragment" ]] || die "fragment not found: $fragment"

declare -A seen=()
records=()
for spec in "$@"; do
    if [[ ! "$spec" =~ ^([^][~[:space:]]+)(~?)\[(.*)\]$ ]]; then
        die "invalid binding (expected <name>[\`<fn>\`] or <name>~[\`<fn>\`]): $spec"
    fi
    name="${BASH_REMATCH[1]}"
    terminated=0
    [[ -n "${BASH_REMATCH[2]}" ]] && terminated=1
    inner="${BASH_REMATCH[3]}"
    if [[ "$inner" =~ ^\`([A-Za-z_][A-Za-z0-9_]*)\`$ ]] \
        || [[ "$inner" =~ ^([A-Za-z_][A-Za-z0-9_]*)$ ]]; then
        fn="${BASH_REMATCH[1]}"
    else
        die "invalid choice function name in binding: $spec"
    fi
    if [[ -n "${seen[$name]:-}" ]]; then
        die "duplicate binding for $name"
    fi
    seen[$name]=1
    records+=("$name"$'\t'"$fn"$'\t'"$terminated")
done

bindings_json="$(printf '%s\n' "${records[@]}" | jq -R -s -c '
    split("\n")
    | map(select(length > 0) | split("\t") | {names: [.[0]], fn: .[1], terminated: (.[2] == "1")})
')" || die "failed to encode bindings"

key="$(jq -r '.path | join("|")' "$(native_path "$fragment")")" \
    || die "failed to read fragment path: $fragment"
[[ -n "$key" && "$key" != "null" ]] || die "fragment has no usable path: $fragment"

fragment_dir="$(cd -P "$(dirname "$fragment")" && pwd -P)" \
    || die "fragment directory not found: $fragment"
tmp="$(mktemp "$fragment_dir/.set-choice-fns.XXXXXX")" \
    || die "failed to create a temporary file in $fragment_dir"
trap 'rm -f "$tmp"' EXIT

# Keep the jq matching helpers identical in the pre-check and mutation below.
# The pre-check fails before writing when any target is a flag or absent.
if ! matches_json="$(jq -c --argjson bindings "$bindings_json" '
    def matches($names):
      if .kind == "option" then ((.names // []) | any(. as $n | $names | index($n)))
      elif .kind == "arg" then (.name as $n | $names | index($n))
      else false end;
    def flag_match($names):
      .kind == "flag" and ((.names // []) | any(. as $n | $names | index($n)));
    def item_label:
      if .kind == "arg" then (.name // "") else ((.names // []) | join(",")) end;
    if (.items | type) != "array" then
      error("items must be an array")
    else . end
    | . as $doc
    | ([range(0; $doc.items | length) as $i
        | select(([$bindings[] | . as $b | select($doc.items[$i] | matches($b.names))] | length) > 1)
        | $doc.items[$i] | item_label]) as $overlaps
    | if ($overlaps | length) > 0 then
        error("bindings overlap on: \($overlaps | join(", "))")
      else . end
    | [ $bindings[] | . as $b
        | ([$doc.items[] | select(flag_match($b.names))] | length) as $flags
        | ([$doc.items[] | select(matches($b.names))] | length) as $matched
        | if $flags > 0 then
            error("choice_fn cannot bind a flag: \($b.names | join(", "))")
          elif $matched == 0 then
            error("no item matches: \($b.names | join(", "))")
          else
            {label: ($b.names | join(",")), fn: $b.fn, terminated: $b.terminated, matched: $matched}
          end
      ]
' "$(native_path "$fragment")")"; then
    exit 1
fi

if ! jq --argjson bindings "$bindings_json" '
    def matches($names):
      if .kind == "option" then ((.names // []) | any(. as $n | $names | index($n)))
      elif .kind == "arg" then (.name as $n | $names | index($n))
      else false end;
    def item_label:
      if .kind == "arg" then (.name // "") else ((.names // []) | join(",")) end;
    .items |= map(
      . as $item
      | (([$bindings[] | . as $b | select($item | matches($b.names))] | first) // null) as $b
      | if $b == null then .
        else .choice_fn = $b.fn
          | .choices = []
          | if $b.terminated then
              if (.repeatable // false) == true then
                error("terminated conflicts with repeatable: \(item_label)")
              elif (.prefixed // false) == true then
                error("terminated conflicts with prefixed: \(item_label)")
              elif ((.delimiter // null) != null) then
                error("terminated conflicts with delimiter: \(item_label)")
              else .terminated = true end
            else . end
        end
    )
' "$(native_path "$fragment")" >"$tmp"; then
    exit 1
fi

jq_skill -e -f "$(native_path "$SCRIPT_DIR/validate-fragment.jq")" --arg key "$key" "$(native_path "$tmp")" >/dev/null \
    || die "updated fragment failed validation: $fragment"

install_atomic "$tmp" "$fragment"
trap - EXIT

printf 'fragment=%s\n' "$fragment"
printf '%s' "$matches_json" | jq -r '
    "bindings=\(length)",
    (.[] | "binding=\(.label) fn=\(.fn) terminated=\(.terminated) matched=\(.matched)")
'
