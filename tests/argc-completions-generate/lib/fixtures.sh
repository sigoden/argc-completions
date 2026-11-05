#!/usr/bin/env bash
# Fixture builders and thin wrappers around the skill scripts.
#
# Two kinds of helper live here:
#
#   primitives   fragment_dir, fragment_jq, insert_before, block_append,
#                assemble_to, argc_export, skill_fn
#   fixtures     build_* — idempotent scripts that export a cached artifact
#
# A build_* helper follows the same contract as before: it returns immediately
# when its artifact already exists, and publishes the artifact path in a global
# (NEW_SCRIPT, WITH_SCRIPT, ...). A case file never relies on another case
# file, so every artifact lives under $TMP_DIR.
#
# The generated script ends with COMMAND_EVAL_LINE; fixtures that need to add a
# block insert it immediately before that line.

COMMAND_EVAL_LINE='command eval "$(argc --argc-eval "$0" "$@")"'

# --- primitives -------------------------------------------------------------

# fragment_dir <dir> [<source-fixture>]: a writable copy of a fragment tree
# (default: the no-choice fixture).
fragment_dir() {
    local dir="$1" src="${2:-$FIXTURES/fragments/no-choice}"
    mkdir -p "$dir"
    cp -R "$src/." "$dir/"
}

# fragment_jq <fragment-file> <jq-options...> <filter>: rewrite one fragment in
# place. The temporary file stays on the POSIX side so a Windows jq, which
# needs native_path for its input, still writes through the shell's redirection.
fragment_jq() {
    local file="$1" path
    shift
    native_path_to path "$file"
    jq "$@" "$path" >"$file.tmp" && mv "$file.tmp" "$file"
}

# fragment_with_items <dir> <json-items> [<relative-fragment>]: a no-choice
# fixture copy with <json-items> appended to that fragment's items.
fragment_with_items() {
    local dir="$1" items="$2" rel="${3:-_root.json}"
    fragment_dir "$dir"
    fragment_jq "$dir/$rel" --argjson items "$items" '.items += $items'
}

# fragment_from_description <description> <out-file>: the smallest complete
# fragment, with the given description and no items.
fragment_from_description() {
    jq -n --arg d "$1" \
        '{schemaVersion: 1, path: ["demo"], description: $d, aliases: [], meta: [], items: [], subcommands: [], source: {kind: "none"}, hash: "", notes: ""}' \
        >"$2"
}

# insert_before <in> <out> <exact-line> <text>: insert <text> (newlines
# allowed) immediately before the first line equal to <exact-line>. The text
# travels through the environment so gawk applies no escape processing to it.
insert_before() {
    INSERT_TEXT="$4" gawk -v marker="$3" '
        !done && $0 == marker { printf "%s\n", ENVIRON["INSERT_TEXT"]; done = 1 }
        { print }
    ' "$1" >"$2"
}

# insert_in_place <file> <exact-line> <text>: insert_before with the result
# replacing the input.
insert_in_place() {
    insert_before "$1" "$1.new" "$2" "$3" && mv "$1.new" "$1"
}

# insert_after <in> <out> <exact-line> <text>: insert <text> right after the
# first line equal to <exact-line> (a block body, say).
insert_after() {
    INSERT_TEXT="$4" gawk -v marker="$3" '
        { print }
        !done && $0 == marker { printf "%s\n", ENVIRON["INSERT_TEXT"]; done = 1 }
    ' "$1" >"$2"
}

# block_append <in> <out> <BLOCK> <text>: insert <text> as the last lines of a
# "# >>> BLOCK" / "# <<< BLOCK" block.
block_append() {
    insert_before "$1" "$2" "# <<< $3" "$4"
}

# assemble_to <out-file> <assemble.sh arguments...>: run assembly and capture
# the rendered script.
assemble_to() {
    local out="$1"
    shift
    quiet bash "$SCRIPTS/assemble.sh" "$@" >"$out"
}

# assemble_rejects <label> <cache-dir> [<assemble.sh arguments...>]: assembly
# must reject the fixture tree in <cache-dir> (the common demo invocation).
assemble_rejects() {
    local label="$1" dir="$2"
    shift 2
    expect_failure "$label" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout "$@"
}

# check_export <label> <script>: the rendered script must parse as an argc
# script. The export itself is discarded, so it never lands in a log.
check_export() {
    local label="$1" path
    native_path_to path "$2"
    check_to /dev/null "$label" argc --argc-export "$path"
}

# normalize_description <raw> [<choice...>]: the normalizer's output for one raw
# description, with each choice passed as --choice.
normalize_description() {
    local raw="$1" choice
    shift
    local -a args=()
    for choice in "$@"; do args+=(--choice "$choice"); done
    printf '%s' "$raw" | bash "$SCRIPTS/normalize-description.sh" "${args[@]}"
}

# argc_export <script> <out-json>: the exported argc schema of <script>.
argc_export() {
    local path
    native_path_to path "$1"
    argc --argc-export "$path" >"$2"
}

