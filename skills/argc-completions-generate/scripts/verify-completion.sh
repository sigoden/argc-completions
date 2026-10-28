#!/usr/bin/env bash
# Validate an argc completion script and its three generated blocks.
#
# Exit status: 0 when all checks pass, 1 when a failure is found.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
VERBOSE="${VERBOSE:-0}"

usage() {
    cat <<'USAGE'
Usage: verify-completion.sh <completion.sh> [options]

Options:
  -c, --cache-dir <dir>        Compare SPEC exactly with cache fragments
      --cmd <name>             Override the command name derived from the file path
      --require-no-choice-fns  Fail if the script contains completion functions / Fn choices
      --skip-compgen           Do not run argc --argc-compgen
      --no-strict              Do not treat warnings as failures
  -v, --verbose
  -h, --help
USAGE
}

file=""
cmd=""
fragments=""
require_no_choice=0
skip_compgen=0
strict=1

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help) usage; exit 0 ;;
        -c|--cache-dir|--fragments) [[ $# -ge 2 ]] || die "$1 requires a value"; fragments="$2"; shift 2 ;;
        --cmd) [[ $# -ge 2 ]] || die "--cmd requires a value"; cmd="$2"; shift 2 ;;
        --require-no-choice-fns) require_no_choice=1; shift ;;
        --skip-compgen) skip_compgen=1; shift ;;
        --strict) strict=1; shift ;;
        --no-strict) strict=0; shift ;;
        -v|--verbose) VERBOSE=1; shift ;;
        -*) die "unknown option: $1" ;;
        *)
            [[ -z "$file" ]] || die "only one completion script is supported"
            file="$1"
            shift
            ;;
    esac
done

[[ -n "$file" ]] || { usage >&2; exit 2; }
[[ -f "$file" ]] || die "completion file not found: $file"
file="$(cd -P "$(dirname "$file")" && pwd -P)/$(basename "$file")"

derive_cmd() {
    local path="$1" rel
    path="${path//\\//}"
    case "$path" in
        */completions/*) rel="${path#*/completions/}" ;;
        completions/*) rel="${path#completions/}" ;;
        *) rel="$(basename "$path")" ;;
    esac
    rel="${rel%.sh}"
    case "$rel" in
        linux/*|macos/*|windows/*) rel="${rel#*/}" ;;
    esac
    printf '%s\n' "${rel//\// }"
}
if [[ -z "$cmd" ]]; then
    cmd="$(derive_cmd "$file")"
fi
# The root command is the first word; it names the cache directory and the
# command block, and it is also the fragment key root.
root_cmd="${cmd%% *}"

require_cmd argc
require_cmd jq
require_cmd gawk
require_cmd sed
require_cmd grep

export ARGC_COMPLETIONS_ROOT="$REPO_ROOT"
ARGC_OS="$(detect_os)"
export ARGC_OS

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

failures=0
warnings=0

pass() { printf 'PASS  %s\n' "$*"; }
warn() { warnings=$((warnings + 1)); printf 'WARN  %s\n' "$*"; }
fail() { failures=$((failures + 1)); printf 'FAIL  %s\n' "$*"; }

echo "verify: $file (cmd=$cmd)"

if head -n 1 "$file" | grep -q '^#!/usr/bin/env bash$'; then
    pass "shebang"
else
    warn "missing or non-standard shebang"
fi

if bash -n "$file" 2>"$tmp_dir/syntax.err"; then
    pass "bash syntax"
else
    fail "bash syntax: $(head -n 1 "$tmp_dir/syntax.err")"
fi

# argparse prints its help to stderr in some argc versions; accept either stream.
if (cd "$REPO_ROOT" && ARGC_COMPLETIONS_ROOT="$REPO_ROOT" bash "$file" --help) >"$tmp_dir/help.out" 2>"$tmp_dir/help.err"; then
    if [[ -s "$tmp_dir/help.out" || -s "$tmp_dir/help.err" ]]; then
        pass "help output"
    else
        fail "help output is empty"
    fi
else
    fail "bash $(basename "$file") --help failed: $(head -n 1 "$tmp_dir/help.err")"
fi

count_marker() {
    local f="$1" direction="$2" name="$3"
    grep -c "^# $direction $name$" "$f" 2>/dev/null || true
}

