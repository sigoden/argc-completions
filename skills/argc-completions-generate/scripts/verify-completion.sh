#!/usr/bin/env bash
# Validate an argc completion script and its generated blocks.
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
  -c, --cache-dir <dir>        Compare SPEC and STATIC exactly with cache fragments
      --cmd <name>             Override the command name derived from the file path
      --require-no-choice-fns  Fail if the script contains non-generated completion functions / Fn choices
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
if (cd "$REPO_ROOT" && ARGC_COMPLETIONS_ROOT="$REPO_ROOT" bash "$(native_path "$file")" --help) >"$tmp_dir/help.out" 2>"$tmp_dir/help.err"; then
    if [[ -s "$tmp_dir/help.out" || -s "$tmp_dir/help.err" ]]; then
        pass "help output"
    else
        fail "help output is empty"
    fi
else
    fail "bash $(basename "$file") --help failed: $(head -n 1 "$tmp_dir/help.err")"
fi

gen_count="$(count_marker "$file" '>>>' 'SPEC')"
static_count="$(count_marker "$file" '>>>' 'STATIC')"
prompt_count="$(count_marker "$file" '>>>' 'HINTS')"
choice_count="$(count_marker "$file" '>>>' 'CHOICES')"
gen_end_count="$(count_marker "$file" '<<<' 'SPEC')"
static_end_count="$(count_marker "$file" '<<<' 'STATIC')"
prompt_end_count="$(count_marker "$file" '<<<' 'HINTS')"
choice_end_count="$(count_marker "$file" '<<<' 'CHOICES')"

layout="unmarked"
if [[ "$gen_count" -gt 0 || "$static_count" -gt 0 || "$prompt_count" -gt 0 || "$choice_count" -gt 0 ]]; then
    layout="new"
fi

gen_region="$tmp_dir/SPEC.txt"
static_region="$tmp_dir/STATIC.txt"
: >"$gen_region"
: >"$static_region"
declare -A STATIC_SET=()
static_start=""
static_end=""
region_file="$file"