# jq_skill <jq-options...> <filter>: jq with the skill's jq modules on the
# search path. A -f operand must be written as "$NATIVE_SCRIPTS/<program>.jq".
jq_skill() {
    jq -L "$NATIVE_SCRIPTS" "$@"
}

# jq_skill_file <json-file> <jq-options...> <filter>: jq over one file, with the
# skill's modules on the search path. The file operand stays last, so a
# --arg/--argjson pair belongs before the filter.
jq_skill_file() {
    local path
    native_path_to path "$1"
    shift
    jq -L "$NATIVE_SCRIPTS" "$@" "$path"
}

# validate_fragment <fragment> [<jq-options...>]: run validate-fragment.jq in its
# default (validate) mode over one fragment.
validate_fragment() {
    local fragment="$1"
    shift
    jq_skill_file "$fragment" -e -f "$NATIVE_SCRIPTS/validate-fragment.jq" --arg key demo "$@"
}

# compgen_candidates <script> <command words...>: the candidate table argc
# produces for a completion query, one TAB-separated row per candidate. NUL
# bytes are dropped so the rows are line-oriented.
compgen_candidates() {
    local path
    native_path_to path "$1"
    shift
    argc --argc-compgen generic "$path" "$@" | tr -d '\000'
}

# skill_fn <function> [<arguments...>]: call a function from scripts/lib.sh in
# a throwaway subshell. lib.sh sets its own shell options and exports a PATH
# the case file must not inherit, and a subshell gets both without the extra
# fork+exec of `bash -c 'source ...'`.
skill_fn() (
    source "$SCRIPTS/lib.sh"
    "$@"
)

# --- verify-completion.sh wrappers -----------------------------------------

# expect_failure_unchanged <label> <file> <cmd...>: the command must fail and
# leave <file> byte-identical. A rejected write is only correct when the file it
# refused to touch is still intact, so the pair is one check.
UNCHANGED_SEQ=0
expect_failure_unchanged() {
    local label="$1" file="$2" before
    shift 2
    UNCHANGED_SEQ=$((UNCHANGED_SEQ + 1))
    before="$TMP_DIR/unchanged-$UNCHANGED_SEQ.before"
    cp "$file" "$before"
    expect_failure "$label" "$@"
    assert_same "$label leaves the file unchanged" "$file" "$before"
}

# verify_check <label> <script> [<verify args...>]: the standard demo
# invocation (--cmd demo --skip-compgen) plus any case-specific flags.
verify_check() {
    local label="$1" script="$2"
    shift 2
    check "$label" bash "$SCRIPTS/verify-completion.sh" "$script" --cmd demo --skip-compgen "$@"
}

# verify_fails <label> <script> [<verify args...>]
verify_fails() {
    local label="$1" script="$2"
    shift 2
    expect_failure "$label" bash "$SCRIPTS/verify-completion.sh" "$script" --cmd demo --skip-compgen "$@"
}

# verify_rejects <label> <needle> <script> [<verify args...>]
verify_rejects() {
    local label="$1" needle="$2" script="$3"
    shift 3
    check_rejects "$label" "$needle" bash "$SCRIPTS/verify-completion.sh" "$script" --cmd demo --skip-compgen "$@"
}

# --- fixtures ---------------------------------------------------------------

# Baseline script: assembled from the no-choice fixture, no CHOICES block.
build_new_script() {
    [[ -n "${NEW_SCRIPT:-}" && -f "$NEW_SCRIPT" ]] && return 0
    NEW_SCRIPT="$TMP_DIR/new.sh"
    assemble_to "$NEW_SCRIPT" demo -c "$FIXTURES/fragments/no-choice" --stdout
}

# Baseline script with an empty CHOICES block for the formatter tests.
build_choices_base() {
    [[ -n "${CHOICES_BASE:-}" && -f "$CHOICES_BASE" ]] && return 0
    build_new_script
    CHOICES_BASE="$TMP_DIR/choice-base.sh"
    insert_before "$NEW_SCRIPT" "$CHOICES_BASE" "$COMMAND_EVAL_LINE" $'# >>> CHOICES\n# <<< CHOICES\n'
}

# Script assembled from the with-choice fixture and the context fixture.
build_with_script() {
    [[ -n "${WITH_SCRIPT:-}" && -f "$WITH_SCRIPT" ]] && return 0
    WITH_SCRIPT="$TMP_DIR/demo-with.sh"
    assemble_to "$WITH_SCRIPT" demo --cache-dir "$FIXTURES/fragments/with-choice" \
        --context "$FIXTURES/contexts/context.sh" --stdout
}

