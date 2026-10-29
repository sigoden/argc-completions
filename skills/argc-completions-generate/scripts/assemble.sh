#!/usr/bin/env bash
# Assemble a structural argc completion script from JSON fragments.
#
# The generated file is organized into these blocks:
#   SPEC     - command definitions generated from fragments (replaced on every run)
#   HINTS    - prompt text used as context by parser subagents (preserved)
#   STATIC   - generated static-choice functions (replaced on every run)
#   CHOICES  - dynamic completion functions (preserved)
# SPEC and HINTS always appear; STATIC and CHOICES are omitted entirely when
# they have no content, so the output never carries an empty marker pair.

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
      --dump-spec         Print only the generated SPEC block
      --dump-static       Print only the generated STATIC block
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
dump_static_mode=0

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
        --dump-spec) dump_mode=1; shift ;;
        --dump-static) dump_static_mode=1; shift ;;
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

if [[ "$check_mode" -eq 0 && "$stdout_mode" -eq 0 && "$dump_mode" -eq 0 && "$dump_static_mode" -eq 0 && -f "$output_file" && "$force" -eq 0 ]]; then
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
# Generated static-choice functions: name -> "<command path>" (collision check).
declare -A STATIC_FN_SOURCE=()

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

gen_block="$tmp_dir/SPEC.block"
static_block="$tmp_dir/STATIC.block"
prompt_content="$tmp_dir/HINTS.content"
choice_content="$tmp_dir/CHOICES.content"
pre_content="$tmp_dir/pre.content"
post_content="$tmp_dir/post.content"
: >"$gen_block"
: >"$static_block"
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
    local key="$1" items_json="$2" rendered tag desc static_fn body
    if ! rendered="$(jq -r --arg key "$key" '
        def sanitize: gsub("[^A-Za-z0-9_]"; "_");
        def param_label:
          if .kind == "arg" then (.name // "item")
          else ((.names // []) | .[-1] // "item") | sub("^[-]+"; "") | sub("^\\++"; "")
            | if length == 0 then "item" else . end
          end;
        def described:
          ((.choice_fn // null) == null)
          and any((.choices // [])[]?; (.description // "") != "");
        def static_path: ($key | split("|") | .[1:] | join("_")) | sanitize;
        def static_fn:
          (static_path) as $p
          | "_static_" + (if $p == "" then "" else $p + "_" end) + (param_label | sanitize);
        def body:
          ((.choices // []) | map(.value + "\t" + (.description // "")) | join("\u001e"));
        def choice_expr($fn):
          if (.choice_fn // null) != null then
            "[?`" + .choice_fn + "`]"
          elif described then
            "[?`" + $fn + "`]"
          elif ((.choices // []) | length) > 0 then
            "[" + ((.choices // []) | map(.value) | join("|")) + "]"
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
        def tag($fn):
          if .kind == "flag" then
            "@flag " + names + (if (.repeatable // false) then "*" else "" end) + choice_expr($fn)
          elif .kind == "option" then
            "@option " + option_names + option_modifier + terminated_marker + choice_expr($fn)
            + (if ((.notations // []) | length) > 0 then " " + notations else "" end)
          else
            "@arg " + (.name // "") + arg_modifier + terminated_marker + choice_expr($fn)
            + (if ((.notation // "") | length) > 0 then " " + .notation else "" end)
          end;
        .[] as $item
        | ($item | static_fn) as $fn
        | ($item | if described then $fn else "" end) as $static_fn
        | (($item | tag($static_fn)) + "\u001f" + ($item | desc) + "\u001f"
           + $static_fn + "\u001f"
           + ($item | if described then body else "" end))
    ' <<<"$items_json")"; then
        die "failed to render items"
    fi
    while IFS=$'\x1f' read -r tag desc static_fn body; do
        [[ -n "$tag" ]] || continue
        emit_item_line "$tag" "$desc"
        [[ -n "$static_fn" ]] || continue
        register_static_fn "$key" "$static_fn"
        emit_static_fn "$static_fn" "$body"
    done <<<"$rendered"
}

register_static_fn() {
    local key="$1" fn="$2"
    if [[ -n "${STATIC_FN_SOURCE[$fn]:-}" ]]; then
        die "static choice function name collision: $fn (${STATIC_FN_SOURCE[$fn]} and ${key//|/ }); bind choice_fn instead"
    fi
    STATIC_FN_SOURCE[$fn]="${key//|/ }"
}

# Every line keeps a TAB between value and description, so a body line can
# never equal the heredoc delimiter (also keeps empty descriptions explicit).
emit_static_fn() {
    local fn="$1" body="$2"
    if [[ -s "$static_block" ]]; then
        printf '\n' >>"$static_block"
    fi
    printf '%s() {\n' "$fn" >>"$static_block"
    # The tab-indented heredoc keeps every body line off column 0, so a value
    # like "#" plus an "@..." description can never read as an argc tag.
    printf "    cat <<-'ARGCEOF'\n" >>"$static_block"
    body=$'\t'"${body//$'\x1e'/$'\n\t'}"
    printf '%s\n' "$body" >>"$static_block"
    printf 'ARGCEOF\n}\n' >>"$static_block"
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
    render_items "$key" "${NODE_ITEMS[$key]}"
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
render_items "$root" "${NODE_ITEMS[$root]}"
render_children "$root"

if [[ ${#FAILED_PATHS[@]} -gt 0 ]]; then
    :
fi

if [[ "$dump_static_mode" -eq 1 ]]; then
    if [[ -s "$static_block" ]]; then
        cat "$static_block"
    fi
    exit 0
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
    if ! extract_named_block "$source_file" 'HINTS' "$prompt_content"; then
        : >"$prompt_content"
    fi
    if ! extract_named_block "$source_file" 'CHOICES' "$choice_content"; then
        if ! extract_named_block "$source_file" 'argc-completions-dynamic' "$choice_content"; then
            if grep -q '^# >>> SPEC$' "$source_file"; then
                # New layout without a CHOICES block: no dynamic functions.
                # Scanning the tail would capture content that is not a block.
                : >"$choice_content"
            else
                extract_legacy_choice "$source_file" "$choice_content"
            fi
        fi
    fi
    # emit_block adds the separating blank line itself; keep re-assembly idempotent.
    trim_blank_edges "$prompt_content"
    trim_blank_edges "$choice_content"
fi

if [[ -f "$output_file" ]]; then
    if grep -q '^# >>> SPEC$' "$output_file"; then
        output_gen_starts="$(count_marker "$output_file" '>>>' 'SPEC')"
        output_gen_ends="$(count_marker "$output_file" '<<<' 'SPEC')"
        if [[ "$output_gen_starts" -ne 1 || "$output_gen_ends" -ne 1 ]]; then
            die "SPEC block must appear exactly once in $output_file"
        fi
        first_start="$(gawk '/^# >>> (SPEC|STATIC|HINTS|CHOICES)$/ { print NR; exit }' "$output_file")"
        last_end="$(gawk '/^# <<< (SPEC|STATIC|HINTS|CHOICES)$/ { last = NR } END { print last + 0 }' "$output_file")"
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

# A generated static-choice function must not shadow a preserved definition.
for static_fn in "${!STATIC_FN_SOURCE[@]}"; do
    if grep -Eq "^[[:space:]]*(function[[:space:]]+)?${static_fn}(\(\))?[[:space:]]*\{" \
        "$prompt_content" "$choice_content" "$pre_content" "$post_content"; then
        die "static choice function name collision: $static_fn (${STATIC_FN_SOURCE[$static_fn]}) is already defined outside STATIC; bind choice_fn instead"
    fi
done

has_content() {
    local file="$1"
    [[ -f "$file" ]] && grep -q '[^[:space:]]' "$file"
}

emit_block() {
    local name="$1" content="$2"
    printf '# >>> %s\n' "$name"
    cat "$content"
    # argc reads the closing marker as a description continuation when it
    # immediately follows a tag line, so only the tag-terminated
    # SPEC block keeps a separating blank line.
    if [[ "$name" == SPEC ]]; then
        printf '\n'
    fi
    printf '# <<< %s\n' "$name"
}

# SPEC and HINTS always appear (HINTS may be empty); STATIC and CHOICES exist
# only while they have content.
full_output="$tmp_dir/completion.sh"
{
    cat "$pre_content"
    printf '\n'
    emit_block SPEC "$gen_block"
    printf '\n'
    emit_block HINTS "$prompt_content"
    if has_content "$static_block"; then
        printf '\n'
        emit_block STATIC "$static_block"
    fi
    if has_content "$choice_content"; then
        printf '\n'
        emit_block CHOICES "$choice_content"
    fi
    printf '\n'
    cat "$post_content"
} >"$full_output"

# The generated block must not define completion functions.
if grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$gen_block"; then
    die "generated SPEC block defines a completion function"
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
if ! argc --argc-export "$full_output" >"$tmp_dir/export.json" 2>"$export_err"; then
    log_error "argc --argc-export failed for generated script:"
    cat "$export_err" >&2
    exit 1
fi

if [[ -z "$source_file" || ! -f "$source_file" ]]; then
    undeclared_fn=""
    while IFS= read -r header_line; do
        header_fn="${header_line%%(*}"
        header_fn="${header_fn#"${header_fn%%[![:space:]]*}"}"
        if [[ -z "${STATIC_FN_SOURCE[$header_fn]:-}" ]]; then
            undeclared_fn="$header_fn"
            break
        fi
    done < <(grep -E '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$full_output" || true)
    if [[ -n "$undeclared_fn" ]]; then
        die "new completion script unexpectedly contains completion function: $undeclared_fn"
    fi
    static_names_json="[]"
    if [[ ${#STATIC_FN_SOURCE[@]} -gt 0 ]]; then
        static_names_json="$(printf '%s\n' "${!STATIC_FN_SOURCE[@]}" | jq -R . | jq -s .)"
    fi
    if ! jq -e --argjson names "$static_names_json" '
        [.. | objects | select(has("choice")) | .choice
         | select(. != null and .type == "Fn") | .data[0]
         | select((($names // []) | index(.)) == null)] | length == 0
    ' "$tmp_dir/export.json" >/dev/null; then
        die "new completion script unexpectedly contains Fn choices"
    fi
fi

# Validate block counts and order in the final output. SPEC and HINTS are
# mandatory; STATIC and CHOICES may be absent but must then be absent as a pair.
for block_name in SPEC HINTS; do
    starts="$(count_marker "$full_output" '>>>' "$block_name")"
    ends="$(count_marker "$full_output" '<<<' "$block_name")"
    if [[ "$starts" -ne 1 || "$ends" -ne 1 ]]; then
        die "final script has an invalid '$block_name' block"
    fi
done
for block_name in STATIC CHOICES; do
    starts="$(count_marker "$full_output" '>>>' "$block_name")"
    ends="$(count_marker "$full_output" '<<<' "$block_name")"
    if [[ "$starts" -ne "$ends" || "$starts" -gt 1 ]]; then
        die "final script has an invalid '$block_name' block"
    fi
done
gen_start="$(block_line "$full_output" '>>>' 'SPEC')"
prompt_start="$(block_line "$full_output" '>>>' 'HINTS')"
static_start=""
choice_start=""
if [[ "$(count_marker "$full_output" '>>>' 'STATIC')" -eq 1 ]]; then
    static_start="$(block_line "$full_output" '>>>' 'STATIC')"
fi
if [[ "$(count_marker "$full_output" '>>>' 'CHOICES')" -eq 1 ]]; then
    choice_start="$(block_line "$full_output" '>>>' 'CHOICES')"
fi
if ! [[ "$gen_start" -lt "$prompt_start" ]]; then
    die "final script block order is invalid"
fi
if [[ -n "$static_start" ]] && ! [[ "$prompt_start" -lt "$static_start" ]]; then
    die "final script block order is invalid"
fi
if [[ -n "$choice_start" ]]; then
    last_start="$prompt_start"
    [[ -z "$static_start" ]] || last_start="$static_start"
    if ! [[ "$last_start" -lt "$choice_start" ]]; then
        die "final script block order is invalid"
    fi
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