block_line() {
    local f="$1" direction="$2" name="$3"
    grep -n "^# $direction $name$" "$f" | head -n 1 | cut -d: -f1
}

extract_block() {
    local f="$1" name="$2" dest="$3" starts ends start_line end_line
    starts="$(count_marker "$f" '>>>' "$name")"
    ends="$(count_marker "$f" '<<<' "$name")"
    if [[ "$starts" -eq 0 && "$ends" -eq 0 ]]; then
        return 1
    fi
    if [[ "$starts" -ne 1 || "$ends" -ne 1 ]]; then
        return 2
    fi
    start_line="$(block_line "$f" '>>>' "$name")"
    end_line="$(block_line "$f" '<<<' "$name")"
    if [[ -z "$start_line" || -z "$end_line" || "$start_line" -ge "$end_line" ]]; then
        return 2
    fi
    gawk -v s="$start_line" -v e="$end_line" 'NR > s && NR < e { print }' "$f" >"$dest"
    return 0
}

gen_count="$(count_marker "$file" '>>>' 'SPEC')"
prompt_count="$(count_marker "$file" '>>>' 'HINTS')"
choice_count="$(count_marker "$file" '>>>' 'CHOICES')"
gen_end_count="$(count_marker "$file" '<<<' 'SPEC')"
prompt_end_count="$(count_marker "$file" '<<<' 'HINTS')"
choice_end_count="$(count_marker "$file" '<<<' 'CHOICES')"

layout="legacy"
if [[ "$gen_count" -gt 0 || "$prompt_count" -gt 0 || "$choice_count" -gt 0 ]]; then
    layout="new"
fi

gen_region="$tmp_dir/SPEC.txt"
: >"$gen_region"
region_file="$file"

if [[ "$layout" == "new" ]]; then
    if [[ "$gen_count" -ne 1 || "$gen_end_count" -ne 1 || "$prompt_count" -ne 1 || "$prompt_end_count" -ne 1 || "$choice_count" -ne 1 || "$choice_end_count" -ne 1 ]]; then
        fail "block markers must appear exactly once for SPEC/HINTS/CHOICES"
    else
        gen_start="$(block_line "$file" '>>>' 'SPEC')"
        prompt_start="$(block_line "$file" '>>>' 'HINTS')"
        choice_start="$(block_line "$file" '>>>' 'CHOICES')"
        if [[ "$gen_start" -lt "$prompt_start" && "$prompt_start" -lt "$choice_start" ]]; then
            pass "block order"
        else
            fail "block order must be SPEC -> HINTS -> CHOICES"
        fi
        if extract_block "$file" 'SPEC' "$gen_region"; then
            :
        else
            fail "cannot extract SPEC block"
        fi
        prompt_region="$tmp_dir/HINTS.txt"
        choice_region="$tmp_dir/CHOICES.txt"
        if extract_block "$file" 'HINTS' "$prompt_region"; then
            if gawk '!/^#/ && !/^[[:space:]]*$/ { exit 1 }' "$prompt_region"; then
                pass "HINTS is comments only"
            else
                fail "HINTS contains non-comment lines"
            fi
        else
            fail "cannot extract HINTS block"
        fi
        if extract_block "$file" 'CHOICES' "$choice_region"; then
            if grep -Eq '^# @(describe|cmd|alias|option|flag|arg|env|meta)' "$choice_region"; then
                fail "CHOICES must not contain structural tags"
            else
                pass "CHOICES has no structural tags"
            fi
            if [[ -f "$SCRIPT_DIR/format-choices.sh" ]]; then
                if bash "$SCRIPT_DIR/format-choices.sh" --check "$file" >"$tmp_dir/format.out" 2>"$tmp_dir/format.err"; then
                    pass "CHOICES format"
                else
                    format_detail="$(head -n 1 "$tmp_dir/format.err" 2>/dev/null || true)"
                    if [[ -z "$format_detail" ]]; then
                        format_detail="$(head -n 1 "$tmp_dir/format.out" 2>/dev/null || true)"
                    fi
                    fail "CHOICES format: ${format_detail:-not canonical}; run $SCRIPT_DIR/format-choices.sh $file"
                fi
            else
                fail "CHOICES format: missing $SCRIPT_DIR/format-choices.sh"
            fi
        else
            fail "cannot extract CHOICES block"
        fi
        if grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$gen_region"; then
            fail "SPEC must not define completion functions"
        else
            pass "SPEC has no completion definitions"
        fi
        region_file="$gen_region"
    fi