# Regeneration fixture: a fragment copy plus its assembled script (pre-mutation).
build_regen_fixture() {
    [[ -n "${REGEN_SCRIPT:-}" && -f "$REGEN_SCRIPT" ]] && return 0
    build_with_script
    REGEN_FRAGMENTS="$TMP_DIR/fragments-regen"
    fragment_dir "$REGEN_FRAGMENTS" "$FIXTURES/fragments/with-choice"
    REGEN_SCRIPT="$TMP_DIR/regen.sh"
    cp "$WITH_SCRIPT" "$REGEN_SCRIPT"
}

# Terminated option/arg fixture and its assembled script.
build_terminated_fixture() {
    [[ -n "${TERMINATED_SCRIPT:-}" && -f "$TERMINATED_SCRIPT" ]] && return 0
    TERMINATED_FRAGMENTS="$TMP_DIR/fragments-terminated"
    fragment_with_items "$TERMINATED_FRAGMENTS" '[
  {"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Command", "terminated": true},
  {"kind": "arg", "name": "args", "repeatable": false, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
    TERMINATED_SCRIPT="$TMP_DIR/terminated.sh"
    assemble_to "$TERMINATED_SCRIPT" demo --cache-dir "$TERMINATED_FRAGMENTS" --stdout
}

# Prefixed/delimiter option fixture and its assembled script.
build_prefix_fixture() {
    [[ -n "${PREFIX_SCRIPT:-}" && -f "$PREFIX_SCRIPT" ]] && return 0
    PREFIX_FRAGMENTS="$TMP_DIR/fragments-prefix-delimiter"
    fragment_with_items "$PREFIX_FRAGMENTS" '[
  {"kind": "option", "names": ["-ao"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "s", "description": ""}, {"value": "t", "description": ""}, {"value": "u", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Overwrite mode"},
  {"kind": "option", "names": ["--type"], "notations": ["<TYPE>"], "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Filter by entry type"},
  {"kind": "option", "names": ["-Q"], "notations": [], "choices": [{"value": "X", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Prefix without repeat"},
  {"kind": "option", "names": ["-Z"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": ",", "description": "Prefix with delimiter"},
  {"kind": "arg", "name": "types", "repeatable": true, "required": false, "notation": "<TYPE>", "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "delimiter": ",", "description": "Entry types"}
]'
    PREFIX_SCRIPT="$TMP_DIR/prefix-delimiter.sh"
    assemble_to "$PREFIX_SCRIPT" demo --cache-dir "$PREFIX_FRAGMENTS" --stdout
}

# Described-choices fixture: generated STATIC functions, plus the HINTS/CHOICES
# context used by the regeneration and reserved-prefix tests.
build_static_fixture() {
    [[ -n "${STATIC_SCRIPT:-}" && -f "$STATIC_SCRIPT" ]] && return 0
    STATIC_FRAGMENTS="$TMP_DIR/fragments-choices-desc"
    fragment_with_items "$STATIC_FRAGMENTS" '[
  {"kind": "option", "names": ["--sort"], "notations": ["<SORTER>"], "choices": [{"value": "none", "description": "Do not sort"}, {"value": "path", "description": "Sort by file path"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Sort results"},
  {"kind": "option", "names": ["--plain"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Plain mode"}
]'
    STATIC_SCRIPT="$TMP_DIR/choices-desc.sh"
    assemble_to "$STATIC_SCRIPT" demo --cache-dir "$STATIC_FRAGMENTS" --stdout
    STATIC_CONTEXT="$TMP_DIR/static-context.sh"
    cat >"$STATIC_CONTEXT" <<'CTX'
# >>> SPEC
# <<< SPEC

# >>> HINTS
# keep this hint
# <<< HINTS

# >>> CHOICES
_choice_keep() { :; }
# <<< CHOICES
CTX
    STATIC_BEFORE="$TMP_DIR/static-before.sh"
    assemble_to "$STATIC_BEFORE" demo --cache-dir "$STATIC_FRAGMENTS" \
        --context "$STATIC_CONTEXT" --stdout
}

# Dynamic workflow fixture: a choice function in CHOICES bound through
# set-choice-fns.sh, then re-assembled.
build_dynamic_fixture() {
    [[ -n "${DYNAMIC_SCRIPT:-}" && -f "$DYNAMIC_SCRIPT" ]] && return 0
    DYNAMIC_FRAGMENTS="$TMP_DIR/fragments-dynamic"
    fragment_dir "$DYNAMIC_FRAGMENTS"
    DYNAMIC_SCRIPT="$TMP_DIR/dynamic.sh"
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$DYNAMIC_FRAGMENTS" --output "$DYNAMIC_SCRIPT" --force
    insert_in_place "$DYNAMIC_SCRIPT" "$COMMAND_EVAL_LINE" $'# >>> CHOICES\n_choice_out() {\n    echo out.txt\n}\n# <<< CHOICES\n'
    quiet bash "$SCRIPTS/set-choice-fns.sh" "$DYNAMIC_FRAGMENTS/_root.json" '--output[`_choice_out`]' >/dev/null
    quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$DYNAMIC_FRAGMENTS" --output "$DYNAMIC_SCRIPT" --force
}