if [[ "$layout" == "new" ]]; then
    block_bad=0
    if [[ "$gen_count" -ne 1 || "$gen_end_count" -ne 1 || "$prompt_count" -ne 1 || "$prompt_end_count" -ne 1 ]]; then
        block_bad=1
    fi
    # STATIC and CHOICES are optional, but a present block must be closed once.
    if [[ "$static_count" -ne "$static_end_count" || "$static_count" -gt 1 ]]; then
        block_bad=1
    fi
    if [[ "$choice_count" -ne "$choice_end_count" || "$choice_count" -gt 1 ]]; then
        block_bad=1
    fi
    if [[ "$block_bad" -eq 1 ]]; then
        fail "block markers must appear exactly once for SPEC/HINTS and at most once for STATIC/CHOICES"
    else
        gen_start="$(block_line "$file" '>>>' 'SPEC')"
        prompt_start="$(block_line "$file" '>>>' 'HINTS')"
        choice_start=""
        if [[ "$static_count" -eq 1 ]]; then
            static_start="$(block_line "$file" '>>>' 'STATIC')"
            static_end="$(block_line "$file" '<<<' 'STATIC')"
        fi
        if [[ "$choice_count" -eq 1 ]]; then
            choice_start="$(block_line "$file" '>>>' 'CHOICES')"
        fi
        order_bad=0
        if ! [[ "$gen_start" -lt "$prompt_start" ]]; then
            order_bad=1
        elif [[ -n "$static_start" ]] && ! [[ "$prompt_start" -lt "$static_start" ]]; then
            order_bad=1
        elif [[ -n "$choice_start" ]]; then
            order_prev="$prompt_start"
            [[ -z "$static_start" ]] || order_prev="$static_start"
            if ! [[ "$order_prev" -lt "$choice_start" ]]; then
                order_bad=1
            fi
        fi
        if [[ "$order_bad" -eq 0 ]]; then
            pass "block order"
        else
            fail "block order must be SPEC -> HINTS -> [STATIC] -> [CHOICES]"
        fi
        if extract_block "$file" 'SPEC' "$gen_region"; then
            :
        else
            fail "cannot extract SPEC block"
        fi
        prompt_region="$tmp_dir/HINTS.txt"
        choice_region="$tmp_dir/CHOICES.txt"
        : >"$prompt_region"
        : >"$choice_region"
        if extract_block "$file" 'HINTS' "$prompt_region"; then
            if gawk '!/^#/ && !/^[[:space:]]*$/ { exit 1 }' "$prompt_region"; then
                pass "HINTS is comments only"
            else
                fail "HINTS contains non-comment lines"
            fi
        else
            fail "cannot extract HINTS block"
        fi
        # HINTS markers scope prompt text: common lines before the first
        # marker, then one exact-path section per `# %%<path>` marker.
        declare -A hints_paths=()
        declare -A hints_seen=()
        hints_paths["$root_cmd"]=1
        while IFS= read -r spec_path; do
            [[ -z "$spec_path" ]] || hints_paths["$spec_path"]=1
        done < <(gawk '
            /^# \{\{+ / {
                path = $0
                sub(/^# /, "", path)
                gsub(/[{}]/, "", path)
                sub(/^ +/, "", path)
                sub(/ +$/, "", path)
                gsub(/[[:blank:]]+/, " ", path)
                if (path != "") print path
            }
        ' "$gen_region")
        hints_marker_count=0
        hints_marker_bad=0
        while IFS= read -r hints_marker; do
            hints_marker_count=$((hints_marker_count + 1))
            hints_line=$((prompt_start + ${hints_marker%%:*}))
            hints_path="$(hints_marker_path "${hints_marker#*:}")"
            if [[ -z "$hints_path" ]]; then
                fail "HINTS marker without a command path at line $hints_line"
                hints_marker_bad=1
                continue
            fi
            if [[ -z "${hints_paths[$hints_path]:-}" ]]; then
                fail "HINTS marker path is not a command block: $hints_path (line $hints_line)"
                hints_marker_bad=1
            fi
            if [[ -n "${hints_seen[$hints_path]:-}" ]]; then
                fail "HINTS marker duplicated: $hints_path (line $hints_line)"
                hints_marker_bad=1
            fi
            hints_seen["$hints_path"]=1
        done < <(grep -n '^# %%' "$prompt_region" || true)
        if [[ "$hints_marker_count" -gt 0 && "$hints_marker_bad" -eq 0 ]]; then
            pass "HINTS markers"
        fi
        if [[ "$choice_count" -eq 1 ]]; then
            if extract_block "$file" 'CHOICES' "$choice_region"; then
                if grep -q '[^[:space:]]' "$choice_region"; then
                    if grep -Eq '^# @(describe|cmd|alias|option|flag|arg|env|meta)' "$choice_region"; then
                        fail "CHOICES must not contain structural tags"
                    else
                        pass "CHOICES has no structural tags"
                    fi
                else
                    fail "empty CHOICES block: re-run assemble.sh to drop it"
                fi
            else
                fail "cannot extract CHOICES block"
            fi
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
        if [[ "$static_count" -eq 1 ]]; then
            if extract_block "$file" 'STATIC' "$static_region"; then
                if grep -q '[^[:space:]]' "$static_region"; then
                    if grep -Eq '^# @(describe|cmd|alias|option|flag|arg|env|meta)' "$static_region"; then
                        fail "STATIC must not contain structural tags"
                    else
                        pass "STATIC has no structural tags"
                    fi
                else
                    fail "empty STATIC block: re-run assemble.sh to drop it"
                fi
            else
                fail "cannot extract STATIC block"
            fi
        fi
        while IFS= read -r static_fn; do
            [[ -n "$static_fn" ]] || continue
            STATIC_SET["$static_fn"]=1
        done < <(grep -oE '^_static_[A-Za-z0-9_]*' "$static_region" || true)
        reserved_outside=""
        if [[ -n "$static_start" && -n "$static_end" ]]; then
            reserved_outside="$(gawk -v s="$static_start" -v e="$static_end" '
                /^[[:space:]]*_static_[A-Za-z0-9_]*\(\)[[:space:]]*\{/ {
                    if (NR < s || NR > e) print FILENAME ":" NR ": " $0
                }' "$file")"
        else
            reserved_outside="$(grep -nE '^[[:space:]]*_static_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$file" || true)"
        fi
        if [[ -n "$reserved_outside" ]]; then
            fail "reserved _static_ function defined outside STATIC: $reserved_outside"
        else
            pass "STATIC owns generated choice functions"
        fi
        if grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$gen_region"; then
            fail "SPEC must not define completion functions"
        else
            pass "SPEC has no completion definitions"
        fi
        region_file="$gen_region"
    fi
else
    # Only the block layout is supported; an unmarked script cannot be verified
    # against fragments, and assembly would silently drop its HINTS/CHOICES.
    fail "no block markers: add '# >>> SPEC'/'# <<< SPEC' and '# >>> HINTS'/'# <<< HINTS' (only the block layout is supported)"
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

# Tag order inside one command block: describe/cmd -> alias -> meta -> [env]
# -> flag/option -> arg. Assembly emits this order; a hand edit or an older
# render can regress it, so verify fails instead of tolerating it.
tag_order_offset=0
if [[ "$layout" == "new" ]]; then
    tag_order_offset="$(block_line "$file" '>>>' 'SPEC')"
    tag_order_offset="${tag_order_offset:-0}"
fi
tag_order_violations="$(gawk -v origin="$file" -v offset="$tag_order_offset" '
    BEGIN {
        rank["describe"] = 1; rank["cmd"] = 1
        rank["alias"] = 2
        rank["meta"] = 3
        rank["env"] = 4
        rank["flag"] = 5; rank["option"] = 5
        rank["arg"] = 6
    }
    /^# \{+ / { prev = 0; prev_tag = ""; next }
    /^# \}+ / { prev = 0; prev_tag = ""; next }
    /^# @[A-Za-z-]+/ {
        line = $0
        sub(/^# @/, "", line)
        split(line, parts, /[^A-Za-z-]/)
        tag = parts[1]
        if (!(tag in rank)) next
        if (prev > 0 && rank[tag] < prev) {
            printf "%s:%d: @%s after @%s\n", origin, NR + offset, tag, prev_tag
        }
        prev = rank[tag]
        prev_tag = tag
    }
' "$region_file" 2>/dev/null || true)"
if [[ -n "$tag_order_violations" ]]; then
    fail "tag order must be describe/cmd -> alias -> meta -> [env] -> flag/option -> arg: $tag_order_violations"
else
    pass "tag order"
fi

# Root-only meta keys belong to the root command block.
root_only_meta_violations="$(gawk '
    /^# \{\{/ { in_child = 1 }
    in_child && /^# @meta (combine-shorts|inherit-flag-options)([[:space:]]|$)/ { print FILENAME ":" NR ": " $0 }
' "$file" 2>/dev/null || true)"
if [[ -n "$root_only_meta_violations" ]]; then
    fail "root-only meta on a subcommand (argc reads it from the root only): $root_only_meta_violations"
else
    pass "root-only meta placement"
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
    other_refs=""
    while IFS= read -r ref; do
        [[ -n "$ref" ]] || continue
        [[ -n "${STATIC_SET[$ref]:-}" ]] && continue
        other_refs+="$ref "
    done <"$tmp_dir/refs.txt"
    other_defs=""
    while IFS= read -r header_line; do
        [[ -n "$header_line" ]] || continue
        header_fn="${header_line%%(*}"
        header_fn="${header_fn#"${header_fn%%[![:space:]]*}"}"
        [[ -n "${STATIC_SET[$header_fn]:-}" ]] && continue
        other_defs+="$header_fn "
    done < <(grep -E '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$file" || true)
    if [[ -n "$other_refs" ]]; then
        fail "--require-no-choice-fns: choice references found: $other_refs"
    elif [[ -n "$other_defs" ]]; then
        fail "--require-no-choice-fns: completion function definitions found: $other_defs"
    else
        pass "--require-no-choice-fns"
    fi
fi

# argc --argc-export
export_json="$tmp_dir/export.json"
export_err="$tmp_dir/export.err"
if argc --argc-export "$(native_path "$file")" >"$export_json" 2>"$export_err"; then
    if jq -e 'type == "object" and (.name | type == "string") and (.flag_options | type == "array") and (.positionals | type == "array") and (.subcommands | type == "array")' "$(native_path "$export_json")" >/dev/null; then
        pass "argc --argc-export"
    else
        fail "argc --argc-export returned an unexpected JSON shape"
    fi
    exported_name="$(jq -r '.name // ""' "$(native_path "$export_json")")"
    if [[ "$exported_name" != "${cmd##* }" ]]; then
        printf 'NOTE  exported name %s differs from derived command %s\n' "$exported_name" "$cmd"
    fi
else
    fail "argc --argc-export: $(head -n 1 "$export_err")"
fi

if [[ "$require_no_choice" -eq 1 && -s "$export_json" ]]; then
    static_names_json="[]"
    if [[ ${#STATIC_SET[@]} -gt 0 ]]; then
        static_names_json="$(printf '%s\n' "${!STATIC_SET[@]}" | jq -R . | jq -s .)"
    fi
    if jq -e --argjson names "$static_names_json" '
        [.. | objects | select(has("choice")) | .choice
         | select(. != null and .type == "Fn") | .data[0]
         | select((($names // []) | index(.)) == null)] | length == 0
    ' "$(native_path "$export_json")" >/dev/null; then
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
        if ! jq -b -r '
            def fn_flag: if (((.choice // {}) | .type // "") == "Fn") then "fn" else "-" end;
            def row($p; $kind; $id; $short; $long):
              [$p, $kind, $id, $short, $long, fn_flag, ((.terminated // false) | tostring)] | join("\u001f");
            def rows($p):
              ((.flag_options[]? | row($p; "opt"; (.id // ""); (.short_name // ""); (.long_name // "")))),
              ((.positionals[]? | row($p; "arg"; (.id // ""); ""; ""))),
              (((.subcommands // [])[]?) as $s
                | ($s | rows(if $p == "." then $s.name else "\($p) \($s.name)" end)));
            rows(".")
        ' "$(native_path "$export_json")" >"$export_rows"; then
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
                        frag_part="$(fragment_name_decode "$frag_part")"
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
                if ! jq -b -r --arg scope "$export_scope" --arg display "$display" '
                    def described_choices:
                      ((.choices // []) | length) > 0
                      and any((.choices // [])[]?; (.description // "") != "");
                    def described_flag: if described_choices then "1" else "0" end;
                    .items[]?
                    | if .kind == "arg" then
                        ["arg", $scope, $display, (.name // ""), (.choice_fn // ""), ((.terminated // false) | tostring), described_flag] | join("\u001f")
                      elif (.kind == "flag" or .kind == "option") then
                        ((.names // [])[]) as $name
                        | ["name", $scope, $display, $name, (.choice_fn // ""), ((.terminated // false) | tostring), described_flag] | join("\u001f")
                      else empty end
                ' "$(native_path "$frag_file")" >>"$fragment_rows"; then
                    binding_errors+=("cannot read fragment: $display")
                fi
            done < <(find "$fragments_dir" -type f -name '*.json' | LC_ALL=C sort)

            while IFS=$'\x1f' read -r row_kind row_scope row_display row_payload row_fn row_term row_described; do
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
                            if [[ "$row_described" == "1" && -z "${export_arg_fn["$lookup"]:-}" ]]; then
                                binding_errors+=("dropped static choices: $row_display $row_payload (positional)")
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
                                if [[ "$row_described" == "1" && -z "${export_name_fn["$lookup"]:-}" ]]; then
                                    binding_errors+=("dropped static choices: $row_display $item_name")
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

# Exact SPEC and STATIC block comparison.
if [[ -n "$fragments" ]]; then
    if [[ "$layout" != "new" ]]; then
        fail "cache-dir requires a script with SPEC blocks"
    else
        expected_dir="$tmp_dir/expected-blocks"
        expected_gen="$expected_dir/SPEC"
        expected_static="$expected_dir/STATIC"
        assemble_err="$tmp_dir/assemble.err"
        # One assemble run writes both blocks: a second run would reload,
        # validate, and re-derive every fragment for no extra coverage.
        if bash "$SCRIPT_DIR/assemble.sh" "$root_cmd" --cache-dir "$fragments" --dump-dir "$expected_dir" 2>"$assemble_err"; then
            if cmp -s "$gen_region" "$expected_gen"; then
                pass "SPEC matches fragments"
            else
                fail "SPEC differs from fragments"
                diff -u "$gen_region" "$expected_gen" | head -n 40 || true
            fi
            if cmp -s "$static_region" "$expected_static"; then
                pass "STATIC matches fragments"
            else
                fail "STATIC differs from fragments; re-run assemble"
                diff -u "$static_region" "$expected_static" | head -n 40 || true
            fi
        else
            fail "assemble --dump-dir failed: $(head -n 1 "$assemble_err")"
        fi
    fi
fi

# Per-fragment facts from one records invocation per file (validate-fragment.jq
# in extract mode): the provenance and cache-hygiene checks below both read the
# same four fields, so they share one jq run per fragment instead of one each.
declare -A FRAG_LOADED=() FRAG_FAILED=() FRAG_KIND=() FRAG_HASH=() FRAG_COMMAND=() FRAG_SECTION=()
frag_facts() {
    local frag="$1" records kind f1 f2 f3 f4
    [[ -z "${FRAG_LOADED[$frag]:-}" ]] || return 0
    FRAG_LOADED[$frag]=1
    if ! records="$(extract_fragment_records "" "$frag" 2>/dev/null)"; then
        FRAG_FAILED[$frag]=1
        return 0
    fi
    while IFS=$'\x1f' read -r kind f1 f2 f3 f4; do
        [[ "$kind" == X ]] || continue
        FRAG_KIND[$frag]="$f1"
        FRAG_HASH[$frag]="$f2"
        FRAG_COMMAND[$frag]="$f3"
        FRAG_SECTION[$frag]="$f4"
    done <<<"$records"
}

# Cache-hygiene rule for one fragment's hash/source.command pair: `none` needs an
# empty hash, help/man need a 64-hex hash and a safe token command.
frag_hash_ok() {
    local frag="$1" kind="${FRAG_KIND[$1]:-}" hash="${FRAG_HASH[$1]:-}" command="${FRAG_COMMAND[$1]:-}"
    case "$kind" in
        none) [[ -z "$hash" ]] ;;
        help | man)
            [[ "$hash" =~ ^[0-9a-f]{64}$ ]] || return 1
            [[ "$command" =~ ^[A-Za-z0-9_.+:@/-]+(\ [A-Za-z0-9_.+:@/-]+)*$ ]] || return 1
            [[ "$command" != "help" ]] || return 1
            if [[ "$command" == "help "* ]]; then
                # `help` takes exactly one argument: no second space.
                [[ "${command#help }" != *" "* ]] || return 1
            fi
            return 0
            ;;
        *) return 1 ;;
    esac
}

# A positional enumeration modeled as subcommands (Usage `cmd [a|b|c]`) yields a
# child whose provenance is the parent page, because that name is not a command.
# A shared-help node may legitimately record the parent command; source.section
# marks it, so equal commands are expected there.
if [[ -n "$fragments" && "$layout" == "new" ]] && prov_dir="$(cd -P "$fragments" 2>/dev/null && pwd -P)"; then
    prov_bad=0
    while IFS= read -r frag; do
        base="${frag#"$prov_dir"/}"
        base="${base%.json}"
        [[ "$base" != "_root" ]] || continue
        frag_facts "$frag"
        child_command=""
        if [[ "${FRAG_KIND[$frag]:-}" == "help" || "${FRAG_KIND[$frag]:-}" == "man" ]]; then
            child_command="${FRAG_COMMAND[$frag]:-}"
        fi
        [[ -n "$child_command" ]] || continue
        [[ -z "${FRAG_SECTION[$frag]:-}" ]] || continue
        if [[ "$(dirname "$base")" == "." ]]; then
            parent="$prov_dir/_root.json"
        else
            parent="$prov_dir/$(dirname "$base").json"
        fi
        [[ -f "$parent" ]] || continue
        frag_facts "$parent"
        parent_command=""
        if [[ "${FRAG_KIND[$parent]:-}" == "help" || "${FRAG_KIND[$parent]:-}" == "man" ]]; then
            parent_command="${FRAG_COMMAND[$parent]:-}"
        fi
        if [[ "$child_command" == "$parent_command" ]]; then
            prov_bad=1
            fail "provenance: ${base//\// } source.command is identical to its parent; it is a positional choice, not a subcommand"
        fi
    done < <(find "$prov_dir" -type f -name '*.json' | LC_ALL=C sort)
    [[ "$prov_bad" -eq 1 ]] || pass "fragment provenance"
fi

# Cache hygiene: the fragment directory holds .json fragments and nothing else.
# Every .txt help file is now illegal (help lives in a temporary directory), and
# a fragment must carry a valid hash/source.command pair.
if [[ -n "$fragments" && "$layout" == "new" ]] && hyg_dir="$(cd -P "$fragments" 2>/dev/null && pwd -P)"; then
    hyg_bad=0
    while IFS= read -r hyg_file; do
        hyg_rel="${hyg_file#"$hyg_dir"/}"
        case "$hyg_rel" in
            *.json)
                # Same field rules the old per-file jq filter applied, read from
                # the shared records pass. A fragment jq cannot even render (for
                # example a non-string hash) counts as invalid here too.
                frag_facts "$hyg_file"
                if [[ -n "${FRAG_FAILED[$hyg_file]:-}" ]] || ! frag_hash_ok "$hyg_file"; then
                    hyg_bad=1
                    fail "cache hygiene: $hyg_rel has an invalid hash or source.command; recompile the node"
                fi
                continue
                ;;
            _root.new.txt)
                hyg_bad=1
                fail "cache hygiene: $hyg_rel is a probe leftover; remove it"
                continue
                ;;
            *.txt)
                hyg_bad=1
                fail "cache hygiene: $hyg_rel is a .txt help file; only .json fragments are allowed"
                continue
                ;;
            *)
                hyg_bad=1
                fail "cache hygiene: unexpected file $hyg_rel; delete it"
                ;;
        esac
    done < <(find "$hyg_dir" -type f | LC_ALL=C sort)
    [[ "$hyg_bad" -eq 1 ]] || pass "cache hygiene"
fi

# Compgen smoke.
# generic is argc's raw candidate mode: no shell post-processing and no
# path expansion. This smoke asserts exit status and stderr, not candidates;
# candidate assertions belong to test-compgen.sh.
check_compgen() {
    local label="$1"
    shift
    local out="$tmp_dir/compgen.out" err="$tmp_dir/compgen.err"
    local quoted="" arg
    for arg in "$file" "$cmd" "$@"; do
        quoted+="$(printf '%q' "$arg") "
    done
    log_info "compgen $label: argc --argc-compgen generic $quoted"
    if run_with_timeout "$out" "$err" 5 argc --argc-compgen generic "$(native_path "$file")" "$cmd" "$@"; then
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
    jq -b -r '.subcommands[]?.name' "$(native_path "$export_json")" 2>/dev/null >"$subcommands_file" || true
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
    jq -b -r '.flag_options[]? | select(.choice != null and .choice.type == "Fn") | [".", (.long_name // ""), (.short_name // ""), (.assigned|tostring), (.prefixed|tostring)] | @tsv' "$(native_path "$export_json")" 2>/dev/null >>"$fn_options_file" || true
    jq -b -r '.subcommands[]? as $s | $s.flag_options[]? | select(.choice != null and .choice.type == "Fn") | [$s.name, (.long_name // ""), (.short_name // ""), (.assigned|tostring), (.prefixed|tostring)] | @tsv' "$(native_path "$export_json")" 2>/dev/null >>"$fn_options_file" || true
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