else
    # Legacy scripts are still valid as long as no cache comparison is requested.
    if [[ -n "$fragments" ]]; then
        fail "cache-dir requires a script with SPEC/HINTS/CHOICES blocks"
    else
        printf 'NOTE  legacy layout: no SPEC/HINTS/CHOICES blocks\n'
    fi
fi

# Tags in the structural region.
: >"$tmp_dir/tags.txt"
gawk '
    /^# @[A-Za-z-]+/ {
        line = $0
        sub(/^# @/, "", line)
        split(line, parts, /[^A-Za-z-]/)
        print parts[1]
    }
' "$region_file" | LC_ALL=C sort -u >"$tmp_dir/tags.txt"
unknown_tags=()
while IFS= read -r tag; do
    [[ -n "$tag" ]] || continue
    case "$tag" in
        describe|cmd|alias|arg|option|flag|meta|env) ;;
        *) unknown_tags+=("$tag") ;;
    esac
done <"$tmp_dir/tags.txt"
if [[ ${#unknown_tags[@]} -gt 0 ]]; then
    fail "unknown comment tags: ${unknown_tags[*]}"
else
    pass "comment tags"
fi

# Command block markers, if present.
marker_starts="$(grep -c '^# {' "$region_file" 2>/dev/null || true)"
marker_ends="$(grep -c '^# }' "$region_file" 2>/dev/null || true)"
if [[ "$marker_starts" -gt 0 || "$marker_ends" -gt 0 ]]; then
    if [[ "$marker_starts" -eq "$marker_ends" ]]; then
        pass "command block marker count"
    else
        fail "command block marker count mismatch: $marker_starts starts, $marker_ends ends"
    fi
    if gawk '
        /^# \{+ / {
            line = $0
            sub(/^# /, "", line)
            gsub(/[{}]/, "", line)
            sub(/^ +/, "", line)
            depth = split(line, words, / +/)
            stack[++top] = depth "|" line
            next
        }
        /^# \}+ / {
            line = $0
            sub(/^# /, "", line)
            gsub(/[{}]/, "", line)
            sub(/^ +/, "", line)
            depth = split(line, words, / +/)
            if (top == 0) exit 1
            split(stack[top], parts, "|")
            if (parts[1] != depth || parts[2] != line) exit 1
            top--
        }
        END { if (top != 0) exit 1 }
    ' "$region_file"; then
        pass "command block nesting"
    else
        fail "command block nesting mismatch"
    fi
else
    log_info "no command block markers found"
fi

# Choice function references (signature only).
: >"$tmp_dir/refs.txt"
gawk '
    function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
    /^# @(option|flag|arg) / {
        rest = $0
        sub(/^# @[a-z]+ /, "", rest)
        idx = match(rest, /\t|[ ][ ]+/)
        sig = idx ? substr(rest, 1, idx - 1) : rest
        if (index(sig, "`") > 0) print sig
    }
    /^# @meta( |$)/ { print }
' "$region_file" | grep -o '`[^`]*`' | tr -d '`' | LC_ALL=C sort -u >"$tmp_dir/refs.txt" || true

eval_line="$(grep -nE '^(command )?eval "\$\(argc --argc-eval' "$file" | head -n 1 | cut -d: -f1)"
if [[ -n "$eval_line" ]]; then
    pass "final argc eval"
else
    fail "missing final argc eval line"
fi

missing_refs=()
late_refs=()
duplicate_refs=()
while IFS= read -r ref; do
    [[ -n "$ref" ]] || continue
    # Completion helpers are named _choice_* or _argc_util_*.
    # Ignore literal backtick text that may appear in a meta value.
    [[ "$ref" == _* ]] || continue
    definition_lines="$(grep -nE "^[[:space:]]*(${ref}|function[[:space:]]+${ref})\(\)[[:space:]]*\{" "$file" | cut -d: -f1 || true)"
    if [[ -z "$definition_lines" ]]; then
        if [[ "$ref" == _argc_util_* ]] && grep -q 'utils/_argc_utils.sh' "$file"; then
            : # provided by the sourced _argc_utils.sh
        else
            missing_refs+=("$ref")
        fi
        continue
    fi
    count="$(printf '%s\n' "$definition_lines" | grep -c . || true)"
    if [[ "$count" -gt 1 ]]; then
        duplicate_refs+=("$ref")
    fi
    if [[ -n "$eval_line" ]]; then
        while IFS= read -r def_line; do
            [[ -n "$def_line" ]] || continue
            if [[ "$def_line" -gt "$eval_line" ]]; then
                late_refs+=("$ref")
                break
            fi
        done <<<"$definition_lines"
    fi
done <"$tmp_dir/refs.txt"

if [[ ${#missing_refs[@]} -gt 0 ]]; then
    fail "undefined choice functions: ${missing_refs[*]}"
fi
if [[ ${#duplicate_refs[@]} -gt 0 ]]; then
    fail "duplicate choice function definitions: ${duplicate_refs[*]}"
fi
if [[ ${#late_refs[@]} -gt 0 ]]; then
    fail "choice functions defined after final eval: ${late_refs[*]}"
fi
if [[ ${#missing_refs[@]} -eq 0 && ${#duplicate_refs[@]} -eq 0 && ${#late_refs[@]} -eq 0 ]]; then
    pass "choice function definitions"
fi

if [[ "$require_no_choice" -eq 1 ]]; then
    if [[ -s "$tmp_dir/refs.txt" ]]; then
        fail "--require-no-choice-fns: choice references found"
    elif grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$file"; then
        fail "--require-no-choice-fns: completion function definitions found"
    else
        pass "--require-no-choice-fns"
    fi
fi

# argc --argc-export
export_json="$tmp_dir/export.json"
export_err="$tmp_dir/export.err"
if argc --argc-export "$file" >"$export_json" 2>"$export_err"; then
    if jq -e 'type == "object" and (.name | type == "string") and (.flag_options | type == "array") and (.positionals | type == "array") and (.subcommands | type == "array")' "$export_json" >/dev/null; then
        pass "argc --argc-export"
    else
        fail "argc --argc-export returned an unexpected JSON shape"
    fi
    exported_name="$(jq -r '.name // ""' "$export_json")"
    if [[ "$exported_name" != "${cmd##* }" ]]; then
        printf 'NOTE  exported name %s differs from derived command %s\n' "$exported_name" "$cmd"
    fi
else
    fail "argc --argc-export: $(head -n 1 "$export_err")"
fi

if [[ "$require_no_choice" -eq 1 && -s "$export_json" ]]; then
    if jq -e '[.. | objects | select(has("choice")) | .choice | select(. != null and .type == "Fn")] | length == 0' "$export_json" >/dev/null; then
        pass "no Fn choices in export"
    else
        fail "export contains Fn choices"
    fi
fi

# Fragment bindings: argc drops a name, and the item's choice with it, when the
# fragment `names` shape is one it cannot parse. Compare every fragment item
# with the export so a lost binding fails here instead of passing silently.
if [[ -n "$fragments" && -s "$export_json" ]]; then
    fragments_dir="$(cd -P "$fragments" 2>/dev/null && pwd -P)" || fragments_dir=""
    if [[ -z "$fragments_dir" ]]; then
        fail "fragment bindings: cannot read cache dir $fragments"
    else
        export_rows="$tmp_dir/export-rows.tsv"
        fragment_rows="$tmp_dir/fragment-rows.tsv"
        if ! jq -r '
            def fn_flag: if (((.choice // {}) | .type // "") == "Fn") then "fn" else "-" end;
            def row($p; $kind; $id; $short; $long):
              [$p, $kind, $id, $short, $long, fn_flag, ((.terminated // false) | tostring)] | join("\u001f");
            def rows($p):
              ((.flag_options[]? | row($p; "opt"; (.id // ""); (.short_name // ""); (.long_name // "")))),
              ((.positionals[]? | row($p; "arg"; (.id // ""); ""; ""))),
              (((.subcommands // [])[]?) as $s
                | ($s | rows(if $p == "." then $s.name else "\($p) \($s.name)" end)));
            rows(".")
        ' "$export_json" >"$export_rows"; then
            fail "fragment bindings: cannot read the export tree"
        else
            declare -A export_name=() export_name_fn=() export_arg=() export_arg_fn=() export_path=()
            declare -A export_name_term=() export_arg_term=()
            while IFS=$'\x1f' read -r row_path row_kind row_id row_short row_long row_fn row_term; do
                [[ -n "$row_path" ]] || continue
                export_path["$row_path"]=1
                if [[ "$row_kind" == "arg" ]]; then
                    if [[ -n "$row_id" ]]; then
                        export_arg["$row_path"$'\x1f'"$row_id"]=1
                        export_arg_term["$row_path"$'\x1f'"$row_id"]="$row_term"
                        if [[ "$row_fn" == "fn" ]]; then
                            export_arg_fn["$row_path"$'\x1f'"$row_id"]=1
                        fi
                    fi
                else
                    for row_name in "$row_short" "$row_long"; do
                        if [[ -n "$row_name" ]]; then
                            export_name["$row_path"$'\x1f'"$row_name"]=1
                            export_name_term["$row_path"$'\x1f'"$row_name"]="$row_term"
                            if [[ "$row_fn" == "fn" ]]; then
                                export_name_fn["$row_path"$'\x1f'"$row_name"]=1
                            fi
                        fi
                    done
                fi
            done <"$export_rows"

            binding_errors=()
            terminated_errors=()
            : >"$fragment_rows"
            while IFS= read -r frag_file; do
                rel="${frag_file#"$fragments_dir"/}"
                [[ "$rel" != "$frag_file" ]] || continue
                case "$rel" in
                    *.json) ;;
                    *) continue ;;
                esac
                if [[ "$rel" == "_root.json" ]]; then
                    frag_key="$root_cmd"
                else
                    IFS='/' read -r -a frag_parts <<<"${rel%.json}"
                    frag_key="$root_cmd"
                    for frag_part in "${frag_parts[@]}"; do
                        frag_key="$frag_key|$frag_part"
                    done
                fi
                sub_path="${frag_key#"$root_cmd"}"
                sub_path="${sub_path#|}"
                sub_path="${sub_path//|/ }"
                if [[ -z "$sub_path" ]]; then
                    export_scope="."
                    display="$root_cmd"
                else
                    export_scope="$sub_path"
                    display="$root_cmd $sub_path"
                fi
                if ! jq -r --arg scope "$export_scope" --arg display "$display" '
                    .items[]?
                    | if .kind == "arg" then
                        ["arg", $scope, $display, (.name // ""), (.choice_fn // ""), ((.terminated // false) | tostring)] | join("\u001f")
                      elif (.kind == "flag" or .kind == "option") then
                        ((.names // [])[]) as $name
                        | ["name", $scope, $display, $name, (.choice_fn // ""), ((.terminated // false) | tostring)] | join("\u001f")
                      else empty end
                ' "$frag_file" >>"$fragment_rows"; then
                    binding_errors+=("cannot read fragment: $display")
                fi
            done < <(find "$fragments_dir" -type f -name '*.json' | LC_ALL=C sort)

            while IFS=$'\x1f' read -r row_kind row_scope row_display row_payload row_fn row_term; do
                [[ -n "$row_kind" ]] || continue
                if [[ -z "${export_path["$row_scope"]:-}" ]]; then
                    printf 'NOTE  fragment not in export, skipped: %s\n' "$row_display"
                    continue
                fi
                case "$row_kind" in
                    arg)
                        lookup="$row_scope"$'\x1f'"$row_payload"
                        if [[ -z "${export_arg["$lookup"]:-}" ]]; then
                            binding_errors+=("dropped positional: $row_display $row_payload")
                        else
                            if [[ -n "$row_fn" && -z "${export_arg_fn["$lookup"]:-}" ]]; then
                                binding_errors+=("dropped choice_fn: $row_display $row_payload (positional) -> $row_fn")
                            fi
                            if [[ "${export_arg_term["$lookup"]:-false}" != "$row_term" ]]; then
                                terminated_errors+=("terminated mismatch: $row_display $row_payload (fragment=$row_term export=${export_arg_term["$lookup"]:-false})")
                            fi
                        fi
                        ;;
                    name)
                        # One row per name, so a two-name item reports any single
                        # dropped name.
                        item_name="$row_payload"
                        if [[ -n "$item_name" ]]; then
                            lookup="$row_scope"$'\x1f'"$item_name"
                            if [[ -z "${export_name["$lookup"]:-}" ]]; then
                                binding_errors+=("dropped name: $row_display $item_name")
                            else
                                if [[ -n "$row_fn" && -z "${export_name_fn["$lookup"]:-}" ]]; then
                                    binding_errors+=("dropped choice_fn: $row_display $item_name -> $row_fn")
                                fi
                                if [[ "${export_name_term["$lookup"]:-false}" != "$row_term" ]]; then
                                    terminated_errors+=("terminated mismatch: $row_display $item_name (fragment=$row_term export=${export_name_term["$lookup"]:-false})")
                                fi
                            fi
                        fi
                        ;;
                esac
            done <"$fragment_rows"

            if [[ ${#binding_errors[@]} -eq 0 ]]; then
                pass "fragment bindings match export"
            else
                shown=0
                for binding_error in "${binding_errors[@]}"; do
                    shown=$((shown + 1))
                    if [[ "$shown" -gt 10 ]]; then
                        break
                    fi
                    printf 'NOTE  binding: %s\n' "$binding_error"
                done
                fail "fragment bindings: ${#binding_errors[@]} item(s) dropped by argc (first: ${binding_errors[0]})"
            fi

            if [[ ${#terminated_errors[@]} -eq 0 ]]; then
                pass "fragment terminated matches export"
            else
                shown=0
                for terminated_error in "${terminated_errors[@]}"; do
                    shown=$((shown + 1))
                    if [[ "$shown" -gt 10 ]]; then
                        break
                    fi
                    printf 'NOTE  terminated: %s\n' "$terminated_error"
                done
                fail "fragment terminated: ${#terminated_errors[@]} mismatch(es) (first: ${terminated_errors[0]})"
            fi
        fi
    fi
fi

# Exact SPEC block comparison.
if [[ -n "$fragments" ]]; then
    if [[ "$layout" != "new" ]]; then
        fail "cache-dir requires a script with SPEC blocks"
    else
        expected_gen="$tmp_dir/expected.SPEC"
        assemble_err="$tmp_dir/assemble.err"
        if bash "$SCRIPT_DIR/assemble.sh" "$root_cmd" --cache-dir "$fragments" --dump-spec >"$expected_gen" 2>"$assemble_err"; then
            if cmp -s "$gen_region" "$expected_gen"; then
                pass "SPEC matches fragments"
            else
                fail "SPEC differs from fragments"
                diff -u "$gen_region" "$expected_gen" | head -n 40 || true
            fi
        else
            fail "assemble --dump-spec failed: $(head -n 1 "$assemble_err")"
        fi
    fi
fi

# A positional enumeration modeled as subcommands (Usage `cmd [a|b|c]`) yields a
# child whose cached help equals the parent's, because that name is not a command.
if [[ -n "$fragments" && "$layout" == "new" ]] && prov_dir="$(cd -P "$fragments" 2>/dev/null && pwd -P)"; then
    prov_bad=0
    while IFS= read -r frag; do
        base="${frag#"$prov_dir"/}"
        base="${base%.json}"
        [[ "$base" != "_root" ]] || continue
        parent="$prov_dir/_root.txt"
        [[ "$(dirname "$base")" == "." ]] || parent="$prov_dir/$(dirname "$base").txt"
        child="$prov_dir/$base.txt"
        if [[ -f "$child" && -f "$parent" ]] && cmp -s "$child" "$parent"; then
            prov_bad=1
            fail "provenance: ${base//\// } help is identical to its parent; it is a positional choice, not a subcommand"
        fi
    done < <(find "$prov_dir" -type f -name '*.json' | LC_ALL=C sort)
    [[ "$prov_bad" -eq 1 ]] || pass "fragment provenance"
fi

# Compgen smoke.
run_with_timeout() {
    local out="$1" err="$2"
    shift 2
    if command -v timeout >/dev/null 2>&1; then
        timeout 5 "$@" >"$out" 2>"$err"
        return $?
    fi
    "$@" >"$out" 2>"$err" &
    local pid=$!
    ( sleep 5; kill -TERM "$pid" 2>/dev/null ) &
    local watcher=$!
    local rc=0
    wait "$pid" || rc=$?
    kill "$watcher" 2>/dev/null || true
    wait "$watcher" 2>/dev/null || true
    return "$rc"
}

check_compgen() {
    local label="$1"
    shift
    local out="$tmp_dir/compgen.out" err="$tmp_dir/compgen.err"
    local quoted="" arg
    for arg in "$file" "$cmd" "$@"; do
        quoted+="$(printf '%q' "$arg") "
    done
    log_info "compgen $label: argc --argc-compgen bash $quoted"
    if run_with_timeout "$out" "$err" argc --argc-compgen bash "$file" "$cmd" "$@"; then
        if grep -qiE 'error:|panic|command not found' "$err"; then
            fail "compgen $label stderr: $(head -n 1 "$err")"
        else
            pass "compgen $label"
        fi
    else
        fail "compgen $label exited non-zero: $(head -n 1 "$err")"
    fi
}

if [[ "$skip_compgen" -eq 1 ]]; then
    log_info "compgen checks skipped"
else
    check_compgen "root options" --
    check_compgen "root positionals" ''

    subcommands_file="$tmp_dir/subcommands.txt"
    jq -r '.subcommands[]?.name' "$export_json" 2>/dev/null >"$subcommands_file" || true
    subcommand_count="$(grep -c . "$subcommands_file" || true)"
    if [[ "$subcommand_count" -gt 100 ]]; then
        printf 'NOTE  only the first 100 subcommands are compgen-tested\n' 
        head -n 100 "$subcommands_file" >"$tmp_dir/subcommands.limited"
        subcommands_file="$tmp_dir/subcommands.limited"
    fi
    while IFS= read -r sub; do
        [[ -n "$sub" ]] || continue
        check_compgen "subcommand $sub" "$sub" --
    done <"$subcommands_file"

    # Best-effort choice fn smoke for root and first-level options.
    # The root row needs a non-empty first column: read treats a leading tab as
    # IFS whitespace and would drop an empty subcommand field, shifting the row.
    fn_options_file="$tmp_dir/fn-options.txt"
    : >"$fn_options_file"
    jq -r '.flag_options[]? | select(.choice != null and .choice.type == "Fn") | [".", (.long_name // ""), (.short_name // ""), (.assigned|tostring), (.prefixed|tostring)] | @tsv' "$export_json" 2>/dev/null >>"$fn_options_file" || true
    jq -r '.subcommands[]? as $s | $s.flag_options[]? | select(.choice != null and .choice.type == "Fn") | [$s.name, (.long_name // ""), (.short_name // ""), (.assigned|tostring), (.prefixed|tostring)] | @tsv' "$export_json" 2>/dev/null >>"$fn_options_file" || true
    fn_count=0
    while IFS=$'\t' read -r sub long short assigned prefixed; do
        if [[ "$sub" == "." ]]; then
            sub=""
        fi
        [[ -n "$long$short" ]] || continue
        [[ "$assigned" == "true" || "$prefixed" == "true" ]] && continue
        token="$long"
        [[ -n "$token" ]] || token="$short"
        [[ -n "$token" ]] || continue
        fn_count=$((fn_count + 1))
        [[ "$fn_count" -le 30 ]] || break
        if [[ -n "$sub" ]]; then
            check_compgen "choice $sub $token" "$sub" "$token" ''
        else
            check_compgen "choice $token" "$token" ''
        fi
    done <"$fn_options_file"
fi

if [[ "$failures" -gt 0 ]]; then
    printf 'RESULT: FAIL (%s failures, %s warnings)\n' "$failures" "$warnings"
    exit 1
fi
if [[ "$strict" -eq 1 && "$warnings" -gt 0 ]]; then
    printf 'RESULT: FAIL (strict, %s warnings)\n' "$warnings"
    exit 1
fi
printf 'RESULT: PASS (%s warnings)\n' "$warnings"
