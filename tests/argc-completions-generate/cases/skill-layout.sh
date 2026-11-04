#!/usr/bin/env bash
# Skill package layout: symlink, frontmatter, complete file inventory, script
# hygiene, and one test case (or shard set) per skill artifact.
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
    # -L lets a program `include "description-rules"`, as scripts/lib.sh's
    # jq_skill does at run time.
    jq -L "$(native_path "$SCRIPTS")" -n --arg key '' -f "$(native_path "$file")" >/dev/null 2>"$TMP_DIR/jq-error" || rc=$?
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
# A *-rules.jq file is a jq module (definitions only) included by the programs
# that share it; every other .jq file is a standalone program.
jq_modules=("$SCRIPTS"/*-rules.jq)
jq_programs=()
for program in "$SCRIPTS"/*.jq; do
    [[ "$(basename "$program")" == *-rules.jq ]] || jq_programs+=("$program")
done

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

# A script is covered by one exact case file or by shards named
# script-<stem>-<shard>.sh (the scalar scripts are split for parallel runs).
script_has_case() {
    local stem="$1" file
    [[ -f "$CASES_DIR/script-$stem.sh" ]] && return 0
    for file in "$CASES_DIR"/script-"$stem"-*.sh; do
        [[ -f "$file" ]] && return 0
    done
    return 1
}

for script in "${shell_scripts[@]}"; do
    base="$(basename "$script")"
    check "script $base executable" test -x "$script"
    check "script $base syntax" bash -n "$script"
    check "script $base case" script_has_case "${base%.sh}"
done

for program in "${jq_programs[@]}"; do
    base="$(basename "$program")"
    check "jq $base parses" jq_program_parses "$program"
    check "jq $base case" test -f "$CASES_DIR/script-${base%.jq}.sh"
done

# A module is compiled through `include`, and at least one jq program or script
# (an inline filter such as normalize-description.sh) must use it.
for module in "${jq_modules[@]}"; do
    stem="$(basename "$module" .jq)"
    check "jq module $stem parses" jq -L "$(native_path "$SCRIPTS")" -n "include \"$stem\"; empty"
    check "jq module $stem included" bash -c "grep -lqx 'include \"$stem\";' \"\$1\"/*.jq \"\$1\"/*.sh" _ "$SCRIPTS"
    check "jq module $stem case" test -f "$CASES_DIR/script-$stem.sh"
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
                    # A script may be split into shards: script-<stem>-<shard>.sh.
                    while [[ "$stem" == *-* ]]; do
                        stem="${stem%-*}"
                        if [[ -e "$SCRIPTS/$stem.sh" || -e "$SCRIPTS/$stem.jq" ]]; then
                            break
                        fi
                    done
                fi
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
