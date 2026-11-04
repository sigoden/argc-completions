#!/usr/bin/env bash
# scripts/assemble.sh: status, validation, and arg schema failures.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# Status and validation failures
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/fragments-todo"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-todo/"
jq '(.subcommands[] | select(.name == "remote") | .status) = "todo"' "$(native_path "$TMP_DIR/fragments-todo/_root.json")" >"$TMP_DIR/todo.tmp" && mv "$TMP_DIR/todo.tmp" "$TMP_DIR/fragments-todo/_root.json"
expect_failure "assemble rejects todo" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-todo" --stdout

mkdir -p "$TMP_DIR/fragments-missing"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-missing/"
rm "$TMP_DIR/fragments-missing/remote/add.json"
expect_failure "assemble rejects missing fragment" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing" --stdout

mkdir -p "$TMP_DIR/fragments-stale"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-stale/"
cp "$TMP_DIR/fragments-stale/remote/add.json" "$TMP_DIR/fragments-stale/extra.json"
jq '.path = ["demo", "extra"] | .subcommands = []' "$(native_path "$TMP_DIR/fragments-stale/extra.json")" >"$TMP_DIR/extra.tmp" && mv "$TMP_DIR/extra.tmp" "$TMP_DIR/fragments-stale/extra.json"
expect_failure "assemble rejects stale fragment" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-stale" --stdout

mkdir -p "$TMP_DIR/fragments-path-mismatch"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-path-mismatch/"
jq '.path = ["demo", "wrong"]' "$(native_path "$TMP_DIR/fragments-path-mismatch/remote.json")" >"$TMP_DIR/mismatch.tmp" && mv "$TMP_DIR/mismatch.tmp" "$TMP_DIR/fragments-path-mismatch/remote.json"
expect_failure "assemble rejects path mismatch" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-path-mismatch" --stdout

mkdir -p "$TMP_DIR/fragments-bad-status"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-bad-status/"
jq '(.subcommands[] | select(.name == "remote") | .status) = "unknown"' "$(native_path "$TMP_DIR/fragments-bad-status/_root.json")" >"$TMP_DIR/bad-status.tmp" && mv "$TMP_DIR/bad-status.tmp" "$TMP_DIR/fragments-bad-status/_root.json"
expect_failure "assemble rejects invalid status" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-status" --stdout

mkdir -p "$TMP_DIR/fragments-bad-choice"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-bad-choice/"
jq '(.items[] | select(.names | index("--foo")) | .choice_fn) = ["_choice_foo"]' "$(native_path "$TMP_DIR/fragments-bad-choice/remote.json")" >"$TMP_DIR/bad.tmp" && mv "$TMP_DIR/bad.tmp" "$TMP_DIR/fragments-bad-choice/remote.json"
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
    ]' "$(native_path "$TMP_DIR/fragments-path/_root.json")" >"$TMP_DIR/path.tmp" && mv "$TMP_DIR/path.tmp" "$TMP_DIR/fragments-path/_root.json"
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
    "$(native_path "$TMP_DIR/fragments-arg-required-repeatable/remote/add.json")" >"$TMP_DIR/arg-req.tmp" && \
    mv "$TMP_DIR/arg-req.tmp" "$TMP_DIR/fragments-arg-required-repeatable/remote/add.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-required-repeatable" --stdout >"$TMP_DIR/arg-required-repeatable.sh"
assert_contains "assemble arg repeatable required" "$TMP_DIR/arg-required-repeatable.sh" '# @arg files+ <FILE>'

mkdir -p "$TMP_DIR/fragments-arg-optional-repeatable"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-arg-optional-repeatable/"
jq '.items += [{"kind": "arg", "name": "rest", "repeatable": true, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "description": "Rest"}]' \
    "$(native_path "$TMP_DIR/fragments-arg-optional-repeatable/remote.json")" >"$TMP_DIR/arg-opt.tmp" && \
    mv "$TMP_DIR/arg-opt.tmp" "$TMP_DIR/fragments-arg-optional-repeatable/remote.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-optional-repeatable" --stdout >"$TMP_DIR/arg-optional-repeatable.sh"
assert_contains "assemble arg repeatable optional" "$TMP_DIR/arg-optional-repeatable.sh" '# @arg rest* <ARG>'

mkdir -p "$TMP_DIR/fragments-modifier"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-modifier/"
jq '.items[0].modifier = "!"' "$(native_path "$TMP_DIR/fragments-modifier/remote/add.json")" >"$TMP_DIR/modifier.tmp" && \
    mv "$TMP_DIR/modifier.tmp" "$TMP_DIR/fragments-modifier/remote/add.json"
expect_failure "assemble rejects modifier field" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-modifier" --stdout

mkdir -p "$TMP_DIR/fragments-missing-required"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-missing-required/"
jq 'del(.items[0].required)' "$(native_path "$TMP_DIR/fragments-missing-required/remote/add.json")" >"$TMP_DIR/missing-required.tmp" && \
    mv "$TMP_DIR/missing-required.tmp" "$TMP_DIR/fragments-missing-required/remote/add.json"
expect_failure "assemble rejects arg without required" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing-required" --stdout


helper_finish
