#!/usr/bin/env bash
# Cross-document invariants: path convention lint and document-wide bans.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

path_prefix_lint() {
    gawk '
    function report(kind) { printf "%s:%d: %s: %s\n", FILENAME, FNR, kind, $0; failed = 1 }
    /\.\/(scripts|references|agents|cache|completions|utils|tests|bin|skills|install\.sh)/ { report("dot-relative path") }
    /(^|[^>\/$A-Za-z0-9_.-])(scripts|references|agents|cache|completions|utils|tests|bin|skills)\// { report("bare path prefix") }
    /(^|[^>\/$A-Za-z0-9_.-])install\.sh/ { report("bare install.sh") }
    /(^|[^>\/$A-Za-z0-9_.-])(preflight|assemble|verify-completion|test-compgen|format-choices|set-choice-fns|compare-help|extract-cmd-context|reset-cache|update-subcommand-status|lib|normalize-description)\.sh/ { report("bare skill script") }
    /(^|[^>\/$A-Za-z0-9_.-])(validate-fragment|inspect-fragment-items|inspect-script-params)\.jq/ { report("bare skill jq") }
    /(^|[^>\/$A-Za-z0-9_.-])(generate-structure|add-choice-fns|compgen-helpers|compgen-recipes|compgen|verify|fragment-schema)\.md/ { report("bare reference filename") }
    /(^|[^>\/$A-Za-z0-9_.-])compile\.md/ { report("bare compile.md") }
    /(^|[^>\/$A-Za-z0-9_.-])SKILL\.md/ { report("bare SKILL.md") }
    /<repo>|<skill>|\.agents\/skills\/argc-completions-generate/ { report("legacy root placeholder") }
    END { exit failed }
    ' "$@"
}

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

check "references no stale command args helper" bash -c '! grep -RFq -- _argc_util_comp_command_args "$1"' _ "$SKILL_DIR/references"
check "skill docs no stale command args helper" bash -c "! grep -RF '_argc_util_comp_command_args' '$SKILL_DIR'"
check "references no shell command source" bash -c '! grep -RFq -- "compgen -c" "$1"' _ "$SKILL_DIR/references"
check "no doc explains the choice marker" bash -c "! grep -RqE 'advisory hint|optional hint' '$SKILL_DIR'"
check "skill no shared completer helpers" bash -c "! grep -RqE '_value_types|shared completer|_user_value|_hostname_value' '$SKILL_DIR'"
# argc 1.24 has no `choice-fn` subcommand; docs must not recommend it as a command.
check "docs avoid stale choice-fn usage" bash -c "! grep -RF 'argc choice-fn <' '$SKILL_DIR' --include='*.md'"

helper_finish
