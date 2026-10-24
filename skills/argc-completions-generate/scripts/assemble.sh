#!/usr/bin/env bash
# Assemble a structural argc completion script from JSON fragments.
#
# The generated file is organized into three blocks:
#   llm-generate  - command definitions generated from fragments (replaced on every run)
#   llm-prompt    - prompt text used as context by parser subagents (preserved)
#   choice-fns    - dynamic completion functions (preserved)

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
VERBOSE="${VERBOSE:-0}"
# flag/option/arg tag lines put their description at TAG_DESC_COLUMN (1-based).
# A tag longer than TAG_FIELD_WIDTH keeps the plain two-space separator instead.
readonly TAG_DESC_COLUMN=49
readonly TAG_FIELD_WIDTH=$((TAG_DESC_COLUMN - 5))

usage() {
    cat <<'USAGE'
Usage: assemble.sh <root> [options]

Options:
  -c, --cache-dir <dir>   Fragment/cache directory (default: <REPO_ROOT>/cache/compile/<root>)
  -o, --output <file>     Output completion script
      --context <file>    Source completion script (default: output when it exists)
      --check             Compare with the existing output, do not write
      --stdout            Print the complete script to stdout
      --force             Overwrite an existing output file
      --dump-llm-generate Print only the generated llm-generate block
  -v, --verbose
  -h, --help
USAGE
}

