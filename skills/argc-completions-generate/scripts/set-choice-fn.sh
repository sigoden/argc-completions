#!/usr/bin/env bash
# Bind one or more fragment items to a dynamic choice function.
#
# Usage: set-choice-fn.sh [--terminated] <fragment> <fn> <name...>
#
# The fragment is written only after the updated document passes
# validate-fragment.jq. A missing item, a flag target, an invalid function
# name, or a terminated conflict leaves the original file untouched.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd jq "run $REPO_ROOT/install.sh"

usage() {
    cat <<'USAGE'
Usage: set-choice-fn.sh [--terminated] <fragment> <fn> <name...>

Bind one or more fragment items to a dynamic choice function.

  <fragment>   JSON fragment file to update
  <fn>         Function name to bind
  <name...>    Option names (for example --foo or -f) or one positional arg
               name. Pass every name of an option that is split across items.

Options:
  --terminated  Set terminated: true on the matched item(s) when their
                repeatable, prefixed, and delimiter fields allow it.
  -h, --help    Show this help
USAGE
}

terminated=0
args=()
parsing_options=1
while [[ $# -gt 0 ]]; do
    if [[ "$parsing_options" -eq 0 ]]; then
        args+=("$1")
        shift
        continue
    fi
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        --terminated)
            terminated=1
            shift
            ;;
        --)
            shift
            parsing_options=0
            args+=("$@")
            break
            ;;
        -*)
            die "unknown option: $1"
            ;;
        *)
            parsing_options=0
            args+=("$1")
            shift
            ;;
    esac
done

if [[ ${#args[@]} -lt 3 ]]; then
    usage >&2
    exit 2
fi

fragment="${args[0]}"
fn="${args[1]}"
names=("${args[@]:2}")

[[ -f "$fragment" ]] || die "fragment not found: $fragment"

if [[ ! "$fn" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
    die "invalid choice function name: $fn"
fi

for name in "${names[@]}"; do
    [[ -n "$name" ]] || die "empty item name"
done

names_json="$(jq -n --args '$ARGS.positional' -- "${names[@]}")" \
    || die "failed to encode item names"
key="$(jq -r '.path | join("|")' "$fragment")" \
    || die "failed to read fragment path: $fragment"
[[ -n "$key" && "$key" != "null" ]] || die "fragment has no usable path: $fragment"

fragment_dir="$(cd -P "$(dirname "$fragment")" && pwd -P)" \
    || die "fragment directory not found: $fragment"
tmp="$(mktemp "$fragment_dir/.set-choice-fn.XXXXXX")" \
    || die "failed to create a temporary file in $fragment_dir"
trap 'rm -f "$tmp"' EXIT

# Keep the jq matching helpers identical in the pre-check and mutation below.
# The pre-check fails before writing when the target is a flag or absent.
if ! matched="$(jq -r --argjson names "$names_json" '
    def matches($names):
      if .kind == "option" then ((.names // []) | any(. as $n | $names | index($n)))
      elif .kind == "arg" then (.name as $n | $names | index($n))
      else false end;
    def flag_match($names):
      .kind == "flag" and ((.names // []) | any(. as $n | $names | index($n)));
    if (.items | type) != "array" then
      error("items must be an array")
    else . end
    | if ([.items[]? | select(flag_match($names))] | length) > 0 then
        error("choice_fn cannot bind a flag: \($names | join(", "))")
      else . end
    | ([.items[]? | select(matches($names))] | length) as $count
    | if $count == 0 then
        error("no item matches: \($names | join(", "))")
      else $count end
' "$fragment")"; then
    exit 1
fi

terminated_json=false
if [[ "$terminated" -eq 1 ]]; then
    terminated_json=true
fi

if ! jq --argjson names "$names_json" --arg fn "$fn" --argjson terminated "$terminated_json" '
    def matches($names):
      if .kind == "option" then ((.names // []) | any(. as $n | $names | index($n)))
      elif .kind == "arg" then (.name as $n | $names | index($n))
      else false end;
    def item_label:
      if .kind == "arg" then (.name // "") else ((.names // []) | join(",")) end;
    .items |= map(
      if matches($names) then
        .choice_fn = $fn
        | .choices = []
        | if $terminated then
            if (.repeatable // false) == true then
              error("terminated conflicts with repeatable: \(item_label)")
            elif (.prefixed // false) == true then
              error("terminated conflicts with prefixed: \(item_label)")
            elif ((.delimiter // null) != null) then
              error("terminated conflicts with delimiter: \(item_label)")
            else .terminated = true end
          else . end
      else . end
    )
' "$fragment" >"$tmp"; then
    exit 1
fi

jq -e -f "$SCRIPT_DIR/validate-fragment.jq" --arg key "$key" "$tmp" >/dev/null \
    || die "updated fragment failed validation: $fragment"

mv "$tmp" "$fragment"
trap - EXIT

printf 'fragment=%s\n' "$fragment"
printf 'fn=%s\n' "$fn"
printf 'terminated=%s\n' "$terminated"
printf 'matched=%s\n' "$matched"
