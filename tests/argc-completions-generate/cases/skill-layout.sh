#!/usr/bin/env bash
# Skill package layout: symlink, frontmatter, required files, script hygiene.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

extract_frontmatter() {
    gawk 'NR == 1 && $0 == "---" { inside = 1; next } inside && $0 == "---" { exit } inside { print }' "$1"
}

for name in argc-completions-generate; do
    link="$ROOT_DIR/.agents/skills/$name"
    check "symlink $name" test -L "$link"
    check "symlink target $name" test "$(readlink "$link")" = "../../skills/$name"
    check "SKILL.md $name" test -f "$ROOT_DIR/skills/$name/SKILL.md"
    fm="$TMP_DIR/$name.frontmatter"
    extract_frontmatter "$ROOT_DIR/skills/$name/SKILL.md" >"$fm"
    check "frontmatter name $name" test "$(gawk -F': ' '/^name:/ { print $2; exit }' "$fm")" = "$name"
    check "frontmatter description $name" test -n "$(gawk '/^description:/ { print; exit }' "$fm")"
done

for ref in generate-structure.md add-choice-fns.md compgen.md \
           compgen-helpers.md compgen-recipes.md verify.md \
           fragment-schema.md setup.md troubleshooting.md; do
    check "reference $ref" test -f "$SKILL_DIR/references/$ref"
done

check "compile agent contract" test -f "$SKILL_DIR/agents/compile.md"
check "reset-cache script" test -x "$SCRIPTS/reset-cache.sh"
check "format-choices script" test -x "$SCRIPTS/format-choices.sh"
check "format-choices syntax" bash -n "$SCRIPTS/format-choices.sh"
check "test-compgen script" test -x "$SCRIPTS/test-compgen.sh"
check "test-compgen syntax" bash -n "$SCRIPTS/test-compgen.sh"
check "set-choice-fns script" test -x "$SCRIPTS/set-choice-fns.sh"
check "set-choice-fns syntax" bash -n "$SCRIPTS/set-choice-fns.sh"
check "update-subcommand-status script" test -x "$SCRIPTS/update-subcommand-status.sh"
check "update-subcommand-status syntax" bash -n "$SCRIPTS/update-subcommand-status.sh"
for script in inspect-fragment-items.jq inspect-script-params.jq; do
    check "inspection script $script" test -f "$SCRIPTS/$script"
done

# Unique doc contracts with no executable counterpart: canonicalization, the
# description normalization (normalize-description.sh), machine-local path rule, and choice de-duplication.
check "value types library removed" test ! -e "$ROOT_DIR/utils/_value_types.sh"
# The repository keeps only the _argc_utils.sh helper library.
check "argc utils library present" test -f "$ROOT_DIR/utils/_argc_utils.sh"

helper_finish
