#!/usr/bin/env bash
# Tests for the project agent skills and the completion assembly scripts.

set -euo pipefail

TEST_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$TEST_DIR/../.." && pwd)"
export PATH="$ROOT_DIR/bin:$PATH"

if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
    if [ -x "$ROOT_DIR/bin/bash" ] && [ "${ARGC_BASH_REEXEC:-0}" != "1" ]; then
        ARGC_BASH_REEXEC=1 exec "$ROOT_DIR/bin/bash" "$0" "$@"
    fi
    echo "bash >= 5 is required (run ./install.sh)" >&2
    exit 1
fi

SKILL_DIR="$ROOT_DIR/skills/argc-completions-generate"
SCRIPTS="$SKILL_DIR/scripts"
FIXTURES="$TEST_DIR/fixtures"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

# ---------------------------------------------------------------------------
# Reporting
#
# The sub-scripts print progress and error detail while they work. Expected
# failures (invalid fragments, missing files, ...) print [warn]/[error] lines
# that are not part of a test conclusion, so every check runs with its output
# captured and only the log of a failing check is shown. Environment switches:
#   VERBOSE=1  stream each command's output as it runs
#   QUIET=1    print only failures and the summary
#
# The report stream is fd 3 so that call sites may still redirect the stdout
# of the command under test.
# ---------------------------------------------------------------------------
exec 3>&1
LOG_DIR="$TMP_DIR/logs"
mkdir -p "$LOG_DIR"
LOG_SEQ=0

failures=0
passes=0
failed_labels=()

pass() {
    passes=$((passes + 1))
    if [[ "${QUIET:-0}" != "1" ]]; then
        printf 'ok   %s\n' "$*" >&3
    fi
}
fail() {
    failures=$((failures + 1))
    failed_labels+=("$1")
    printf 'FAIL %s\n' "$*" >&3
}

new_log() {
    LOG_SEQ=$((LOG_SEQ + 1))
    printf '%s/%03d.log\n' "$LOG_DIR" "$LOG_SEQ"
}

show_captured() {
    local log="$1" limit="${2:-40}" total
    [[ -s "$log" ]] || return 0
    total="$(wc -l <"$log")"
    printf '     --- captured output (%s line(s)) ---\n' "$total" >&3
    head -n "$limit" "$log" | sed 's/^/     | /' >&3
    if [[ "$total" -gt "$limit" ]]; then
        printf '     | ... %s more line(s); re-run with VERBOSE=1 for the full output\n' "$((total - limit))" >&3
    fi
}

# run_quiet <log> <cmd...>: capture stdout and stderr of a command.
run_quiet() {
    local log="$1"
    shift
    if [[ "${VERBOSE:-0}" == "1" ]]; then
        "$@" 2>&1 | tee "$log" >&3
        return "${PIPESTATUS[0]}"
    fi
    "$@" >"$log" 2>&1
}

# check_to <log> <label> <cmd...>: check a command that writes to a known log.
check_to() {
    local log="$1" label="$2"
    shift 2
    if run_quiet "$log" "$@"; then
        pass "$label"
    else
        fail "$label"
        show_captured "$log"
    fi
}

check() {
    local label="$1" log
    shift
    log="$(new_log)"
    check_to "$log" "$label" "$@"
}

expect_failure() {
    local label="$1" log
    shift
    log="$(new_log)"
    if run_quiet "$log" "$@"; then
        fail "$label (unexpected success)"
        show_captured "$log"
    else
        pass "$label"
    fi
}

# quiet <cmd...>: run a setup step that has no conclusion of its own. stdout
# still goes where the caller redirects it; stderr is held back unless the
# step fails.
quiet() {
    local log rc=0
    log="$(new_log)"
    if [[ "${VERBOSE:-0}" == "1" ]]; then
        "$@"
        return
    fi
    "$@" 2>"$log" || rc=$?
    if [[ "$rc" -ne 0 ]]; then
        printf 'setup step failed (rc=%d)\n' "$rc" >&3
        show_captured "$log"
    fi
    return "$rc"
}

assert_contains() {
    local label="$1" file="$2" needle="$3"
    if grep -Fq -- "$needle" "$file"; then pass "$label"; else fail "$label (missing: $needle)"; fi
}
assert_not_contains() {
    local label="$1" file="$2" needle="$3"
    if grep -Fq -- "$needle" "$file"; then fail "$label (unexpected: $needle)"; else pass "$label"; fi
}
path_prefix_lint() {
    gawk '
    function report(kind) { printf "%s:%d: %s: %s\n", FILENAME, FNR, kind, $0; failed = 1 }
    /\.\/(scripts|references|agents|cache|completions|utils|tests|bin|skills|install\.sh)/ { report("dot-relative path") }
    /(^|[^>\/$A-Za-z0-9_.-])(scripts|references|agents|cache|completions|utils|tests|bin|skills)\// { report("bare path prefix") }
    /(^|[^>\/$A-Za-z0-9_.-])install\.sh/ { report("bare install.sh") }
    /(^|[^>\/$A-Za-z0-9_.-])(preflight|assemble|verify-completion|format-choice-fns|set-choice-fn|compare-help|extract-cmd-context|reset-cache|lib)\.sh/ { report("bare skill script") }
    /(^|[^>\/$A-Za-z0-9_.-])(validate-fragment|inspect-fragment-items|inspect-script-params)\.jq/ { report("bare skill jq") }
    /(^|[^>\/$A-Za-z0-9_.-])(generate-structure|add-choice-fns|compgen|verify|fragment-schema)\.md/ { report("bare reference filename") }
    /(^|[^>\/$A-Za-z0-9_.-])compile\.md/ { report("bare compile.md") }
    /(^|[^>\/$A-Za-z0-9_.-])SKILL\.md/ { report("bare SKILL.md") }
    /<repo>|<skill>|\.agents\/skills\/argc-completions-generate/ { report("legacy root placeholder") }
    END { exit failed }
    ' "$@"
}
extract_frontmatter() {
    gawk 'NR == 1 && $0 == "---" { inside = 1; next } inside && $0 == "---" { exit } inside { print }' "$1"
}

command -v argc >/dev/null || { echo "argc is required (run ./install.sh)" >&2; exit 1; }
command -v jq >/dev/null || { echo "jq is required (run ./install.sh)" >&2; exit 1; }
command -v gawk >/dev/null || { echo "gawk is required (run ./install.sh)" >&2; exit 1; }

# ---------------------------------------------------------------------------
# Skill layout
# ---------------------------------------------------------------------------
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

for ref in generate-structure.md add-choice-fns.md compgen.md verify.md \
           fragment-schema.md setup.md troubleshooting.md; do
    check "reference $ref" test -f "$SKILL_DIR/references/$ref"
done