absolute_path() {
    local path="$1"
    case "$path" in
        /*) printf '%s\n' "$path" ;;
        *) printf '%s/%s\n' "$PWD" "$path" ;;
    esac
}

root=""
fragments_dir=""
output_file=""
context_override=""
check_mode=0
stdout_mode=0
force=0
dump_mode=0

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        -c|--cache-dir|--fragments)
            [[ $# -ge 2 ]] || die "$1 requires a value"
            fragments_dir="$(absolute_path "$2")"
            shift 2
            ;;
        -o|--output)
            [[ $# -ge 2 ]] || die "$1 requires a value"
            output_file="$(absolute_path "$2")"
            shift 2
            ;;
        --context)
            [[ $# -ge 2 ]] || die "$1 requires a value"
            context_override="$(absolute_path "$2")"
            shift 2
            ;;
        --check) check_mode=1; shift ;;
        --stdout) stdout_mode=1; shift ;;
        --force) force=1; shift ;;
        --dump-llm-generate) dump_mode=1; shift ;;
        -v|--verbose) VERBOSE=1; shift ;;
        -*)
            die "unknown option: $1"
            ;;
        *)
            [[ -z "$root" ]] || die "only one root command is supported"
            root="$1"
            shift
            ;;
    esac
done

[[ -n "$root" ]] || { usage >&2; exit 2; }
[[ "$root" =~ ^[A-Za-z0-9_.+@-]+$ ]] || die "invalid root command name: $root"

require_pipeline_tools

if [[ -z "$fragments_dir" ]]; then
    fragments_dir="$REPO_ROOT/cache/compile/$root"
fi
[[ -d "$fragments_dir" ]] || die "fragment directory not found: $fragments_dir"

if [[ -z "$output_file" ]]; then
    if output_file="$(resolve_completion_file "$root")"; then
        :
    else
        output_file="$REPO_ROOT/completions/$root.sh"
    fi
fi

if [[ -n "$context_override" ]]; then
    [[ -f "$context_override" ]] || die "context file not found: $context_override"
fi

if [[ "$check_mode" -eq 1 && ! -f "$output_file" ]]; then
    die "--check requires an existing output file: $output_file"
fi

if [[ "$check_mode" -eq 0 && "$stdout_mode" -eq 0 && "$dump_mode" -eq 0 && -f "$output_file" && "$force" -eq 0 ]]; then
    die "output exists: $output_file (use --force to overwrite)"
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

declare -A FRAG_FILE=()
declare -A NODE_DESC=()
declare -A NODE_ALIASES=()
declare -A NODE_META=()
declare -A NODE_ITEMS=()
declare -A NODE_SUBS=()
declare -A DECLARED=()
declare -A CHILD_STATUS=()
declare -A DECLARED_ALIASES=()
declare -A SIBLING_SEEN=()

root_fragment="$fragments_dir/_root.json"
[[ -f "$root_fragment" ]] || die "root fragment not found: $root_fragment"

load_fragments() {
    local file rel rel_noext key validation_error parts part expected_key
    while IFS= read -r file; do
        rel="${file#"$fragments_dir"/}"
        [[ "$rel" != "$file" ]] || continue
        case "$rel" in
            *.json) ;;
            *) continue ;;
        esac
        if [[ "$rel" == "_root.json" ]]; then
            key="$root"
        else
            rel_noext="${rel%.json}"
            IFS='/' read -r -a parts <<<"$rel_noext"
            [[ "${#parts[@]}" -gt 0 ]] || die "invalid fragment path: $file"
            expected_key="$root"
            for part in "${parts[@]}"; do
                [[ -n "$part" ]] || die "invalid fragment path: $file"
                [[ "$part" != "_root" ]] || die "nested _root.json is not supported: $file"
                expected_key="$expected_key|$part"
            done
            key="$expected_key"
        fi
        if [[ -n "${FRAG_FILE[$key]:-}" ]]; then
            die "duplicate fragment for path: ${key//|/ }"
        fi
        if ! validation_error="$(jq -e -f "$SCRIPT_DIR/validate-fragment.jq" --arg key "$key" "$file" 2>&1 >/dev/null)"; then
            log_error "invalid fragment: $file"
            printf '%s\n' "$validation_error" >&2
            exit 1
        fi
        FRAG_FILE[$key]="$file"
        NODE_DESC[$key]="$(jq -r '(.description // "") | gsub("[\\r\\n\\t]+"; " ") | gsub("^ +| +$"; "")' "$file")"
        NODE_ALIASES[$key]="$(jq -r '(.aliases // []) | join(",")' "$file")"
        NODE_META[$key]="$(jq -c '.meta // []' "$file")"
        NODE_ITEMS[$key]="$(jq -c '.items // []' "$file")"
        NODE_SUBS[$key]="$(jq -c '.subcommands // []' "$file")"
    done < <(find "$fragments_dir" -type f -name '*.json' | LC_ALL=C sort)
}

load_fragments

[[ -n "${FRAG_FILE[$root]:-}" ]] || die "root fragment not found: $root_fragment"

# Validate declarations, subcommand status, stale fragments, and sibling name/alias collisions.
TODO_PATHS=()
MISSING_PATHS=()
FAILED_PATHS=()
STALE_PATHS=()
for key in "${!FRAG_FILE[@]}"; do
    if ! siblings="$(jq -r '.[] | .name, (.aliases[]?)' <<<"${NODE_SUBS[$key]}")"; then
        die "failed to read subcommands: ${FRAG_FILE[$key]}"
    fi
    while IFS= read -r sibling; do
        [[ -n "$sibling" ]] || continue
        if [[ -n "${SIBLING_SEEN["$key|$sibling"]:-}" ]]; then
            die "duplicate subcommand name/alias under ${key//|/ }: $sibling"
        fi
        SIBLING_SEEN["$key|$sibling"]=1
    done <<<"$siblings"

    if ! declarations="$(jq -r '.[] | .name + "\u001f" + (.status // "todo") + "\u001f" + ((.aliases // []) | join(","))' <<<"${NODE_SUBS[$key]}")"; then
        die "failed to read subcommands: ${FRAG_FILE[$key]}"
    fi
    while IFS=$'\x1f' read -r child_name status child_aliases; do
        [[ -n "$child_name" ]] || continue
        child_key="$key|$child_name"
        if [[ -n "${DECLARED[$child_key]:-}" ]]; then
            die "subcommand declared more than once: ${child_key//|/ }"
        fi
        DECLARED[$child_key]=1
        CHILD_STATUS[$child_key]="$status"
        DECLARED_ALIASES[$child_key]="$child_aliases"
    done <<<"$declarations"
done

for child_key in "${!DECLARED[@]}"; do
    status="${CHILD_STATUS[$child_key]}"
    case "$status" in
        todo)
            TODO_PATHS+=("${child_key//|/ }")
            ;;
        succeeded)
            if [[ -z "${FRAG_FILE[$child_key]:-}" ]]; then
                MISSING_PATHS+=("${child_key//|/ }")
            fi
            ;;
        failed)
            if [[ -z "${FRAG_FILE[$child_key]:-}" ]]; then
                MISSING_PATHS+=("${child_key//|/ }")
            else
                FAILED_PATHS+=("${child_key//|/ }")
            fi
            ;;
        *)
            die "invalid subcommand status for ${child_key//|/ }: $status"
            ;;
    esac
done

for key in "${!FRAG_FILE[@]}"; do
    [[ "$key" == "$root" ]] && continue
    if [[ -z "${DECLARED[$key]:-}" ]]; then
        STALE_PATHS+=("${key//|/ }")
    fi
done

if [[ ${#TODO_PATHS[@]} -gt 0 ]]; then
    log_error "unprocessed subcommands (status=todo):"
    printf '  - %s\n' "${TODO_PATHS[@]}" >&2
    exit 1
fi
if [[ ${#MISSING_PATHS[@]} -gt 0 ]]; then
    log_error "missing fragments for subcommands:"
    printf '  - %s\n' "${MISSING_PATHS[@]}" >&2
    exit 1
fi
if [[ ${#STALE_PATHS[@]} -gt 0 ]]; then
    log_error "fragments are not declared by their parent:"
    printf '  - %s\n' "${STALE_PATHS[@]}" >&2
    exit 1
fi
if [[ ${#FAILED_PATHS[@]} -gt 0 ]]; then
    log_warn "using minimal fragments for failed subcommands:"
    printf '  - %s\n' "${FAILED_PATHS[@]}" >&2
fi

gen_block="$tmp_dir/llm-generate.block"
prompt_content="$tmp_dir/llm-prompt.content"
choice_content="$tmp_dir/choice-fns.content"
pre_content="$tmp_dir/pre.content"
post_content="$tmp_dir/post.content"
: >"$gen_block"
: >"$prompt_content"
: >"$choice_content"
: >"$pre_content"
: >"$post_content"

trim_blank_edges() {
    local file="$1" tmp="$1.trim.$$"
    gawk '
        { lines[NR] = $0 }
        END {
            start = 1
            end = NR
            while (start <= end && lines[start] ~ /^[[:space:]]*$/) start++
            while (end >= start && lines[end] ~ /^[[:space:]]*$/) end--
            for (i = start; i <= end; i++) print lines[i]
        }
    ' "$file" >"$tmp"
    mv "$tmp" "$file"
}

trim_trailing_blank_edges() {
    local file="$1" tmp="$1.trim.$$"
    gawk '
        { lines[NR] = $0 }
        END {
            end = NR
            while (end >= 1 && lines[end] ~ /^[[:space:]]*$/) end--
            for (i = 1; i <= end; i++) print lines[i]
        }
    ' "$file" >"$tmp"
    mv "$tmp" "$file"
}

trim_leading_blank_edges() {
    local file="$1" tmp="$1.trim.$$"
    gawk '
        { lines[NR] = $0 }
        END {
            start = 1
            while (start <= NR && lines[start] ~ /^[[:space:]]*$/) start++
            for (i = start; i <= NR; i++) print lines[i]
        }
    ' "$file" >"$tmp"
    mv "$tmp" "$file"
}

node_depth() {
    local key="$1" depth=1 c
    for ((c = 0; c < ${#key}; c++)); do
        [[ "${key:$c:1}" == "|" ]] && depth=$((depth + 1))
    done
    printf '%s\n' "$depth"
}

node_function_name() {
    local key="$1" fn="" seg i
    local -a segs
    IFS='|' read -r -a segs <<<"$key"
    for ((i = 1; i < ${#segs[@]}; i++)); do
        seg="${segs[$i]}"
        if [[ $i -eq $((${#segs[@]} - 1)) ]]; then
            case "$seg" in
                "case"|"coproc"|"do"|"done"|"elif"|"else"|"esac"|"fi"|"for"|"function"|"if"|"in"|"select"|"then"|"time"|"until"|"while"|"{"|"}"|"!"|"[["|"]]"|"command"|"echo"|"cat"|"tail"|"head"|"eval"|"exec"|"exit"|"return"|"set"|"shift"|"source"|"test")
                    seg="${seg}_"
                    ;;
            esac
        fi
        if [[ -z "$fn" ]]; then
            fn="$seg"
        else
            fn="$fn::$seg"
        fi
    done
    printf '%s\n' "$fn"
}

render_meta() {
    local meta_json="$1" rendered key value
    if ! rendered="$(jq -r '.[] | .key + "\u001f" + (.value // "")' <<<"$meta_json")"; then
        die "failed to render meta"
    fi
    while IFS=$'\x1f' read -r key value; do
        [[ -n "$key" ]] || continue
        if [[ -n "$value" ]]; then
            printf '# @meta %s %s\n' "$key" "$value" >>"$gen_block"
        else
            printf '# @meta %s\n' "$key" >>"$gen_block"
        fi
    done <<<"$rendered"
}

# Emit one flag/option/arg tag line with its description aligned.
emit_item_line() {
    local tag="$1" desc="$2"
    if [[ -z "$desc" ]]; then
        printf '# %s\n' "$tag" >>"$gen_block"
    elif [[ ${#tag} -le $TAG_FIELD_WIDTH ]]; then
        printf '# %-*s  %s\n' "$TAG_FIELD_WIDTH" "$tag" "$desc" >>"$gen_block"
    else
        printf '# %s  %s\n' "$tag" "$desc" >>"$gen_block"
    fi
}

render_items() {
    local items_json="$1" rendered tag desc
    if ! rendered="$(jq -r '
        def choice_expr:
          if (.choice_fn // null) != null then
            (if (.choice_fn | startswith("?")) then "[?`" + (.choice_fn[1:]) + "`]" else "[`" + .choice_fn + "`]" end)
          elif ((.choices // []) | length) > 0 then
            "[" + ((.choices // []) | join("|")) + "]"
          else "" end;
        def names: (.names // []) | join(" ");
        def option_names:
          (.names // []) as $names
          | if (.prefixed // false) then
              (($names[0] // "") + "-")
            else
              ($names | join(" "))
            end;
        def option_modifier:
          if (.repeatable // false) then
            "*" + (.delimiter // "")
          else
            ""
          end;
        def notations: (.notations // []) | join(" ");
        def desc: ((.description // "") | gsub("[\\r\\n\\t]+"; " ") | gsub("^ +| +$"; ""));
        def terminated_marker:
          if (.terminated // false) then "~" else "" end;
        def arg_modifier:
          if (.repeatable // false) then
            (if (.required // false) then "+" else "*" end) + (.delimiter // "")
          else
            (if (.required // false) then "!" else "" end)
          end;
        def tag:
          if .kind == "flag" then
            "@flag " + names + (if (.repeatable // false) then "*" else "" end) + choice_expr
          elif .kind == "option" then
            "@option " + option_names + option_modifier + terminated_marker + choice_expr
            + (if ((.notations // []) | length) > 0 then " " + notations else "" end)
          else
            "@arg " + (.name // "") + arg_modifier + terminated_marker + choice_expr
            + (if ((.notation // "") | length) > 0 then " " + .notation else "" end)
          end;
        .[] | tag + "\u001f" + desc
    ' <<<"$items_json")"; then
        die "failed to render items"
    fi
    while IFS=$'\x1f' read -r tag desc; do
        [[ -n "$tag" ]] || continue
        emit_item_line "$tag" "$desc"
    done <<<"$rendered"
}

render_children() {
    local key="$1" names name child_key
    if ! names="$(jq -r '.[] | .name' <<<"${NODE_SUBS[$key]}")"; then
        die "failed to read subcommands: ${key//|/ }"
    fi
    while IFS= read -r name; do
        [[ -n "$name" ]] || continue
        child_key="$key|$name"
        if [[ -s "$gen_block" ]]; then
            printf '\n' >>"$gen_block"
        fi
        render_child "$child_key"
    done <<<"$names"
}

render_child() {
    local key="$1" depth path marker fn aliases
    depth="$(node_depth "$key")"
    path="${key//|/ }"
    marker="$(printf '%*s' "$depth" '' | tr ' ' '{')"
    printf '# %s %s\n' "$marker" "$path" >>"$gen_block"
    if [[ -n "${NODE_DESC[$key]}" ]]; then
        printf '# @cmd %s\n' "${NODE_DESC[$key]}" >>"$gen_block"
    else
        printf '# @cmd\n' >>"$gen_block"
    fi
    aliases="${DECLARED_ALIASES[$key]:-${NODE_ALIASES[$key]:-}}"
    if [[ -n "$aliases" ]]; then
        printf '# @alias %s\n' "$aliases" >>"$gen_block"
    fi
    render_meta "${NODE_META[$key]}"
    render_items "${NODE_ITEMS[$key]}"
    fn="$(node_function_name "$key")"
    printf '%s() {\n' "$fn" >>"$gen_block"
    printf '    :;\n' >>"$gen_block"
    printf '}\n' >>"$gen_block"
    printf '# %s %s\n' "$(printf '%*s' "$depth" '' | tr ' ' '}')" "$path" >>"$gen_block"
    render_children "$key"
}

if [[ -n "${NODE_DESC[$root]}" ]]; then
    printf '# @describe %s\n' "${NODE_DESC[$root]}" >>"$gen_block"
fi
render_meta "${NODE_META[$root]}"
render_items "${NODE_ITEMS[$root]}"
render_children "$root"

if [[ ${#FAILED_PATHS[@]} -gt 0 ]]; then
    :
fi

if [[ "$dump_mode" -eq 1 ]]; then
    cat "$gen_block"
    # Match the separating newline emitted before the closing block marker.
    if [[ -s "$gen_block" ]]; then
        printf '\n'
    fi
    exit 0
fi

standard_header="$tmp_dir/standard.header"
cat >"$standard_header" <<'HEADER'
#!/usr/bin/env bash
# Generated by argc-completions-generate. Edit only inside the marked blocks.
HEADER

standard_post="$tmp_dir/standard.post"
cat >"$standard_post" <<'POST'
command eval "$(argc --argc-eval "$0" "$@")"
POST

count_marker() {
    local file="$1" direction="$2" name="$3"
    grep -c "^# $direction $name$" "$file" 2>/dev/null || true
}

block_line() {
    local file="$1" direction="$2" name="$3"
    grep -n "^# $direction $name$" "$file" | head -n 1 | cut -d: -f1
}

extract_named_block() {
    local file="$1" name="$2" dest="$3" starts ends start_line end_line
    starts="$(count_marker "$file" '>>>' "$name")"
    ends="$(count_marker "$file" '<<<' "$name")"
    if [[ "$starts" -eq 0 && "$ends" -eq 0 ]]; then
        return 1
    fi
    if [[ "$starts" -ne 1 || "$ends" -ne 1 ]]; then
        die "block '$name' must appear exactly once in $file"
    fi
    start_line="$(block_line "$file" '>>>' "$name")"
    end_line="$(block_line "$file" '<<<' "$name")"
    [[ -n "$start_line" && -n "$end_line" && "$start_line" -lt "$end_line" ]] || die "invalid block '$name' in $file"
    gawk -v start="$start_line" -v end="$end_line" 'NR > start && NR < end { print }' "$file" >"$dest"
    return 0
}

extract_legacy_choice() {
    local file="$1" dest="$2" start_line end_line
    start_line="$(gawk '
        /^# \{+ / { last = NR }
        /^# @(describe|cmd|alias|meta|option|flag|arg|env)( |$)/ { last = NR }
        END { print last + 0 }
    ' "$file")"
    if [[ "$start_line" -eq 0 ]]; then
        if head -n 1 "$file" | grep -q '^#!'; then
            start_line=2
        else
            start_line=1
        fi
    else
        start_line=$((start_line + 1))
    fi
    end_line="$(gawk '
        /^command eval / { if (end == 0) end = NR }
        /^eval "\$\(argc --argc-eval/ { if (end == 0) end = NR }
        END { print end ? end : NR + 1 }
    ' "$file")"
    if [[ "$start_line" -ge "$end_line" ]]; then
        : >"$dest"
        return 0
    fi
    gawk -v start="$start_line" -v end="$end_line" '
        NR >= start && NR < end {
            if ($0 ~ /^# >>> argc-completions-dynamic$/ || $0 ~ /^# <<< argc-completions-dynamic$/) next
            print
        }
    ' "$file" >"$dest"
    trim_blank_edges "$dest"
}

# Determine which source script provides prompt/choice content. An explicit
# --context wins; otherwise the existing output is the source.
source_file=""
if [[ -n "$context_override" ]]; then
    source_file="$context_override"
elif [[ -f "$output_file" ]]; then
    source_file="$output_file"
fi

if [[ -n "$source_file" && -f "$source_file" ]]; then
    if ! extract_named_block "$source_file" 'llm-prompt' "$prompt_content"; then
        : >"$prompt_content"
    fi
    if ! extract_named_block "$source_file" 'choice-fns' "$choice_content"; then
        if ! extract_named_block "$source_file" 'argc-completions-dynamic' "$choice_content"; then
            extract_legacy_choice "$source_file" "$choice_content"
        fi
    fi
    # emit_block adds the separating blank line itself; keep re-assembly idempotent.
    trim_blank_edges "$prompt_content"
    trim_blank_edges "$choice_content"
fi

if [[ -f "$output_file" ]]; then
    if grep -q '^# >>> llm-generate$' "$output_file"; then
        output_gen_starts="$(count_marker "$output_file" '>>>' 'llm-generate')"
        output_gen_ends="$(count_marker "$output_file" '<<<' 'llm-generate')"
        if [[ "$output_gen_starts" -ne 1 || "$output_gen_ends" -ne 1 ]]; then
            die "llm-generate block must appear exactly once in $output_file"
        fi
        first_start="$(gawk '/^# >>> (llm-generate|llm-prompt|choice-fns)$/ { print NR; exit }' "$output_file")"
        last_end="$(gawk '/^# <<< (llm-generate|llm-prompt|choice-fns)$/ { last = NR } END { print last + 0 }' "$output_file")"
        if [[ -z "$first_start" || "$last_end" -eq 0 || "$first_start" -ge "$last_end" ]]; then
            die "invalid block layout: $output_file"
        fi
        head -n $((first_start - 1)) "$output_file" >"$pre_content"
        tail -n +$((last_end + 1)) "$output_file" >"$post_content"
        trim_trailing_blank_edges "$pre_content"
        trim_leading_blank_edges "$post_content"
    else
        cp "$standard_header" "$pre_content"
        cp "$standard_post" "$post_content"
    fi
else
    cp "$standard_header" "$pre_content"
    cp "$standard_post" "$post_content"
fi

if [[ ! -s "$pre_content" ]]; then
    cp "$standard_header" "$pre_content"
fi
if [[ ! -s "$post_content" ]]; then
    cp "$standard_post" "$post_content"
fi

emit_block() {
    local name="$1" content="$2"
    printf '# >>> %s\n' "$name"
    if [[ -s "$content" ]]; then
        cat "$content"
        # argc treats the closing marker as a description continuation when it
        # immediately follows a tag line, so separate non-empty blocks.
        printf '\n'
    fi
    printf '# <<< %s\n' "$name"
}

full_output="$tmp_dir/completion.sh"
{
    cat "$pre_content"
    printf '\n'
    emit_block llm-generate "$gen_block"
    printf '\n'
    emit_block llm-prompt "$prompt_content"
    printf '\n'
    emit_block choice-fns "$choice_content"
    printf '\n'
    cat "$post_content"
} >"$full_output"

# The generated block must not define completion functions.
if grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$gen_block"; then
    die "generated llm-generate block defines a completion function"
fi

# Every choice_fn/meta reference must have a function definition in the output.
refs_file="$tmp_dir/refs.txt"
: >"$refs_file"
for file in "${FRAG_FILE[@]}"; do
    jq -r '.items[]? | .choice_fn // empty' "$file" >>"$refs_file"
    jq -r '.meta[]? | .value // empty' "$file" 2>/dev/null | grep -o '`[^`]*`' | tr -d '`' >>"$refs_file" || true
done
missing_refs=()
while IFS= read -r ref; do
    [[ -n "$ref" ]] || continue
    ref="${ref#\?}"
    if ! grep -Eq "^[[:space:]]*${ref}\(\)[[:space:]]*\{" "$full_output"; then
        missing_refs+=("$ref")
    fi
done < <(LC_ALL=C sort -u "$refs_file")
if [[ ${#missing_refs[@]} -gt 0 ]]; then
    log_error "missing choice function definitions:"
    printf '  - %s\n' "${missing_refs[@]}" >&2
    exit 1
fi

if ! bash -n "$full_output"; then
    die "generated script has a syntax error"
fi

export_err="$tmp_dir/export.err"
if ! argc --argc-export "$full_output" >/dev/null 2>"$export_err"; then
    log_error "argc --argc-export failed for generated script:"
    cat "$export_err" >&2
    exit 1
fi

if [[ -z "$source_file" || ! -f "$source_file" ]]; then
    if grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$full_output"; then
        die "new completion script unexpectedly contains completion functions"
    fi
    if ! argc --argc-export "$full_output" 2>/dev/null | jq -e '[.. | objects | select(has("choice")) | .choice | select(. != null and .type == "Fn")] | length == 0' >/dev/null; then
        die "new completion script unexpectedly contains Fn choices"
    fi
fi

# Validate block counts and order in the final output.
for block_name in llm-generate llm-prompt choice-fns; do
    starts="$(count_marker "$full_output" '>>>' "$block_name")"
    ends="$(count_marker "$full_output" '<<<' "$block_name")"
    if [[ "$starts" -ne 1 || "$ends" -ne 1 ]]; then
        die "final script has an invalid '$block_name' block"
    fi
done
gen_start="$(block_line "$full_output" '>>>' 'llm-generate')"
prompt_start="$(block_line "$full_output" '>>>' 'llm-prompt')"
choice_start="$(block_line "$full_output" '>>>' 'choice-fns')"
if ! [[ "$gen_start" -lt "$prompt_start" && "$prompt_start" -lt "$choice_start" ]]; then
    die "final script block order is invalid"
fi

if [[ "$stdout_mode" -eq 1 ]]; then
    cat "$full_output"
    exit 0
fi

chmod 644 "$full_output"

if [[ "$check_mode" -eq 1 ]]; then
    if diff -u "$output_file" "$full_output"; then
        log_info "unchanged: $output_file"
        exit 0
    else
        exit 1
    fi
fi

mkdir -p "$(dirname "$output_file")"
mv "$full_output" "$output_file"
log_info "wrote $output_file"
