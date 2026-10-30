#!/usr/bin/env bash
# Skill package layout: symlink, frontmatter, complete file inventory, script
# hygiene, and one test case per skill artifact.
#
# The inventory is read from the directory, never from a hand-kept list: adding
# a skill file without a case, or renaming an artifact without renaming its
# case, fails here.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

shopt -s nullglob
CASES_DIR="$TEST_DIR/cases"

extract_frontmatter() {
    gawk 'NR == 1 && $0 == "---" { inside = 1; next } inside && $0 == "---" { exit } inside { print }' "$1"
}

# jq compiles the whole program before evaluating anything and exits 3 on a
# compile error. Any other status means the program parsed: the inspections and
# validate-fragment.jq are expected to raise runtime errors against -n null.
# A program that reads a named argument must see it declared, otherwise jq
# rejects the reference as a compile error; --arg key is the documented caller
# contract for validate-fragment.jq and unused by the inspections.
jq_program_parses() {
    local file="$1" rc=0
    jq -n --arg key '' -f "$file" >/dev/null 2>"$TMP_DIR/jq-error" || rc=$?
    if [[ "$rc" -eq 3 ]]; then
        cat "$TMP_DIR/jq-error" >&2
        return 1
    fi
}

# assert_silent <label> <cmd...>: the command must succeed and print nothing;
# its output names the offending entries.
assert_silent() {
    local label="$1" out
    shift
    if out="$("$@")" && [[ -z "$out" ]]; then
        pass "$label"
    else
        fail "$label"
        [[ -z "$out" ]] || printf '%s\n' "$out" | sed 's/^/     | /' >&3
    fi
}

# --- package: each skills/<name> is linked into .agents/skills and frontmatter

skills=("$ROOT_DIR"/skills/*/)
check "at least one packaged skill" test "${#skills[@]}" -gt 0
for skill_path in "${skills[@]}"; do
    skill_path="${skill_path%/}"
    name="$(basename "$skill_path")"
    link="$ROOT_DIR/.agents/skills/$name"
    check "symlink $name" test -L "$link"
    check "symlink target $name" test "$(readlink "$link")" = "../../skills/$name"
    check "SKILL.md $name" test -s "$skill_path/SKILL.md"
    fm="$TMP_DIR/$name.frontmatter"
    extract_frontmatter "$skill_path/SKILL.md" >"$fm"
    check "frontmatter name $name" test "$(gawk -F': ' '/^name:/ { print $2; exit }' "$fm")" = "$name"
    check "frontmatter description $name" test -n "$(gawk '/^description:/ { print; exit }' "$fm")"
done

# Stale links point at skills that were renamed or removed.
stale_links() {
    local link
    for link in "$ROOT_DIR"/.agents/skills/*; do
        if [[ ! -L "$link" ]]; then
            echo "$link: not a symlink"
        elif [[ ! -e "$link" ]]; then
            echo "$link: dangling symlink"
        fi
    done
}
assert_silent "agent skill links resolve" stale_links

# --- inventory: only the documented artifact kinds live in the package

stray_paths() {
    find "$SKILL_DIR" -mindepth 1 -maxdepth 1 \
        ! -name SKILL.md ! -name references ! -name agents ! -name scripts
    find "$SKILL_DIR/references" "$SKILL_DIR/agents" -mindepth 1 -maxdepth 1 ! -name '*.md'
    find "$SCRIPTS" -mindepth 1 -maxdepth 1 ! -name '*.sh' ! -name '*.jq'
}
assert_silent "package holds only documented artifacts" stray_paths

# --- artifacts: one case file per reference, agent contract, and script

refs=("$SKILL_DIR"/references/*.md)
docs=("$SKILL_DIR"/agents/*.md)
shell_scripts=("$SCRIPTS"/*.sh)
jq_programs=("$SCRIPTS"/*.jq)

check "references present" test "${#refs[@]}" -gt 0
check "agent contracts present" test "${#docs[@]}" -gt 0
check "scripts present" test "${#shell_scripts[@]}" -gt 0
check "jq programs present" test "${#jq_programs[@]}" -gt 0

for ref in "${refs[@]}"; do
    stem="$(basename "$ref" .md)"
    check "reference $stem.md" test -s "$ref"
    check "reference $stem.md case" test -f "$CASES_DIR/reference-$stem.sh"
done

for doc in "${docs[@]}"; do
    stem="$(basename "$doc" .md)"
    check "agent $stem.md" test -s "$doc"
    check "agent $stem.md case" test -f "$CASES_DIR/agent-$stem.sh"
done

for script in "${shell_scripts[@]}"; do
    base="$(basename "$script")"
    check "script $base executable" test -x "$script"
    check "script $base syntax" bash -n "$script"
    check "script $base case" test -f "$CASES_DIR/script-${base%.sh}.sh"
done

for program in "${jq_programs[@]}"; do
    base="$(basename "$program")"
    check "jq $base parses" jq_program_parses "$program"
    check "jq $base case" test -f "$CASES_DIR/script-${base%.jq}.sh"
done

# --- cases: every case still names a live artifact and a known owner

orphan_cases() {
    local case_file base stem
    for case_file in "$CASES_DIR"/*.sh; do
        base="$(basename "$case_file" .sh)"
        case "$base" in
            skill-md|skill-layout|skill-cross-docs) ;;
            reference-*)
                stem="${base#reference-}"
                [[ -f "$SKILL_DIR/references/$stem.md" ]] || echo "$base: no references/$stem.md"
                ;;
            agent-*)
                stem="${base#agent-}"
                [[ -f "$SKILL_DIR/agents/$stem.md" ]] || echo "$base: no agents/$stem.md"
                ;;
            script-*)
                stem="${base#script-}"
                if [[ ! -e "$SCRIPTS/$stem.sh" && ! -e "$SCRIPTS/$stem.jq" ]]; then
                    echo "$base: no scripts/$stem.sh or scripts/$stem.jq"
                fi
                ;;
            *) echo "$base: unrecognized case prefix" ;;
        esac
    done
}
assert_silent "cases only cover live artifacts" orphan_cases

helper_finish