# SKILL.md is injected in full on every invocation; keep it a thin router.
skill_bytes="$(wc -c <"$SKILL_DIR/SKILL.md" | tr -d '[:space:]')"
check "SKILL.md size budget" test "$skill_bytes" -le 12288
for ref in "$SKILL_DIR"/references/*.md; do
    check "SKILL.md routes $(basename "$ref")" \
        grep -Fq "$(basename "$ref")" "$SKILL_DIR/SKILL.md"
done

# References are read by section: keep each one browsable, compgen.md from
# regrowing after its helper index replaced the per-helper prose, and the index
# in sync with the helper library.
compgen_md="$SKILL_DIR/references/compgen.md"
for ref in "$SKILL_DIR"/references/*.md; do
    name="$(basename "$ref")"
    limit=14500
    [ "$name" = "compgen.md" ] && limit=31000
    ref_bytes="$(wc -c <"$ref" | tr -d '[:space:]')"
    check "reference size budget $name" test "$ref_bytes" -le "$limit"
done
check "compgen line budget" test "$(wc -l <"$compgen_md" | tr -d '[:space:]')" -le 680
check "compgen documents every _argc_util_* helper" bash -c '
    compgen_md="$1"
    util="$2"
    missing=0
    while read -r fn; do
        grep -Fq "\`$fn" "$compgen_md" || {
            echo "undocumented helper: $fn" >&2
            missing=1
        }
    done < <(grep -o "^_argc_util_[a-z_]*" "$util" | sort -u)
    exit "$missing"
' _ "$compgen_md" "$ROOT_DIR/utils/_argc_utils.sh"
check "compgen sections 1-8" bash -c '
    n=1
    while [ "$n" -le 8 ]; do
        grep -q "^## $n\. " "$1" || {
            echo "missing section $n" >&2
            exit 1
        }
        n=$((n + 1))
    done
' _ "$compgen_md"
check "compgen section map rows" bash -c '
    rows="$(gawk "/^## Section map/ { inside = 1; next } inside && /^## / { exit } inside && /^\| §/ { n++ } END { print n + 0 }" "$1")"
    test "$rows" = 8
' _ "$compgen_md"
assert_contains "compgen helper index" "$compgen_md" "### Helper index"
check "compile agent contract" test -f "$SKILL_DIR/agents/compile.md"
check "reset-cache script" test -x "$SCRIPTS/reset-cache.sh"
check "format-choice-fns script" test -x "$SCRIPTS/format-choice-fns.sh"
check "format-choice-fns syntax" bash -n "$SCRIPTS/format-choice-fns.sh"
check "set-choice-fn script" test -x "$SCRIPTS/set-choice-fn.sh"
check "set-choice-fn syntax" bash -n "$SCRIPTS/set-choice-fn.sh"
for script in inspect-fragment-items.jq inspect-script-params.jq; do
    check "inspection script $script" test -f "$SCRIPTS/$script"
done

# Unique doc contracts with no executable counterpart: canonicalization, the
# machine-local path rule, and choice de-duplication.
assert_contains "compile contract schema pointer" "$SKILL_DIR/agents/compile.md" "<SKILL_ROOT>/references/fragment-schema.md"
assert_contains "compile contract home path rule" "$SKILL_DIR/agents/compile.md" '(`$HOME/...`)'
assert_contains "compile contract machine-local path" "$SKILL_DIR/agents/compile.md" "machine-local path"
assert_contains "compile contract canonicalizer" "$SKILL_DIR/agents/compile.md" "canonicalize_help_file"
assert_contains "compile contract duplicate choices" "$SKILL_DIR/agents/compile.md" "Remove duplicated"
assert_contains "compile contract placeholder case" "$SKILL_DIR/agents/compile.md" "Preserve each placeholder's text and case"
assert_contains "compile contract help flag" "$SKILL_DIR/agents/compile.md" "Include \`--help\` and \`--version\` only when the help lists them"
assert_contains "compile contract canonicalizer output" "$SKILL_DIR/agents/compile.md" "canonicalize_help_file raw-help.txt _root.new.txt"
assert_not_contains "compile contract no ambiguous help target" "$SKILL_DIR/agents/compile.md" '"<help-target>"'
assert_contains "compile contract no validator read" "$SKILL_DIR/agents/compile.md" "and you do not read it"
assert_contains "compile contract no synthetic arg description" "$SKILL_DIR/agents/compile.md" "never synthesize one from its name"
assert_contains "compile contract no skill load" "$SKILL_DIR/agents/compile.md" "Do not call the \`skill\` tool"
assert_contains "compile contract canonical comparison" "$SKILL_DIR/agents/compile.md" 'never use `diff` to compare raw help with canonical help'
assert_contains "compile contract probe determinism" "$SKILL_DIR/agents/compile.md" "The probe is deterministic"
assert_contains "schema colon enumeration" "$SKILL_DIR/references/fragment-schema.md" "colon-introduced comma list"
assert_contains "structure batch compile reads" "$SKILL_DIR/references/generate-structure.md" "fragment-schema.md in one batch"
assert_contains "structure no sleep poll" "$SKILL_DIR/references/generate-structure.md" "Do not poll a compile child"
assert_contains "choice docs generic compgen" "$SKILL_DIR/references/add-choice-fns.md" "--argc-compgen generic"
assert_contains "compgen candidate checks" "$SKILL_DIR/references/compgen.md" "Candidate checks"
assert_contains "compgen generic assertions" "$SKILL_DIR/references/compgen.md" "--argc-compgen generic"
assert_not_contains "compgen no shell candidate lore" "$SKILL_DIR/references/compgen.md" "COMP_WORDBREAKS"
# The workflow and the specification keep separate homes.
assert_contains "compgen workflow pointer" "$SKILL_DIR/references/compgen.md" "<SKILL_ROOT>/references/add-choice-fns.md"
assert_contains "compgen section map" "$SKILL_DIR/references/compgen.md" "## Section map"
assert_contains "skill section map pointer" "$SKILL_DIR/SKILL.md" "Section map"
check "value types library removed" test ! -e "$ROOT_DIR/utils/_value_types.sh"
assert_not_contains "compgen no shared completers" "$SKILL_DIR/references/compgen.md" "shared completer"
assert_not_contains "choice docs no shared completers" "$SKILL_DIR/references/add-choice-fns.md" "shared completer"
assert_not_contains "skill no shared completers" "$SKILL_DIR/SKILL.md" "shared completer"
assert_not_contains "compgen no value types library" "$SKILL_DIR/references/compgen.md" "utils/_value_types.sh"
assert_not_contains "choice docs no value types library" "$SKILL_DIR/references/add-choice-fns.md" "utils/_value_types.sh"
assert_not_contains "skill no value types library" "$SKILL_DIR/SKILL.md" "utils/_value_types.sh"
check "skill no shared completer helpers" bash -c "! grep -RqE '_value_types|shared completer|_user_value|_hostname_value' '$SKILL_DIR'"
assert_not_contains "assemble no value types library" "$SCRIPTS/assemble.sh" "_value_types"
assert_not_contains "verify no value types library" "$SCRIPTS/verify-completion.sh" "_value_types"
assert_contains "compgen helper guard" "$SKILL_DIR/references/compgen.md" 'utils/_argc_utils.sh'
assert_contains "compgen executable helper" "$SKILL_DIR/references/compgen.md" '#### `_argc_util_comp_command`'
assert_contains "compgen subcommand helper" "$SKILL_DIR/references/compgen.md" '#### `_argc_util_comp_subcommand <index> [prepend...]`'
assert_contains "choice docs subcommand helper" "$SKILL_DIR/references/add-choice-fns.md" '_argc_util_comp_subcommand 0'
assert_not_contains "compgen no stale command args helper" "$SKILL_DIR/references/compgen.md" '_argc_util_comp_command_args'
assert_not_contains "choice docs no stale command args helper" "$SKILL_DIR/references/add-choice-fns.md" '_argc_util_comp_command_args'
check "skill docs no stale command args helper" bash -c "! grep -RF '_argc_util_comp_command_args' '$SKILL_DIR'"
assert_not_contains "compgen no shell command source" "$SKILL_DIR/references/compgen.md" 'compgen -c'
# The leading `?` on a rendered dynamic candidate source is an assembly detail;
# no document explains it.
assert_not_contains "choice docs no marker hint" "$SKILL_DIR/references/add-choice-fns.md" "advisory hint"
assert_not_contains "schema docs no marker hint" "$SKILL_DIR/references/fragment-schema.md" "advisory hint"
assert_not_contains "verify docs no marker hint" "$SKILL_DIR/references/verify.md" "verify does not check the marker"
check "no doc explains the choice marker" bash -c "! grep -RqE 'advisory hint|optional hint' '$SKILL_DIR'"
assert_contains "skill regenerate routing" "$SKILL_DIR/SKILL.md" "| \`regenerate\` |"
assert_contains "skill regenerate trigger" "$SKILL_DIR/SKILL.md" "Explicit regenerate intent overrides the cache state"
assert_contains "skill reset-cache step" "$SKILL_DIR/SKILL.md" "reset-cache.sh"
assert_contains "generate-structure subtree usage" "$SKILL_DIR/references/generate-structure.md" "reset-cache.sh <root> <sub...>"
assert_contains "compile reset cache probe" "$SKILL_DIR/agents/compile.md" "If the cache directory was reset"
assert_contains "compile subtree cache result" "$SKILL_DIR/agents/compile.md" "cache=n/a"

# The structure workflow hands off to add-choice-fns on a semantic reading of
# the exported values; there is no keyword gate script.
assert_contains "skill generate-structure routing" "$SKILL_DIR/SKILL.md" '| `generate-structure` |'
assert_contains "skill all default" "$SKILL_DIR/SKILL.md" 'a brand-new command defaults to `all`'
assert_contains "skill all routing" "$SKILL_DIR/SKILL.md" '| `all` | Brand-new command (`existing=0`)'
assert_contains "skill next step" "$SKILL_DIR/SKILL.md" "next=add-choice-fns"
assert_contains "structure handoff explicit" "$SKILL_DIR/references/generate-structure.md" "handoff, not an automatic continuation"
assert_contains "generate-structure handoff params" "$SKILL_DIR/references/generate-structure.md" "inspect-script-params.jq"
assert_not_contains "compile no value-type inference" "$SKILL_DIR/agents/compile.md" "Value type inference"
assert_not_contains "compile no value_type field" "$SKILL_DIR/agents/compile.md" "value_type"
assert_not_contains "skill no value_type field" "$SKILL_DIR/SKILL.md" '`value_type`'
assert_not_contains "fragment schema no value_type" "$SKILL_DIR/references/fragment-schema.md" '"value_type"'
assert_not_contains "fragment items no value_type" "$SCRIPTS/inspect-fragment-items.jq" "value_type"

# Export probing rules and the choice-fn binding contract.
assert_contains "choice docs export schema" "$SKILL_DIR/references/add-choice-fns.md" "no top-level \`.options\` array"
assert_contains "choice docs split binding" "$SKILL_DIR/references/add-choice-fns.md" "set \`choice_fn\` on **every** item"
assert_contains "choice docs binding script" "$SKILL_DIR/references/add-choice-fns.md" "set-choice-fn.sh"
assert_contains "choice docs multi-name binding" "$SKILL_DIR/references/add-choice-fns.md" "--eval-command -ex"
assert_contains "choice docs terminated binding" "$SKILL_DIR/references/add-choice-fns.md" '--terminated "$fragment"'
assert_not_contains "choice docs no inline binding jq" "$SKILL_DIR/references/add-choice-fns.md" ".items |= map("
assert_contains "choice docs single-item query" "$SKILL_DIR/references/add-choice-fns.md" ".flag_options[] | select(.id =="
assert_contains "compgen __argc_value notation" "$SKILL_DIR/references/compgen.md" "__argc_value=<NOTATION>"
assert_contains "skill merged stream ban" "$SKILL_DIR/SKILL.md" "2>&1 | jq"
# Doc authorship (maintainers): workflow-local rules live only in their owner
# file (SKILL.md §Rule ownership); SKILL.md keeps cross-cutting invariants and
# links out. The guards below reject distinctive phrases from rules that moved
# out, so a copy cannot drift back into the router.
assert_contains "skill rule ownership" "$SKILL_DIR/SKILL.md" "## Rule ownership"
assert_not_contains "skill no bounded-query rule" "$SKILL_DIR/SKILL.md" "bound slow queries"
assert_not_contains "skill no root-guard rule" "$SKILL_DIR/SKILL.md" "Never guard the completion's own root command"
assert_not_contains "skill no yq policy rule" "$SKILL_DIR/SKILL.md" "allowed only inside functions"
assert_not_contains "skill no git-status rule" "$SKILL_DIR/SKILL.md" 'Do not use `git status` to confirm output'
assert_not_contains "skill no format rule" "$SKILL_DIR/SKILL.md" "format-choice-fns.sh"
assert_not_contains "skill no generic-assertion rule" "$SKILL_DIR/SKILL.md" "Candidate assertions use"
assert_not_contains "skill no completions-inspection rule" "$SKILL_DIR/SKILL.md" 'Do not inspect `<REPO_ROOT>/completions/`'
assert_not_contains "skill no sort rule" "$SKILL_DIR/SKILL.md" "LC_ALL=C"
assert_contains "compgen bounded queries" "$SKILL_DIR/references/compgen.md" "A candidate query must be read-only and bounded"
assert_contains "setup yq policy" "$SKILL_DIR/references/setup.md" "allowed only inside functions"
assert_contains "setup git status ban" "$SKILL_DIR/references/setup.md" 'never `git status`'
assert_contains "structure no completions inspect" "$SKILL_DIR/references/generate-structure.md" 'Do not inspect `<REPO_ROOT>/completions/`'
assert_contains "compile help scope" "$SKILL_DIR/agents/compile.md" "Sibling and child help are off limits"
assert_contains "choice docs helper naming" "$SKILL_DIR/references/add-choice-fns.md" "_helper_*"
assert_contains "choice docs ascii order" "$SKILL_DIR/references/add-choice-fns.md" "LC_ALL=C"
assert_contains "choice docs format script" "$SKILL_DIR/references/add-choice-fns.md" "format-choice-fns.sh"
assert_contains "verify docs format script" "$SKILL_DIR/references/verify.md" "format-choice-fns.sh"

# Troubleshooting and setup are optional reads reached from every workflow.
check "references link troubleshooting" test -z "$(grep -L troubleshooting.md "$SKILL_DIR/references/generate-structure.md" "$SKILL_DIR/references/add-choice-fns.md" "$SKILL_DIR/references/verify.md" "$SKILL_DIR/references/compgen.md")"
check "references link setup" test -z "$(grep -L setup.md "$SKILL_DIR/references/add-choice-fns.md" "$SKILL_DIR/references/compgen.md")"

# The repository keeps only the _argc_utils.sh helper library.
check "argc utils library present" test -f "$ROOT_DIR/utils/_argc_utils.sh"
assert_contains "compgen sources helpers" "$SKILL_DIR/references/compgen.md" '. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"'

# Path convention guards: every skill doc uses the two documented roots.
skill_docs=("$SKILL_DIR/SKILL.md" "$SKILL_DIR"/references/*.md "$SKILL_DIR"/agents/*.md)
check "docs path prefixes" path_prefix_lint "${skill_docs[@]}"
printf 'cache/compile/<root>\n' >"$TMP_DIR/bare-path.md"
if path_prefix_lint "$TMP_DIR/bare-path.md" >/dev/null 2>&1; then
    fail "path lint detects bare prefix"
else
    pass "path lint detects bare prefix"
fi
printf '<ARGC_COMPLETIONS_ROOT>/cache/compile/<root>\n' >"$TMP_DIR/rooted-path.md"
check "path lint accepts rooted path" path_prefix_lint "$TMP_DIR/rooted-path.md"
assert_contains "skill root documented" "$SKILL_DIR/SKILL.md" "<SKILL_ROOT>"
assert_contains "repo root documented" "$SKILL_DIR/SKILL.md" "<REPO_ROOT>"
assert_contains "repo root env documented" "$SKILL_DIR/SKILL.md" "ARGC_COMPLETIONS_ROOT"
assert_contains "assemble usage repo root" "$SCRIPTS/assemble.sh" "<REPO_ROOT>/cache/compile/<root>"

# argc 1.24 has no `choice-fn` subcommand; docs must not recommend it as a command.
check "docs avoid stale choice-fn usage" bash -c "! grep -RF 'argc choice-fn <' '$SKILL_DIR' --include='*.md'"

# ---------------------------------------------------------------------------
# compare-help.sh
# ---------------------------------------------------------------------------
printf 'a\r\nb  \n\n' >"$TMP_DIR/help-old.txt"
printf 'a\nb\n' >"$TMP_DIR/help-new.txt"
check "compare-help same after canonicalization" \
    bash "$SCRIPTS/compare-help.sh" "$TMP_DIR/help-old.txt" "$TMP_DIR/help-new.txt"
printf 'a\nc\n' >"$TMP_DIR/help-diff.txt"
expect_failure "compare-help different" \
    bash "$SCRIPTS/compare-help.sh" "$TMP_DIR/help-old.txt" "$TMP_DIR/help-diff.txt"
expect_failure "compare-help missing file" \
    bash "$SCRIPTS/compare-help.sh" "$TMP_DIR/no-such-help.txt" "$TMP_DIR/help-new.txt"

# canonicalize_help_file must reject a non-.txt output name (compile contract).
guard_in="$TMP_DIR/help-guard-in.txt"
printf 'demo --help\n' >"$guard_in"
if ( source "$SCRIPTS/lib.sh"; canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out" ) >/dev/null 2>&1; then
    fail "canonicalize rejects non-txt output (unexpected success)"
else
    pass "canonicalize rejects non-txt output"
fi
check "canonicalize guard leaves non-txt output absent" test ! -e "$TMP_DIR/help-guard-out"
if ( source "$SCRIPTS/lib.sh"; canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out.txt" ) >/dev/null 2>&1; then
    pass "canonicalize accepts txt output"
else
    fail "canonicalize accepts txt output"
fi
check "canonicalize guard writes txt output" test -s "$TMP_DIR/help-guard-out.txt"

# Root-help cache probe semantics.
cache_test="$TMP_DIR/cache-probe"
mkdir -p "$cache_test/sub"
printf 'demo --help\n  --foo  Foo\n' >"$cache_test/_root.txt"
printf '{"schemaVersion":1,"path":["demo"]}\n' >"$cache_test/_root.json"
printf '{"schemaVersion":1,"path":["demo","sub"]}\n' >"$cache_test/sub.json"
printf 'demo --help\r\n  --foo  Foo   \n\n' >"$TMP_DIR/root-same.txt"
printf 'demo --help\n  --foo  Bar\n' >"$TMP_DIR/root-diff.txt"
check "root cache hit" bash "$SCRIPTS/compare-help.sh" "$cache_test/_root.txt" "$TMP_DIR/root-same.txt"
check "root cache child retained on hit" test -f "$cache_test/sub.json"
expect_failure "root cache miss" bash "$SCRIPTS/compare-help.sh" "$cache_test/_root.txt" "$TMP_DIR/root-diff.txt"
find "$cache_test" -mindepth 1 -maxdepth 1 ! -name '_root.json' ! -name '_root.txt' -exec rm -rf {} +
check "root cache keeps new root files" test -f "$cache_test/_root.json"
check "root cache clears children on miss" test ! -e "$cache_test/sub.json"

# ---------------------------------------------------------------------------
# preflight.sh
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/bin"
cat >"$TMP_DIR/bin/demo" <<'DEMO'
#!/usr/bin/env bash
case "$1" in
    --help) echo "Usage: demo [OPTIONS]"; echo "Options:"; echo "  -v, --verbose  Verbose";;
    remote) echo "Usage: demo remote";;
    *) :;;
esac
DEMO
chmod +x "$TMP_DIR/bin/demo"
PATH="$TMP_DIR/bin:$PATH"

cp "$FIXTURES/contexts/context.sh" "$TMP_DIR/existing.sh"
preflight_out="$TMP_DIR/preflight.txt"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" --output "$TMP_DIR/out.sh" >"$preflight_out"
check "preflight existing" grep -q '^existing=1$' "$preflight_out"
check "preflight skill root" grep -q "^skill_root=$SKILL_DIR$" "$preflight_out"
check "preflight cache dir" grep -q "^cache_dir=$ROOT_DIR/cache/compile/demo$" "$preflight_out"
check "preflight root help path" grep -q "^root_help=$ROOT_DIR/cache/compile/demo/_root.txt$" "$preflight_out"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --stdout >"$TMP_DIR/preflight-new.sh"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/preflight-new.sh" >"$TMP_DIR/preflight-new2.txt"
check "preflight blocks new" grep -q '^blocks=new$' "$TMP_DIR/preflight-new2.txt"
check "preflight prompt region" grep -q '^prompt_region=1$' "$TMP_DIR/preflight-new2.txt"
quiet bash "$SCRIPTS/preflight.sh" demo --output "$TMP_DIR/new-out.sh" >"$TMP_DIR/preflight-missing.txt"
check "preflight missing completion" grep -q '^existing=0$' "$TMP_DIR/preflight-missing.txt"
check "preflight missing blocks" grep -q '^blocks=missing$' "$TMP_DIR/preflight-missing.txt"
check "preflight does not create cache" test ! -d "$ROOT_DIR/cache/compile/demo"
expect_failure "preflight missing command" bash "$SCRIPTS/preflight.sh" no-such-command-xyz

# ---------------------------------------------------------------------------
# reset-cache.sh
# ---------------------------------------------------------------------------
reset_root="demo-reset-$$"
reset_cache="$ROOT_DIR/cache/compile/$reset_root"
keep_root="demo-keep-$$"
keep_cache="$ROOT_DIR/cache/compile/$keep_root"
mkdir -p "$reset_cache/sub" "$keep_cache"
printf '{"schemaVersion":1}\n' >"$reset_cache/_root.json"
printf 'demo --help\n' >"$reset_cache/_root.txt"
printf 'demo --help\n' >"$reset_cache/_root.new.txt"
printf '{}\n' >"$reset_cache/sub.json"
printf '{}\n' >"$reset_cache/sub/nested.json"
printf 'keep\n' >"$keep_cache/_root.txt"
reset_out="$TMP_DIR/reset-cache.txt"
check_to "$reset_out" "reset-cache full runs" bash "$SCRIPTS/reset-cache.sh" "$reset_root"
assert_contains "reset-cache full mode" "$reset_out" 'mode=full'
assert_contains "reset-cache reports reset" "$reset_out" 'reset=1'
assert_contains "reset-cache reports cache dir" "$reset_out" "cache_dir=$reset_cache"
assert_contains "reset-cache reports root fragment" "$reset_out" "fragment=$reset_cache/_root.json"
assert_contains "reset-cache reports root help" "$reset_out" "help=$reset_cache/_root.txt"
check "reset-cache recreates cache dir" test -d "$reset_cache"
check "reset-cache clears fragments" bash -c "test -z \"\$(ls -A '$reset_cache')\""
check "reset-cache keeps other roots" test -f "$keep_cache/_root.txt"
check "reset-cache idempotent" bash "$SCRIPTS/reset-cache.sh" "$reset_root"
expect_failure "reset-cache rejects invalid root" bash "$SCRIPTS/reset-cache.sh" "bad/root"
rm -rf "$reset_cache" "$keep_cache"

# Subtree reset: target + descendants only.
subtree_root="demo-subtree-$$"
subtree_cache="$ROOT_DIR/cache/compile/$subtree_root"
mkdir -p "$subtree_cache/add" "$subtree_cache/other/nested"
cat >"$subtree_cache/_root.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$subtree_root"],
  "description": "Demo",
  "aliases": [],
  "meta": [],
  "items": [],
  "subcommands": [
    {"name": "add", "aliases": ["a"], "description": "Add", "status": "succeeded"},
    {"name": "other", "aliases": [], "description": "Other", "status": "succeeded"}
  ],
  "source": {"kind": "none"},
  "notes": ""
}
JSON
cat >"$subtree_cache/other.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$subtree_root", "other"],
  "description": "Other",
  "aliases": [],
  "meta": [],
  "items": [],
  "subcommands": [
    {"name": "nested", "aliases": [], "description": "Nested", "status": "succeeded"}
  ],
  "source": {"kind": "none"},
  "notes": ""
}
JSON
printf 'demo --help\n' >"$subtree_cache/_root.txt"
printf '{"schemaVersion":1,"path":["%s","add"]}\n' "$subtree_root" >"$subtree_cache/add.json"
printf 'add --help\n' >"$subtree_cache/add.txt"
printf '{"schemaVersion":1,"path":["%s","add","nested"]}\n' "$subtree_root" >"$subtree_cache/add/nested.json"
printf 'nested --help\n' >"$subtree_cache/add/nested.txt"
printf 'other --help\n' >"$subtree_cache/other.txt"
printf '{"schemaVersion":1,"path":["%s","other","nested"]}\n' "$subtree_root" >"$subtree_cache/other/nested.json"
printf 'nested --help\n' >"$subtree_cache/other/nested.txt"

# Alias and undeclared paths fail before deleting anything.
if bash "$SCRIPTS/reset-cache.sh" "$subtree_root" a 2>"$TMP_DIR/reset-alias.txt"; then
    fail "reset-cache rejects alias (unexpected success)"
else
    pass "reset-cache rejects alias"
fi
assert_contains "reset-cache alias hint" "$TMP_DIR/reset-alias.txt" "canonical name: add"
check "reset-cache alias keeps fragments" test -f "$subtree_cache/add.json"
if bash "$SCRIPTS/reset-cache.sh" "$subtree_root" missing 2>"$TMP_DIR/reset-missing.txt"; then
    fail "reset-cache rejects undeclared subcommand (unexpected success)"
else
    pass "reset-cache rejects undeclared subcommand"
fi
assert_contains "reset-cache undeclared hint" "$TMP_DIR/reset-missing.txt" "subcommand not declared"
check "reset-cache undeclared keeps fragments" test -f "$subtree_cache/_root.json"

# Path escape guard.
mkdir -p "$ROOT_DIR/cache/reset-sentinel"
printf 'keep\n' >"$ROOT_DIR/cache/reset-sentinel/keep"
expect_failure "reset-cache rejects dotdot root" bash "$SCRIPTS/reset-cache.sh" ..
expect_failure "reset-cache rejects dotdot subcommand" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" ..
expect_failure "reset-cache rejects dot subcommand" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" .
check "reset-cache refuses path escape" test -f "$ROOT_DIR/cache/reset-sentinel/keep"
rm -rf "$ROOT_DIR/cache/reset-sentinel"

# Subtree reset of add.
subtree_out="$TMP_DIR/reset-cache-subtree.txt"
check_to "$subtree_out" "reset-cache subtree runs" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" add
assert_contains "reset-cache subtree mode" "$subtree_out" 'mode=subtree'
assert_contains "reset-cache subtree path" "$subtree_out" "path=$subtree_root add"
assert_contains "reset-cache subtree fragment" "$subtree_out" "fragment=$subtree_cache/add.json"
assert_contains "reset-cache subtree parent" "$subtree_out" "parent_fragment=$subtree_cache/_root.json"
check "reset-cache subtree removes fragment" test ! -e "$subtree_cache/add.json"
check "reset-cache subtree removes help" test ! -e "$subtree_cache/add.txt"
check "reset-cache subtree removes descendants" test ! -e "$subtree_cache/add/nested.json"
check "reset-cache subtree keeps root help" test -f "$subtree_cache/_root.txt"
check "reset-cache subtree keeps sibling fragment" test -f "$subtree_cache/other.json"
check "reset-cache subtree keeps sibling help" test -f "$subtree_cache/other.txt"
check "reset-cache subtree keeps sibling descendant" test -f "$subtree_cache/other/nested.json"
check "reset-cache subtree marks todo" test "$(jq -r --arg name add '.subcommands[] | select(.name == $name) | .status' "$subtree_cache/_root.json")" = todo
check "reset-cache subtree keeps sibling status" test "$(jq -r --arg name other '.subcommands[] | select(.name == $name) | .status' "$subtree_cache/_root.json")" = succeeded
check "reset-cache subtree idempotent" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" add

# Nested target updates its immediate parent only.
nested_out="$TMP_DIR/reset-cache-nested.txt"
check_to "$nested_out" "reset-cache nested runs" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" other nested
assert_contains "reset-cache nested parent" "$nested_out" "parent_fragment=$subtree_cache/other.json"
check "reset-cache nested removes fragment" test ! -e "$subtree_cache/other/nested.json"
check "reset-cache nested removes help" test ! -e "$subtree_cache/other/nested.txt"
check "reset-cache nested marks todo" test "$(jq -r '.subcommands[] | select(.name == "nested") | .status' "$subtree_cache/other.json")" = todo
check "reset-cache nested keeps root status" test "$(jq -r '.subcommands[] | select(.name == "other") | .status' "$subtree_cache/_root.json")" = succeeded
rm -rf "$subtree_cache"

# Subtree reset blocks assembly until the subtree is recompiled.
mkdir -p "$ROOT_DIR/cache/compile/demo"
cp -R "$FIXTURES/fragments/no-choice/." "$ROOT_DIR/cache/compile/demo/"
quiet bash "$SCRIPTS/reset-cache.sh" demo remote >/dev/null
check "reset-cache subtree removes remote fragment" test ! -e "$ROOT_DIR/cache/compile/demo/remote.json"
check "reset-cache subtree marks root child todo" test "$(jq -r '.subcommands[] | select(.name == "remote") | .status' "$ROOT_DIR/cache/compile/demo/_root.json")" = todo
expect_failure "assemble blocks after subtree reset" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$ROOT_DIR/cache/compile/demo" --stdout
rm -rf "$ROOT_DIR/cache/compile/demo"

# Reset makes preflight report no cached root help, which forces cache=new.
mkdir -p "$ROOT_DIR/cache/compile/demo"
printf 'demo --help\n' >"$ROOT_DIR/cache/compile/demo/_root.txt"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" >"$TMP_DIR/preflight-before-reset.txt"
check "preflight sees root help before reset" grep -q '^root_help_exists=1$' "$TMP_DIR/preflight-before-reset.txt"
quiet bash "$SCRIPTS/reset-cache.sh" demo >/dev/null
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" >"$TMP_DIR/preflight-after-reset.txt"
check "preflight sees no root help after reset" grep -q '^root_help_exists=0$' "$TMP_DIR/preflight-after-reset.txt"
check "reset removes cached root help" test ! -f "$ROOT_DIR/cache/compile/demo/_root.txt"
rm -rf "$ROOT_DIR/cache/compile/demo"

# ---------------------------------------------------------------------------
# extract-cmd-context.sh
# ---------------------------------------------------------------------------
cat >"$TMP_DIR/context-expected.txt" <<'EXPECTED'
# >>> meta
# @meta inherit-flag-options
# <<< meta

# >>> llm-prompt
# - prompt for demo remote
# <<< llm-prompt

# >>> choice-fns
# @option --foo[`_choice_foo`] <VALUE>  Foo description with `backticks`
# @arg v1[`_choice_val`]
# <<< choice-fns
EXPECTED
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo remote --completion "$FIXTURES/contexts/context.sh" >"$TMP_DIR/context-actual.txt"
check "extract new-layout context order" diff -u "$TMP_DIR/context-expected.txt" "$TMP_DIR/context-actual.txt"
: >"$TMP_DIR/empty-context.txt"
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo-missing-script >"$TMP_DIR/empty-context.txt"
check "extract missing script empty" test ! -s "$TMP_DIR/empty-context.txt"
quiet bash "$SCRIPTS/extract-cmd-context.sh" demo --completion "$FIXTURES/contexts/context.sh" >"$TMP_DIR/root-context.txt"
assert_contains "extract root prompt" "$TMP_DIR/root-context.txt" '# - prompt for demo'
assert_contains "extract root choice" "$TMP_DIR/root-context.txt" '# @option --root-choice[`_choice_root`] <V>'
choice_line="$(grep -n '^# >>> choice-fns$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
prompt_line="$(grep -n '^# >>> llm-prompt$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
meta_line="$(grep -n '^# >>> meta$' "$TMP_DIR/root-context.txt" | cut -d: -f1)"
check "extract section order" test "$meta_line" -lt "$prompt_line" -a "$prompt_line" -lt "$choice_line"

# ---------------------------------------------------------------------------
# assemble.sh: new script, no context
# ---------------------------------------------------------------------------
new_script="$TMP_DIR/new.sh"
quiet bash "$SCRIPTS/assemble.sh" demo -c "$FIXTURES/fragments/no-choice" --stdout >"$new_script"
check "assemble new bash syntax" bash -n "$new_script"
check "assemble new argc export" bash -c "argc --argc-export '$new_script' >/dev/null"
check "assemble new block markers" bash -c "grep -Fq '# >>> llm-generate' '$new_script' && grep -Fq '# >>> llm-prompt' '$new_script' && grep -Fq '# >>> choice-fns' '$new_script'"
assert_contains "assemble new static choices" "$new_script" '--format[text|json]'
assert_contains "assemble new nested command" "$new_script" 'remote::add() {'
assert_contains "assemble new subcommand alias" "$new_script" '# @alias r'
assert_contains "assemble new shadow function" "$new_script" 'cat_() {'
assert_contains "assemble arg optional" "$new_script" '# @arg v1 <V1>'
assert_contains "assemble arg required" "$new_script" '# @arg name! <NAME>'
check "assemble aligns flag description at column 49" \
    gawk '/^# @flag -v --verbose / { found = index($0, "Verbose output") == 49 } END { exit !found }' "$new_script"

# Long tags fall back to a plain two-space separator instead of being padded.
mkdir -p "$TMP_DIR/fragments-align"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-align/"
jq '.items += [{"kind": "option", "names": ["--tiebreak"], "notations": ["<CRI>"], "choices": ["length", "chunk", "pathname", "begin", "end", "index"], "repeatable": false, "description": "Comma-separated list of sort criteria"}]' \
    "$TMP_DIR/fragments-align/_root.json" >"$TMP_DIR/align-root.json" && \
    mv "$TMP_DIR/align-root.json" "$TMP_DIR/fragments-align/_root.json"
align_script="$TMP_DIR/align.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-align" --stdout >"$align_script"
check "assemble long tag keeps two spaces" \
    gawk 'index($0, "# @option --tiebreak[length|chunk|pathname|begin|end|index] <CRI>  Comma-separated list") == 1 { found = 1 } END { exit !found }' "$align_script"
assert_not_contains "assemble new no choice fn" "$new_script" '_choice_'
check "assemble new empty prompt block" bash -c "grep -A1 '^# >>> llm-prompt$' '$new_script' | grep -q '^# <<< llm-prompt$'"
check "verify new no-choice" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$FIXTURES/fragments/no-choice" --skip-compgen --require-no-choice-fns

# ---------------------------------------------------------------------------
# assemble.sh: context preservation and exact block
# ---------------------------------------------------------------------------
with_script="$TMP_DIR/demo-with.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" \
    --context "$FIXTURES/contexts/context.sh" --stdout >"$with_script"
check "assemble with context syntax" bash -n "$with_script"

# Compact inspection scripts (avoid reading whole fragments/exports).
jq -r -f "$SCRIPTS/inspect-fragment-items.jq" "$FIXTURES/fragments/with-choice/_root.json" >"$TMP_DIR/fragment-items.txt"
check "fragment items header" bash -c "head -n 1 '$TMP_DIR/fragment-items.txt' | grep -q '^items=3 subcommands=2 choice_fns=0$'"
check "fragment items row" bash -c "grep -q 'text|json' '$TMP_DIR/fragment-items.txt'"
argc --argc-export "$with_script" >"$TMP_DIR/demo-with-export.json"
jq -r -f "$SCRIPTS/inspect-script-params.jq" "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params.txt"
check "script params command header" bash -c "head -n 1 '$TMP_DIR/script-params.txt' | grep -qx '# command demo-with'"
check "script params options" bash -c "grep -q '^# options$' '$TMP_DIR/script-params.txt'"
check "script params positionals" bash -c "grep -q '^# positionals$' '$TMP_DIR/script-params.txt'"

jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'remote add' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params-sub.txt"
check "script params subcommand header" bash -c "head -n 1 '$TMP_DIR/script-params-sub.txt' | grep -qx '# command demo-with remote add'"
check "script params subcommand row" gawk -F '\t' '$1 == "name" && $2 == "NAME" && $3 == "true" { found = 1 } END { exit !found }' "$TMP_DIR/script-params-sub.txt"
check "script params subcommand drops parent" bash -c "! grep -q '^output' '$TMP_DIR/script-params-sub.txt'"

jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'demo-with remote add' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params-sub-rooted.txt"
check "script params optional root name" diff -u "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-sub-rooted.txt"
jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd '  remote   add  ' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/script-params-sub-spaced.txt"
check "script params whitespace path" diff -u "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-sub-spaced.txt"

jq '(.subcommands[] | select(.name == "remote") | .aliases) = ["r"]' "$TMP_DIR/demo-with-export.json" >"$TMP_DIR/demo-with-alias.json"
jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'r add' "$TMP_DIR/demo-with-alias.json" >"$TMP_DIR/script-params-alias.txt"
check "script params alias path" diff -u "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-alias.txt"

if jq -r -f "$SCRIPTS/inspect-script-params.jq" --arg cmd 'remote bogus' "$TMP_DIR/demo-with-export.json" >/dev/null 2>"$TMP_DIR/script-params-error.txt"; then
    fail "script params unknown path"
else
    pass "script params unknown path"
fi
assert_contains "script params unknown path message" "$TMP_DIR/script-params-error.txt" "unknown command path"
assert_contains "script params unknown path children" "$TMP_DIR/script-params-error.txt" "available: add"

# ---------------------------------------------------------------------------
# set-choice-fn.sh
# ---------------------------------------------------------------------------
scf_script="$SCRIPTS/set-choice-fn.sh"
check "set-choice-fn script" test -x "$scf_script"
check "set-choice-fn syntax" bash -n "$scf_script"

scf_dir="$TMP_DIR/fragments-set-choice"
mkdir -p "$scf_dir"
cp -R "$FIXTURES/fragments/with-choice/." "$scf_dir/"

scf_out="$TMP_DIR/set-choice-option.txt"
check_to "$scf_out" "set-choice-fn option" bash "$scf_script" "$scf_dir/_root.json" _choice_out --output
assert_contains "set-choice-fn reports match" "$scf_out" "matched=1"
check "set-choice-fn option binding" test "$(jq -r '.items[] | select(.names | index("--output")) | .choice_fn' "$scf_dir/_root.json")" = _choice_out
check "set-choice-fn option choices" test "$(jq -r '.items[] | select(.names | index("--output")) | .choices | length' "$scf_dir/_root.json")" = 0

check "set-choice-fn arg" bash "$scf_script" "$scf_dir/remote/add.json" _choice_name name
check "set-choice-fn arg binding" test "$(jq -r '.items[] | select(.name == "name") | .choice_fn' "$scf_dir/remote/add.json")" = _choice_name

scf_split="$scf_dir/split.json"
jq -n '{schemaVersion:1,path:["demo","remote","add"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--eval-command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Eval"},
  {kind:"option",names:["-ex"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Eval"}
],subcommands:[],source:{kind:"none"},notes:""}' >"$scf_split"
check "set-choice-fn split option" bash "$scf_script" "$scf_split" _choice_value --eval-command -ex
check "set-choice-fn split first" test "$(jq -r '.items[] | select(.names | index("--eval-command")) | .choice_fn' "$scf_split")" = _choice_value
check "set-choice-fn split second" test "$(jq -r '.items[] | select(.names | index("-ex")) | .choice_fn' "$scf_split")" = _choice_value

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fn rejects flag" bash "$scf_script" "$scf_dir/_root.json" _choice_v -v
check "set-choice-fn flag leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fn rejects missing item" bash "$scf_script" "$scf_dir/_root.json" _choice_missing --no-such-option
check "set-choice-fn missing item leaves fragment unchanged" cmp -s "$scf_dir/_root.json" "$TMP_DIR/set-choice-before.json"

expect_failure "set-choice-fn rejects invalid function" bash "$scf_script" "$scf_dir/_root.json" 'invalid fn' --output

scf_term="$scf_dir/terminated.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Command"}
],subcommands:[],source:{kind:"none"},notes:""}' >"$scf_term"
check "set-choice-fn terminated" bash "$scf_script" --terminated "$scf_term" _choice_command_args --command
check "set-choice-fn terminated field" test "$(jq -r '.items[0].terminated' "$scf_term")" = true

scf_term_bad="$scf_dir/terminated-bad.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--command"],notations:["<COMMAND>"],choices:[],choice_fn:null,repeatable:true,prefixed:false,delimiter:null,description:"Command"}
],subcommands:[],source:{kind:"none"},notes:""}' >"$scf_term_bad"
cp "$scf_term_bad" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fn rejects terminated conflict" bash "$scf_script" --terminated "$scf_term_bad" _choice_command_args --command
check "set-choice-fn terminated conflict leaves fragment unchanged" cmp -s "$scf_term_bad" "$TMP_DIR/set-choice-before.json"

scf_invalid="$scf_dir/invalid.json"
jq -n '{schemaVersion:1,path:["demo"],description:"",aliases:[],meta:[],items:[
  {kind:"option",names:["--output"],notations:["<FILE>"],choices:[],choice_fn:null,repeatable:false,prefixed:false,delimiter:null,description:"Out",value_type:"file"}
],subcommands:[],source:{kind:"none"},notes:""}' >"$scf_invalid"
cp "$scf_invalid" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fn validates before write" bash "$scf_script" "$scf_invalid" _choice_out --output
check "set-choice-fn validation leaves fragment unchanged" cmp -s "$scf_invalid" "$TMP_DIR/set-choice-before.json"

cp "$scf_dir/remote.json" "$TMP_DIR/set-choice-before.json"
expect_failure "set-choice-fn rejects a leading marker" bash "$scf_script" "$scf_dir/remote.json" '?_choice_foo' --foo
check "set-choice-fn marker rejection leaves fragment unchanged" cmp -s "$scf_dir/remote.json" "$TMP_DIR/set-choice-before.json"

# Function-only harness documented in compgen.md §8.
harness_out="$(bash -c '
    script=$1; shift
    eval "$(sed -n "/^# >>> choice-fns/,/^# <<< choice-fns/p" "$script" | sed "1d;\$d")"
    run() { "$@"; }
    run "$@"
' _ "$with_script" _choice_foo)"
check "function harness" test "$harness_out" = "foo"
assert_contains "assemble with context prompt" "$with_script" '# - prompt for demo remote'
assert_contains "assemble with context choice fn" "$with_script" '--foo[?`_choice_foo`]'
assert_contains "assemble with context function" "$with_script" '_choice_foo() {'

# A fragment may store only the bare function name; the rendered marker is
# assembly output.
marker_dir="$TMP_DIR/fragments-marker"
mkdir -p "$marker_dir"
cp -R "$FIXTURES/fragments/with-choice/." "$marker_dir/"
jq '(.items[] | select(.names | index("--foo")) | .choice_fn) = "?_choice_foo"' \
    "$marker_dir/remote.json" >"$marker_dir/remote.tmp" && mv "$marker_dir/remote.tmp" "$marker_dir/remote.json"
expect_failure "assemble rejects a prefixed choice_fn" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$marker_dir" \
    --context "$FIXTURES/contexts/context.sh" --stdout
check "verify with context and fragments" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo --cache-dir "$FIXTURES/fragments/with-choice"
expect_failure "verify require-no-choice on bound script" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo --skip-compgen --require-no-choice-fns --cache-dir "$FIXTURES/fragments/with-choice"

# ---------------------------------------------------------------------------
# choice-fns formatting
# ---------------------------------------------------------------------------
unformatted="$TMP_DIR/choice-unformatted.sh"
gawk '/^# <<< choice-fns$/ && !done {
        print "if [[ -n \"$ARGC_COMPLETIONS_ROOT\" && -f \"$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh\" ]]; then"
        print "    . \"$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh\""
        print "fi"
        print ""
        print "# zulu doc"
        print "_choice_zulu() {"
        print "    _helper_alpha"
        print "}"
        print ""
        print "_choice_alpha() {"
        print "    beta"
        print "}"
        print ""
        print "# doc for beta"
        print "beta() {"
        print "    _helper_alpha"
        print "}"
        print ""
        print "_helper_alpha() {"
        print "    :"
        print "}"
        print ""
        print "_choice_probe() { :; }"
        done = 1
    }
    { print }' "$TMP_DIR/new.sh" >"$unformatted"
cp "$unformatted" "$TMP_DIR/choice-unformatted.before"
expect_failure "verify rejects unformatted choice-fns" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/choice-unformatted.before" --cmd demo --skip-compgen
expect_failure "format --check detects unformatted" bash "$SCRIPTS/format-choice-fns.sh" --check "$unformatted"
check "format --check does not write" cmp -s "$unformatted" "$TMP_DIR/choice-unformatted.before"
check "format rewrites choice-fns" bash "$SCRIPTS/format-choice-fns.sh" "$unformatted"
cat >"$TMP_DIR/choice-expected.txt" <<'EOF'
# >>> choice-fns
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_alpha() {
    _helper_beta
}

_choice_probe() { :; }

# zulu doc
_choice_zulu() {
    _helper_alpha
}

_helper_alpha() {
    :
}

# doc for _helper_beta
_helper_beta() {
    _helper_alpha
}

# <<< choice-fns
EOF
sed -n '/^# >>> choice-fns$/,/^# <<< choice-fns$/p' "$unformatted" >"$TMP_DIR/choice-actual.txt"
check "format choice-fns output" diff -u "$TMP_DIR/choice-expected.txt" "$TMP_DIR/choice-actual.txt"
check "format bash syntax" bash -n "$unformatted"
check "format --check passes" bash "$SCRIPTS/format-choice-fns.sh" --check "$unformatted"
cp "$unformatted" "$TMP_DIR/choice-formatted.txt"
quiet bash "$SCRIPTS/format-choice-fns.sh" "$unformatted"
check "format idempotent" cmp -s "$unformatted" "$TMP_DIR/choice-formatted.txt"
check "verify formatted choice-fns" bash "$SCRIPTS/verify-completion.sh" "$unformatted" --cmd demo --skip-compgen

collision="$TMP_DIR/choice-collision.sh"
gawk '/^# <<< choice-fns$/ && !done {
        print "_choice_a() {"
        print "    foo"
        print "}"
        print ""
        print "foo() { :; }"
        print ""
        print "_foo() { :; }"
        done = 1
    }
    { print }' "$TMP_DIR/new.sh" >"$collision"
cp "$collision" "$TMP_DIR/choice-collision.before"
expect_failure "format rejects rename collision" bash "$SCRIPTS/format-choice-fns.sh" "$collision"
check "format collision leaves file unchanged" cmp -s "$collision" "$TMP_DIR/choice-collision.before"

variable="$TMP_DIR/choice-variable.sh"
gawk '/^# <<< choice-fns$/ && !done {
        print "_choice_a() {"
        print "    local foo=1"
        print "    foo"
        print "}"
        print ""
        print "foo() { :; }"
        done = 1
    }
    { print }' "$TMP_DIR/new.sh" >"$variable"
cp "$variable" "$TMP_DIR/choice-variable.before"
expect_failure "format rejects variable collision" bash "$SCRIPTS/format-choice-fns.sh" "$variable"
check "format variable collision leaves file unchanged" cmp -s "$variable" "$TMP_DIR/choice-variable.before"

outside="$TMP_DIR/choice-outside.sh"
gawk '/^# <<< llm-generate$/ && !done { print "# @flag --outside[`foo`]"; done = 1 } { print }' "$TMP_DIR/new.sh" \
    | gawk '/^# <<< choice-fns$/ && !done { print "foo() { :; }"; done = 1 } { print }' >"$outside"
cp "$outside" "$TMP_DIR/choice-outside.before"
expect_failure "format rejects outside binding" bash "$SCRIPTS/format-choice-fns.sh" "$outside"
check "format outside binding leaves file unchanged" cmp -s "$outside" "$TMP_DIR/choice-outside.before"

junk="$TMP_DIR/choice-junk.sh"
gawk '/^# <<< choice-fns$/ && !done {
        print "foo() { :; }"
        print "echo nope"
        done = 1
    }
    { print }' "$TMP_DIR/new.sh" >"$junk"
cp "$junk" "$TMP_DIR/choice-junk.before"
expect_failure "format rejects top-level content" bash "$SCRIPTS/format-choice-fns.sh" "$junk"
check "format top-level content leaves file unchanged" cmp -s "$junk" "$TMP_DIR/choice-junk.before"

noblock="$TMP_DIR/choice-noblock.sh"
printf '#!/usr/bin/env bash\n' >"$noblock"
expect_failure "format rejects missing block" bash "$SCRIPTS/format-choice-fns.sh" "$noblock"

missing="$TMP_DIR/choice-missing.sh"
sed '/^# <<< choice-fns$/d' "$TMP_DIR/new.sh" >"$missing"
cp "$missing" "$TMP_DIR/choice-missing.before"
expect_failure "format rejects missing marker" bash "$SCRIPTS/format-choice-fns.sh" "$missing"
check "format missing marker leaves file unchanged" cmp -s "$missing" "$TMP_DIR/choice-missing.before"

argcutil="$TMP_DIR/choice-argcutil.sh"
gawk '/^# <<< choice-fns$/ && !done { print "_argc_util_foo() { :; }"; done = 1 } { print }' "$TMP_DIR/new.sh" >"$argcutil"
expect_failure "format rejects copied argc util" bash "$SCRIPTS/format-choice-fns.sh" "$argcutil"

# Exact llm-generate dump
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" --dump-llm-generate >"$TMP_DIR/dump.txt"
gawk '/^# >>> llm-generate$/ { inside = 1; next } /^# <<< llm-generate$/ { inside = 0 } inside { print }' "$with_script" >"$TMP_DIR/actual-block.txt"
check "dump llm-generate matches block" diff -u "$TMP_DIR/dump.txt" "$TMP_DIR/actual-block.txt"

# Regeneration preserves prompt/choice-fns and updates llm-generate.
mkdir -p "$TMP_DIR/fragments-regen"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-regen/"
cp "$with_script" "$TMP_DIR/regen.sh"
sed -n '/^# >>> llm-prompt$/,/^# <<< llm-prompt$/p' "$with_script" >"$TMP_DIR/prompt-before.txt"
sed -n '/^# >>> choice-fns$/,/^# <<< choice-fns$/p' "$with_script" >"$TMP_DIR/choice-before.txt"
jq '.items += [{"kind": "flag", "names": ["--new"], "repeatable": false, "description": "New flag"}]' \
    "$TMP_DIR/fragments-regen/_root.json" >"$TMP_DIR/regen-root.json" && \
    mv "$TMP_DIR/regen-root.json" "$TMP_DIR/fragments-regen/_root.json"
expect_failure "assemble refuses overwrite" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --force
assert_contains "regenerate new flag" "$TMP_DIR/regen.sh" '--new'
sed -n '/^# >>> llm-prompt$/,/^# <<< llm-prompt$/p' "$TMP_DIR/regen.sh" >"$TMP_DIR/prompt-after.txt"
sed -n '/^# >>> choice-fns$/,/^# <<< choice-fns$/p' "$TMP_DIR/regen.sh" >"$TMP_DIR/choice-after.txt"
check "regenerate preserves prompt" diff -u "$TMP_DIR/prompt-before.txt" "$TMP_DIR/prompt-after.txt"
check "regenerate preserves choice-fns" diff -u "$TMP_DIR/choice-before.txt" "$TMP_DIR/choice-after.txt"
check "regenerate verify" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/regen.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-regen" --skip-compgen
check "assemble --check unchanged" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --check

# Change a fragment and ensure --check detects it.
jq '.items += [{"kind": "flag", "names": ["--another"], "repeatable": false, "description": "Another"}]' \
    "$TMP_DIR/fragments-regen/_root.json" >"$TMP_DIR/regen-root.json" && \
    mv "$TMP_DIR/regen-root.json" "$TMP_DIR/fragments-regen/_root.json"
expect_failure "assemble --check detects change" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --check

# ---------------------------------------------------------------------------
# Status and validation failures
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/fragments-todo"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-todo/"
jq '(.subcommands[] | select(.name == "remote") | .status) = "todo"' "$TMP_DIR/fragments-todo/_root.json" >"$TMP_DIR/todo.tmp" && mv "$TMP_DIR/todo.tmp" "$TMP_DIR/fragments-todo/_root.json"
expect_failure "assemble rejects todo" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-todo" --stdout

mkdir -p "$TMP_DIR/fragments-missing"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-missing/"
rm "$TMP_DIR/fragments-missing/remote/add.json"
expect_failure "assemble rejects missing fragment" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing" --stdout

mkdir -p "$TMP_DIR/fragments-stale"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-stale/"
cp "$TMP_DIR/fragments-stale/remote/add.json" "$TMP_DIR/fragments-stale/extra.json"
jq '.path = ["demo", "extra"] | .subcommands = []' "$TMP_DIR/fragments-stale/extra.json" >"$TMP_DIR/extra.tmp" && mv "$TMP_DIR/extra.tmp" "$TMP_DIR/fragments-stale/extra.json"
expect_failure "assemble rejects stale fragment" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-stale" --stdout

mkdir -p "$TMP_DIR/fragments-path-mismatch"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-path-mismatch/"
jq '.path = ["demo", "wrong"]' "$TMP_DIR/fragments-path-mismatch/remote.json" >"$TMP_DIR/mismatch.tmp" && mv "$TMP_DIR/mismatch.tmp" "$TMP_DIR/fragments-path-mismatch/remote.json"
expect_failure "assemble rejects path mismatch" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-path-mismatch" --stdout

mkdir -p "$TMP_DIR/fragments-bad-status"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-bad-status/"
jq '(.subcommands[] | select(.name == "remote") | .status) = "unknown"' "$TMP_DIR/fragments-bad-status/_root.json" >"$TMP_DIR/bad-status.tmp" && mv "$TMP_DIR/bad-status.tmp" "$TMP_DIR/fragments-bad-status/_root.json"
expect_failure "assemble rejects invalid status" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-status" --stdout

mkdir -p "$TMP_DIR/fragments-bad-choice"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-bad-choice/"
jq '(.items[] | select(.names | index("--foo")) | .choice_fn) = ["_choice_foo"]' "$TMP_DIR/fragments-bad-choice/remote.json" >"$TMP_DIR/bad.tmp" && mv "$TMP_DIR/bad.tmp" "$TMP_DIR/fragments-bad-choice/remote.json"
expect_failure "assemble rejects non-string choice_fn" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-choice" --context "$FIXTURES/contexts/context.sh" --stdout

mkdir -p "$TMP_DIR/fragments-missing-fn"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-missing-fn/"
sed '/^_choice_foo() {/,/^}/d' "$FIXTURES/contexts/context.sh" >"$TMP_DIR/context-missing-fn.sh"
expect_failure "assemble rejects missing choice function" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing-fn" --context "$TMP_DIR/context-missing-fn.sh" --stdout

mkdir -p "$TMP_DIR/fragments-path"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-path/"
jq '.items += [
      {"kind": "option", "names": ["--config"], "notations": ["<path>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Config path"},
      {"kind": "option", "names": ["--file"], "notations": ["<file>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Input file"},
      {"kind": "option", "names": ["--dir"], "notations": ["<dir>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Output dir"}
    ]' "$TMP_DIR/fragments-path/_root.json" >"$TMP_DIR/path.tmp" && mv "$TMP_DIR/path.tmp" "$TMP_DIR/fragments-path/_root.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-path" --stdout >"$TMP_DIR/path-notation.sh"
assert_contains "assemble path notation" "$TMP_DIR/path-notation.sh" '--config <path>'
assert_contains "assemble file notation" "$TMP_DIR/path-notation.sh" '--file <file>'
assert_contains "assemble dir notation" "$TMP_DIR/path-notation.sh" '--dir <dir>'
check "verify path notation" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/path-notation.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-path" --skip-compgen

# ---------------------------------------------------------------------------
# Arg repeatable/required schema
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/fragments-arg-required-repeatable"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-arg-required-repeatable/"
jq '.items += [{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "description": "Files"}]' \
    "$TMP_DIR/fragments-arg-required-repeatable/remote/add.json" >"$TMP_DIR/arg-req.tmp" && \
    mv "$TMP_DIR/arg-req.tmp" "$TMP_DIR/fragments-arg-required-repeatable/remote/add.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-required-repeatable" --stdout >"$TMP_DIR/arg-required-repeatable.sh"
assert_contains "assemble arg repeatable required" "$TMP_DIR/arg-required-repeatable.sh" '# @arg files+ <FILE>'

mkdir -p "$TMP_DIR/fragments-arg-optional-repeatable"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-arg-optional-repeatable/"
jq '.items += [{"kind": "arg", "name": "rest", "repeatable": true, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "description": "Rest"}]' \
    "$TMP_DIR/fragments-arg-optional-repeatable/remote.json" >"$TMP_DIR/arg-opt.tmp" && \
    mv "$TMP_DIR/arg-opt.tmp" "$TMP_DIR/fragments-arg-optional-repeatable/remote.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-optional-repeatable" --stdout >"$TMP_DIR/arg-optional-repeatable.sh"
assert_contains "assemble arg repeatable optional" "$TMP_DIR/arg-optional-repeatable.sh" '# @arg rest* <ARG>'

mkdir -p "$TMP_DIR/fragments-modifier"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-modifier/"
jq '.items[0].modifier = "!"' "$TMP_DIR/fragments-modifier/remote/add.json" >"$TMP_DIR/modifier.tmp" && \
    mv "$TMP_DIR/modifier.tmp" "$TMP_DIR/fragments-modifier/remote/add.json"
expect_failure "assemble rejects modifier field" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-modifier" --stdout

mkdir -p "$TMP_DIR/fragments-missing-required"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-missing-required/"
jq 'del(.items[0].required)' "$TMP_DIR/fragments-missing-required/remote/add.json" >"$TMP_DIR/missing-required.tmp" && \
    mv "$TMP_DIR/missing-required.tmp" "$TMP_DIR/fragments-missing-required/remote/add.json"
expect_failure "assemble rejects arg without required" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing-required" --stdout

# ---------------------------------------------------------------------------
# Option prefixed/delimiter schema
# ---------------------------------------------------------------------------
inject_root_items() {
    local dir="$1" items="$2"
    mkdir -p "$dir"
    cp -R "$FIXTURES/fragments/no-choice/." "$dir/"
    jq --argjson items "$items" '.items += $items' "$dir/_root.json" >"$dir/root.tmp"
    mv "$dir/root.tmp" "$dir/_root.json"
}

inject_root_items "$TMP_DIR/fragments-prefix-delimiter" '[
  {"kind": "option", "names": ["-ao"], "notations": [], "choices": ["a", "s", "t", "u"], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Overwrite mode"},
  {"kind": "option", "names": ["--type"], "notations": ["<TYPE>"], "choices": ["d", "f"], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Filter by entry type"},
  {"kind": "option", "names": ["-Q"], "notations": [], "choices": ["X"], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Prefix without repeat"},
  {"kind": "option", "names": ["-Z"], "notations": [], "choices": ["a", "b"], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": ",", "description": "Prefix with delimiter"},
  {"kind": "arg", "name": "types", "repeatable": true, "required": false, "notation": "<TYPE>", "choices": ["d", "f"], "choice_fn": null, "delimiter": ",", "description": "Entry types"}
]'
prefix_script="$TMP_DIR/prefix-delimiter.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-prefix-delimiter" --stdout >"$prefix_script"
assert_contains "assemble prefixed option" "$prefix_script" '# @option -ao-*[a|s|t|u]'
assert_contains "assemble prefixed non-repeatable" "$prefix_script" '# @option -Q-[X]'
assert_contains "assemble delimiter option" "$prefix_script" '# @option --type*,[d|f] <TYPE>'
assert_contains "assemble delimiter arg" "$prefix_script" '# @arg types*,[d|f] <TYPE>'
assert_contains "assemble combined prefix delimiter" "$prefix_script" '# @option -Z-*,[a|b]'
check "assemble prefixed/delimiter syntax" bash -n "$prefix_script"
check "export prefixed/delimiter" bash -c "argc --argc-export '$prefix_script' >'$TMP_DIR/prefix-delimiter-export.json'"
check "export prefixed option" jq -e '.flag_options[] | select(.long_name == "-ao") | .prefixed == true and .multiple_occurs == true and .choice.data == ["a", "s", "t", "u"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export prefixed non-repeatable" jq -e '.flag_options[] | select(.long_name == "-Q") | .prefixed == true and .multiple_occurs == false and .choice.data == ["X"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export delimiter option" jq -e '.flag_options[] | select(.long_name == "--type") | .delimiter == "," and .multiple_occurs == true and .choice.data == ["d", "f"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export delimiter arg" jq -e '.positionals[] | select(.id == "types") | .delimiter == "," and .multiple == true and .required == false and .choice.data == ["d", "f"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export combined prefix delimiter" jq -e '.flag_options[] | select(.long_name == "-Z") | .prefixed == true and .delimiter == "," and .multiple_occurs == true and .choice.data == ["a", "b"]' "$TMP_DIR/prefix-delimiter-export.json"
check "verify prefixed/delimiter" bash "$SCRIPTS/verify-completion.sh" "$prefix_script" --cmd demo --cache-dir "$TMP_DIR/fragments-prefix-delimiter" --skip-compgen

jq -r -f "$SCRIPTS/inspect-script-params.jq" "$TMP_DIR/prefix-delimiter-export.json" >"$TMP_DIR/prefix-delimiter-params.txt"
check "script params positional delimiter" gawk -F '\t' '$1 == "types" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-params.txt"

inject_root_items "$TMP_DIR/fragments-arg-delimiter-required" '[{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "delimiter": ",", "description": "Files"}]'
required_arg_script="$TMP_DIR/required-arg-delimiter.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-delimiter-required" --stdout >"$required_arg_script"
assert_contains "assemble required delimiter arg" "$required_arg_script" '# @arg files+, <FILE>'
check "export required delimiter arg" bash -c "argc --argc-export '$required_arg_script' >'$TMP_DIR/required-arg-delimiter-export.json'"
check "export required delimiter arg fields" jq -e '.positionals[] | select(.id == "files") | .delimiter == "," and .multiple == true and .required == true' "$TMP_DIR/required-arg-delimiter-export.json"

jq -r -f "$SCRIPTS/inspect-fragment-items.jq" "$TMP_DIR/fragments-prefix-delimiter/_root.json" >"$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items prefixed" gawk -F '\t' '$1 == "option" && $2 == "-ao" && $6 == "true" && $7 == "" { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items delimiter" gawk -F '\t' '$1 == "option" && $2 == "--type" && $6 == "false" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items delimiter arg" gawk -F '\t' '$1 == "arg" && $2 == "types" && $6 == "false" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items combined" gawk -F '\t' '$1 == "option" && $2 == "-Z" && $6 == "true" && $7 == "," { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"
check "fragment items legacy defaults" gawk -F '\t' '$1 == "flag" && $2 == "-v,--verbose" && $6 == "false" && $7 == "" { found = 1 } END { exit !found }' "$TMP_DIR/prefix-delimiter-items.txt"

# ---------------------------------------------------------------------------
# Terminated values
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-terminated" '[
  {"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Command", "terminated": true},
  {"kind": "arg", "name": "args", "repeatable": false, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
terminated_script="$TMP_DIR/terminated.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated" --stdout >"$terminated_script"
assert_contains "assemble terminated option" "$terminated_script" '# @option --command~ <COMMAND>'
assert_contains "assemble terminated arg" "$terminated_script" '# @arg args~ <ARG>'
check "export terminated fields" bash -c "argc --argc-export '$terminated_script' >'$TMP_DIR/terminated-export.json'"
check "export terminated option" jq -e '.flag_options[] | select(.long_name == "--command") | .terminated == true and .multiple_values == true and .multiple_occurs == false' "$TMP_DIR/terminated-export.json"
check "export terminated arg" jq -e '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true' "$TMP_DIR/terminated-export.json"
check "verify terminated" bash "$SCRIPTS/verify-completion.sh" "$terminated_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated" --skip-compgen

jq -r -f "$SCRIPTS/inspect-fragment-items.jq" "$TMP_DIR/fragments-terminated/_root.json" >"$TMP_DIR/terminated-items.txt"
check "fragment items terminated option" gawk -F '\t' '$1 == "option" && $2 == "--command" && $8 == "true" { found = 1 } END { exit !found }' "$TMP_DIR/terminated-items.txt"
check "fragment items terminated arg" gawk -F '\t' '$1 == "arg" && $2 == "args" && $8 == "true" { found = 1 } END { exit !found }' "$TMP_DIR/terminated-items.txt"

inject_root_items "$TMP_DIR/fragments-terminated-literal" '[{"kind": "option", "names": ["-~", "--value"], "notations": ["<VALUE>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Literal"}]'
literal_script="$TMP_DIR/terminated-literal.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated-literal" --stdout >"$literal_script"
assert_contains "assemble literal tilde name" "$literal_script" '# @option -~ --value <VALUE>'
check "verify literal tilde name" bash "$SCRIPTS/verify-completion.sh" "$literal_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-literal" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-terminated-repeatable" '[{"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Bad", "terminated": true}]'
expect_failure "assemble rejects terminated repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-repeatable" --stdout
inject_root_items "$TMP_DIR/fragments-bad-terminated-flag" '[{"kind": "flag", "names": ["--command"], "repeatable": false, "description": "Bad", "terminated": true}]'
expect_failure "assemble rejects terminated flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-flag" --stdout
inject_root_items "$TMP_DIR/fragments-bad-terminated-name" '[{"kind": "option", "names": ["--command~"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects name ending in tilde" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-name" --stdout

mkdir -p "$TMP_DIR/fragments-terminated-mismatch"
cp -R "$TMP_DIR/fragments-terminated/." "$TMP_DIR/fragments-terminated-mismatch/"
jq '(.items[] | select(.names == ["--command"]) | .terminated) = false' "$TMP_DIR/fragments-terminated-mismatch/_root.json" >"$TMP_DIR/terminated-mismatch.tmp" && mv "$TMP_DIR/terminated-mismatch.tmp" "$TMP_DIR/fragments-terminated-mismatch/_root.json"
mismatch_log="$(new_log)"
if run_quiet "$mismatch_log" bash "$SCRIPTS/verify-completion.sh" "$terminated_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-mismatch" --skip-compgen; then
    fail "verify terminated mismatch (unexpected success)"
else
    pass "verify terminated mismatch"
fi
assert_contains "verify terminated mismatch message" "$mismatch_log" "terminated mismatch"

sed 's/--command~ /--command /; s/args~ /args /' "$terminated_script" >"$TMP_DIR/terminated-no-marker.sh"
reverse_log="$(new_log)"
if run_quiet "$reverse_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/terminated-no-marker.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated" --skip-compgen; then
    fail "verify terminated reverse mismatch (unexpected success)"
else
    pass "verify terminated reverse mismatch"
fi
assert_contains "verify terminated reverse message" "$reverse_log" "terminated mismatch"

# ---------------------------------------------------------------------------
# Removed value_type field
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-value-type-field" '[
  {"kind": "option", "names": ["--owner"], "notations": ["<NAME>"], "choices": [], "choice_fn": null, "value_type": "user", "repeatable": false, "prefixed": false, "delimiter": null, "description": "File owner"}
]'
value_type_log="$(new_log)"
if run_quiet "$value_type_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-value-type-field" --stdout; then
    fail "assemble rejects value_type field (unexpected success)"
else
    pass "assemble rejects value_type field"
fi
assert_contains "value_type unknown field error" "$value_type_log" "unknown fields: value_type"

inject_root_items "$TMP_DIR/fragments-bad-delimiter-repeat" '[{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter without repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-repeat" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-prefixed" '[{"kind": "flag", "names": ["--bad"], "repeatable": false, "prefixed": true, "description": "Bad"}]'
expect_failure "assemble rejects prefixed flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-prefixed" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-delimiter" '[{"kind": "flag", "names": ["--bad"], "repeatable": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-delimiter" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-prefixed" '[{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "prefixed": true, "description": "Bad"}]'
expect_failure "assemble rejects prefixed arg" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-prefixed" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-delimiter-repeat" '[{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects arg delimiter without repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-delimiter-repeat" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-delimiter-char" '[{"kind": "arg", "name": "bad", "repeatable": true, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": "x", "description": "Bad"}]'
expect_failure "assemble rejects invalid arg delimiter" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-delimiter-char" --stdout
inject_root_items "$TMP_DIR/fragments-bad-prefix-names" '[{"kind": "option", "names": ["-A", "--alpha"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed two names" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-names" --stdout
inject_root_items "$TMP_DIR/fragments-bad-prefix-dash" '[{"kind": "option", "names": ["-X-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-dash" --stdout
inject_root_items "$TMP_DIR/fragments-bad-nonprefix-dash" '[{"kind": "option", "names": ["--dash-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects non-prefix option name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-nonprefix-dash" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-nonprefix-dash" '[{"kind": "flag", "names": ["--dash-"], "repeatable": false, "description": "Bad"}]'
expect_failure "assemble rejects non-prefix flag name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-nonprefix-dash" --stdout

# argc silently drops the second name, and the choice with it, when the
# two-name shape is one it cannot parse. Assembly must reject it instead.
inject_root_items "$TMP_DIR/fragments-bad-names-alias-first" '[{"kind": "option", "names": ["-ex", "--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
names_alias_log="$(new_log)"
if run_quiet "$names_alias_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-names-alias-first" --stdout; then
    fail "assemble rejects alias-first two names (unexpected success)"
else
    pass "assemble rejects alias-first two names"
fi
assert_contains "assemble alias-first names error" "$names_alias_log" "one-character short name"
inject_root_items "$TMP_DIR/fragments-bad-names-help-order" '[{"kind": "option", "names": ["--eval-command", "-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
names_help_order_log="$(new_log)"
if run_quiet "$names_help_order_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-names-help-order" --stdout; then
    fail "assemble rejects help-order two names (unexpected success)"
else
    pass "assemble rejects help-order two names"
fi
assert_contains "assemble help-order names error" "$names_help_order_log" "one-character short name"

# Accepted two-name shapes: two single-character shorts and a short plus a
# multi-character single-dash alias.
inject_root_items "$TMP_DIR/fragments-names-ok" '[
  {"kind": "flag", "names": ["-b", "-m"], "repeatable": false, "description": "Ignored for compatibility"},
  {"kind": "option", "names": ["-x", "-ex"], "notations": ["<V>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Two names"}
]'
names_ok_script="$TMP_DIR/names-ok.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-names-ok" --stdout >"$names_ok_script"
assert_contains "assemble two shorts" "$names_ok_script" '# @flag -b -m'
assert_contains "assemble short plus alias" "$names_ok_script" '# @option -x -ex <V>'
check "verify two-name shapes" bash "$SCRIPTS/verify-completion.sh" "$names_ok_script" --cmd demo --cache-dir "$TMP_DIR/fragments-names-ok" --skip-compgen

# A pair argc cannot accept becomes one item per name with every other field
# copied; both items must keep the dynamic binding.
mkdir -p "$TMP_DIR/fragments-split"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-split/"
jq '.items += [
  {"kind": "option", "names": ["--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"},
  {"kind": "option", "names": ["-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}
]' "$TMP_DIR/fragments-split/_root.json" >"$TMP_DIR/split.tmp" && mv "$TMP_DIR/split.tmp" "$TMP_DIR/fragments-split/_root.json"
split_script="$TMP_DIR/split.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-split" --context "$FIXTURES/contexts/context.sh" --stdout >"$split_script"
assert_contains "assemble split long name" "$split_script" '# @option --eval-command*[?`_choice_root`] <COMMAND>'
assert_contains "assemble split alias" "$split_script" '# @option -ex*[?`_choice_root`] <COMMAND>'
check "verify split option bindings" bash "$SCRIPTS/verify-completion.sh" "$split_script" --cmd demo --cache-dir "$TMP_DIR/fragments-split" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-prefix-notations" '[{"kind": "option", "names": ["-X"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed multiple notations" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-notations" --stdout
inject_root_items "$TMP_DIR/fragments-bad-delimiter-notations" '[{"kind": "option", "names": ["--multi"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter multiple notations" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-notations" --stdout
inject_root_items "$TMP_DIR/fragments-bad-delimiter-char" '[{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": "x", "description": "Bad"}]'
expect_failure "assemble rejects invalid delimiter" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-char" --stdout

# ---------------------------------------------------------------------------
# Description must not repeat static choices
# ---------------------------------------------------------------------------
choice_echo_reject() {
    local label="$1" dir="$2" item="$3" needle="$4" err
    inject_root_items "$dir" "[$item]"
    err="$(new_log)"
    if run_quiet "$err" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout; then
        fail "$label (unexpected success)"
    else
        pass "$label"
        if grep -Fq -- "$needle" "$err"; then
            pass "$label error"
        else
            fail "$label error (missing: $needle)"
        fi
    fi
}

choice_echo_reject "assemble rejects parenthesized choice echo" \
    "$TMP_DIR/fragments-choice-echo-paren" \
    '{"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": ["auto", "relay", "tailcat"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, tailcat, relay) (default: \"auto\")"}' \
    "description repeats choices: auto, tailcat, relay"
choice_echo_reject "assemble rejects bracketed choice echo" \
    "$TMP_DIR/fragments-choice-echo-bracket" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": ["a", "b"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode [a|b] (default: a)"}' \
    "description repeats choices: a|b"
choice_echo_reject "assemble rejects braced choice echo" \
    "$TMP_DIR/fragments-choice-echo-brace" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": ["a", "b"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode {a, b}"}' \
    "description repeats choices: a, b"
choice_echo_reject "assemble rejects quoted choice echo" \
    "$TMP_DIR/fragments-choice-echo-quoted" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": ["a", "b"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (\"a\", \"b\")"}' \
    'description repeats choices: "a", "b"'

choice_ok_dir="$TMP_DIR/fragments-choice-ok"
inject_root_items "$choice_ok_dir" '[
  {"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": ["auto", "tailcat", "relay"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (default: \"auto\")"},
  {"kind": "option", "names": ["--partial"], "notations": ["<VALUE>"], "choices": ["auto", "tailcat", "relay"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, relay)"},
  {"kind": "option", "names": ["--prose"], "notations": ["<MODE>"], "choices": ["fast", "slow"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (see fast docs)"},
  {"kind": "option", "names": ["--empty"], "notations": ["<MODE>"], "choices": ["a", "b"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": ""}
]'
choice_ok_script="$TMP_DIR/choice-ok.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$choice_ok_dir" --stdout >"$choice_ok_script"
assert_contains "assemble keeps cleaned choices description" "$choice_ok_script" 'guest transport (default: "auto")'
assert_contains "assemble keeps partial choice list" "$choice_ok_script" 'guest transport (auto, relay)'
assert_contains "assemble keeps prose group" "$choice_ok_script" 'Mode (see fast docs)'
check "assemble renders empty description without padding" grep -Fxq '# @option --empty[a|b] <MODE>' "$choice_ok_script"
check "verify cleaned choice descriptions" bash "$SCRIPTS/verify-completion.sh" "$choice_ok_script" --cmd demo --cache-dir "$choice_ok_dir" --skip-compgen

# ---------------------------------------------------------------------------
# Verify failures
# ---------------------------------------------------------------------------
cp "$TMP_DIR/new.sh" "$TMP_DIR/undefined.sh"
sed 's/^# @flag -v --verbose  /# @flag -v --verbose[`_choice_missing`]  /' "$TMP_DIR/undefined.sh" >"$TMP_DIR/undefined.tmp" && mv "$TMP_DIR/undefined.tmp" "$TMP_DIR/undefined.sh"
expect_failure "verify undefined choice fn" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/undefined.sh" --cmd demo --skip-compgen

gawk '/^# <<< choice-fns$/ && !done { print "_choice_probe() { :; }"; done = 1 } { print }' \
    "$TMP_DIR/new.sh" >"$TMP_DIR/choice-no-choice.sh"
expect_failure "verify require-no-choice rejects choice definitions" bash "$SCRIPTS/verify-completion.sh" \
    "$TMP_DIR/choice-no-choice.sh" --cmd demo --skip-compgen --require-no-choice-fns

cp "$TMP_DIR/regen.sh" "$TMP_DIR/manual-edit.sh"
gawk '/^# <<< llm-generate$/ { print "# @flag --manual" } { print }' \
    "$TMP_DIR/manual-edit.sh" >"$TMP_DIR/manual-edit.tmp" && mv "$TMP_DIR/manual-edit.tmp" "$TMP_DIR/manual-edit.sh"
expect_failure "verify detects manual llm-generate edit" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/manual-edit.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-regen" --skip-compgen

# A tag that loses its binding is the failure the compgen smoke cannot see.
sed 's/--foo\[?`_choice_foo`\]/--foo -foo[?`_choice_foo`]/' "$with_script" >"$TMP_DIR/dropped-binding.sh"
dropped_binding_log="$(new_log)"
if run_quiet "$dropped_binding_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/dropped-binding.sh" --cmd demo --cache-dir "$FIXTURES/fragments/with-choice" --skip-compgen; then
    fail "verify detects dropped choice binding (unexpected success)"
else
    pass "verify detects dropped choice binding"
fi
assert_contains "verify names dropped choice_fn" "$dropped_binding_log" "dropped choice_fn"

printf '#!/usr/bin/env bash\n# only a shebang\n' >"$TMP_DIR/no-help.sh"
expect_failure "verify empty help output" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-help.sh" --skip-compgen

sed '1d' "$TMP_DIR/new.sh" >"$TMP_DIR/no-shebang.sh"
expect_failure "verify strict treats warnings as failures" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-shebang.sh" --cmd demo --skip-compgen
check "verify --no-strict allows warnings" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-shebang.sh" --cmd demo --skip-compgen --no-strict

# ---------------------------------------------------------------------------
# Dynamic workflow simulation
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/fragments-dynamic"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-dynamic/"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-dynamic" --output "$TMP_DIR/dynamic.sh" --force
gawk '/^# <<< choice-fns$/ && !done {
        print ""
        print "_choice_out() {"
        print "    echo out.txt"
        print "}"
        done = 1
    }
    { print }' "$TMP_DIR/dynamic.sh" >"$TMP_DIR/dynamic.tmp" && mv "$TMP_DIR/dynamic.tmp" "$TMP_DIR/dynamic.sh"
check "dynamic set-choice-fn" bash "$SCRIPTS/set-choice-fn.sh" "$TMP_DIR/fragments-dynamic/_root.json" _choice_out --output
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-dynamic" --output "$TMP_DIR/dynamic.sh" --force
assert_contains "dynamic binding rendered" "$TMP_DIR/dynamic.sh" '--output[?`_choice_out`]'
assert_contains "dynamic function preserved" "$TMP_DIR/dynamic.sh" '_choice_out() {'

# Root option choice smoke must complete the option word, not shift the TSV
# fields and complete the next positional.
dynamic_verify_log="$TMP_DIR/dynamic-verify.log"
if VERBOSE=1 bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/dynamic.sh" \
        --cmd demo --cache-dir "$TMP_DIR/fragments-dynamic" >"$dynamic_verify_log" 2>&1; then
    pass "dynamic verify"
else
    fail "dynamic verify"
    show_captured "$dynamic_verify_log"
fi
assert_contains "verify runs compgen for --output" "$dynamic_verify_log" "PASS  compgen choice --output"
assert_not_contains "compgen choice label not shifted" "$dynamic_verify_log" "compgen choice --output -o"
check "dynamic compgen output" bash -c "argc --argc-compgen bash '$TMP_DIR/dynamic.sh' demo --output '' | grep -q '^out.txt'"

if [[ "$failures" -gt 0 ]]; then
    printf '\nfailed checks:\n' >&3
    printf '  - %s\n' "${failed_labels[@]}" >&3
fi
printf '\n%d checks passed, %d failed\n' "$passes" "$failures" >&3
[[ "$failures" -eq 0 ]]
