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
#
# The run is a pipeline of stages, one function each (see main):
#   parse_args -> validate_inputs -> init_state -> load_fragments -> validate_tree
#   -> render_blocks -> handle_dump_modes -> resolve_surroundings
#   -> check_static_shadowing -> emit_script -> check_spec_definitions
#   -> check_references -> verify_script -> deliver

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
  -o, --output <file>     Output completion script (default: existing completion,
                          else <REPO_ROOT>/completions/<root>.sh)
      --context <file>    Source completion script (default: output when it exists)
      --check             Compare with the existing output, do not write
      --stdout            Print the complete script to stdout
      --force             Overwrite an existing output file
      --dump-spec         Print only the generated SPEC block
      --dump-static       Print only the generated STATIC block
      --dump-dir <dir>    Write SPEC and STATIC to <dir> in one render
  -v, --verbose
  -h, --help
USAGE
}

# --- state ------------------------------------------------------------------
# parse_args fills the input switches; the stages fill the two groups below.
# Keeping them separate is what lets every stage take explicit arguments.

root=""
fragments_dir=""
output_file=""
context_override=""
check_mode=0
stdout_mode=0
force=0
dump_mode=0
dump_static_mode=0
dump_dir=""

# One entry per fragment, keyed by the fragment location key
# ("<root>|<sub>|..."), each holding the records of validate-fragment.jq
# --arg mode records split per kind. Keeping them here means the renderer never
# re-reads a fragment and never spawns jq per node.
declare -A FRAG_FILE=() # key -> absolute fragment file
declare -A NODE_DESC=() # key -> description
declare -A NODE_ALIASES=()
# Each line is "key<US>value".
declare -A NODE_META=()
# Each line is "tag<US>desc<US>static_fn<US>terminated<US>described<US>body".
declare -A NODE_ITEMS=()
# Each line is "name<US>status<US>aliases-csv<US>description".
declare -A NODE_SUBS=()
# One line per item choice_fn reference.
declare -A NODE_REFS=()
declare -A DECLARED=()         # child key -> 1
declare -A CHILD_STATUS=()     # child key -> status reported by its parent
declare -A DECLARED_ALIASES=() # child key -> aliases reported by its parent
declare -A SIBLING_SEEN=()     # "<key>|<name>" -> 1 (name/alias collision check)
# Generated static-choice functions: name -> "<command path>" (collision check).
declare -A STATIC_FN_SOURCE=()

# Diagnostic lists collected by validate_tree and reported in that order.
TODO_PATHS=()
MISSING_PATHS=()
FAILED_PATHS=()
STALE_PATHS=()

tmp_dir=""
gen_block=""      # generated SPEC body
static_block=""   # generated STATIC body
prompt_content="" # preserved HINTS body
choice_content="" # preserved CHOICES body
pre_content=""    # everything before the first block
post_content=""   # everything after the last block
full_output=""
source_file=""

# Block facts of the script read by read_block_facts (see lib.sh block_facts).
FACTS_FIRST=0
FACTS_LAST=0
declare -A BLOCK_OPENS=() BLOCK_START=() BLOCK_END=() BLOCK_CLOSES=()

# --- inputs -----------------------------------------------------------------

parse_args() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -h | --help)
                usage
                exit 0
                ;;
            -c | --cache-dir | --fragments)
                cli_require_value "$1" "$#"
                fragments_dir="$(absolute_path "$2")"
                shift 2
                ;;
            -o | --output)
                cli_require_value "$1" "$#"
                output_file="$(absolute_path "$2")"
                shift 2
                ;;
            --context)
                cli_require_value "$1" "$#"
                context_override="$(absolute_path "$2")"
                shift 2
                ;;
            --check) check_mode=1; shift ;;
            --stdout) stdout_mode=1; shift ;;
            --force) force=1; shift ;;
            --dump-spec) dump_mode=1; shift ;;
            --dump-static) dump_static_mode=1; shift ;;
            --dump-dir)
                cli_require_value "$1" "$#"
                dump_dir="$(absolute_path "$2")"
                shift 2
                ;;
            -v | --verbose) VERBOSE=1; shift ;;
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
}

validate_inputs() {
    [[ -n "$root" ]] || {
        usage >&2
        exit 2
    }
    root_name_ok "$root" || die "invalid root command name: $root"

    require_pipeline_tools

    if [[ -z "$fragments_dir" ]]; then
        fragments_dir="$(fragment_cache_dir "$root")"
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

    if [[ "$check_mode" -eq 0 && "$stdout_mode" -eq 0 && "$dump_mode" -eq 0 && "$dump_static_mode" -eq 0 && -z "$dump_dir" && -f "$output_file" && "$force" -eq 0 ]]; then
        die "output exists: $output_file (use --force to overwrite)"
    fi
}

init_state() {
    tmp_dir="$(mktemp -d)"
    trap 'rm -rf "$tmp_dir"' EXIT

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
}

# --- fragments --------------------------------------------------------------

# Split one record stream into the per-kind lines the renderers consume.
# Fields may contain US only in the last position, which `read` absorbs, so the
# rejoin below is lossless for every field this script prints.
store_fragment_records() {
    local key="$1" records="$2" kind f1 f2 f3 f4 f5 f6
    local desc="" aliases="" meta="" items="" subs="" refs=""
    while IFS=$'\x1f' read -r kind f1 f2 f3 f4 f5 f6; do
        case "$kind" in
            D) desc="$f1" ;;
            A) aliases="$f1" ;;
            X) ;;
            M) meta+="$f1"$'\x1f'"$f2"$'\n' ;;
            I) items+="$f1"$'\x1f'"$f2"$'\x1f'"$f3"$'\x1f'"$f4"$'\x1f'"$f5"$'\x1f'"$f6"$'\n' ;;
            R) refs+="$f1"$'\n' ;;
            S) subs+="$f1"$'\x1f'"$f2"$'\x1f'"$f3"$'\x1f'"$f4"$'\n' ;;
            '') ;;
            *) die "unexpected fragment record '$kind' in ${FRAG_FILE[$key]}" ;;
        esac
    done <<<"$records"
    NODE_DESC[$key]="$desc"
    NODE_ALIASES[$key]="$aliases"
    NODE_META[$key]="$meta"
    NODE_ITEMS[$key]="$items"
    NODE_SUBS[$key]="$subs"
    NODE_REFS[$key]="$refs"
}

# Assembly rejects the two shapes the walker cannot: an empty segment, and a
# nested _root.json (a root fragment belongs at the top only).
check_fragment_rel() {
    local rel="$1" file="$2" part
    local -a parts
    [[ "$rel" != "_root" ]] || return 0
    IFS='/' read -r -a parts <<<"$rel"
    [[ "${#parts[@]}" -gt 0 ]] || die "invalid fragment path: $file"
    for part in "${parts[@]}"; do
        [[ -n "$part" ]] || die "invalid fragment path: $file"
        [[ "$part" != "_root" ]] || die "nested _root.json is not supported: $file"
    done
}

load_fragments() {
    local key rel file records
    local root_fragment="$fragments_dir/_root.json"
    [[ -f "$root_fragment" ]] || die "root fragment not found: $root_fragment"

    # fragment_walk already decodes the path into a location key, so the loader
    # only checks the two shapes assembly rejects and reads each fragment once.
    while IFS=$'\t' read -r key rel file; do
        check_fragment_rel "$rel" "$file"
        if [[ -n "${FRAG_FILE[$key]:-}" ]]; then
            die "duplicate fragment for path: ${key//|/ }"
        fi
        FRAG_FILE[$key]="$file"
        # One jq invocation per fragment: validation and every derived field.
        # stderr is captured so the diagnostic still follows the file name.
        if ! records="$(read_fragment_records "$key" "$file" 2>"$tmp_dir/records.err")"; then
            log_error "invalid fragment: $file"
            cat "$tmp_dir/records.err" >&2
            exit 1
        fi
        store_fragment_records "$key" "$records"
    done < <(fragment_walk "$fragments_dir" "$root")

    [[ -n "${FRAG_FILE[$root]:-}" ]] || die "root fragment not found: $root_fragment"
}

# --- tree validation --------------------------------------------------------

# Collect the declarations of every parent and reject sibling name/alias
# collisions. NODE_SUBS carries one line per declared subcommand, so neither
# check needs a jq invocation.
collect_declarations() {
    local key child_key child_name status child_aliases _ sibling
    local -a sibling_list
    for key in "${!FRAG_FILE[@]}"; do
        while IFS=$'\x1f' read -r child_name status child_aliases _; do
            [[ -n "$child_name" ]] || continue

            sibling_list=()
            IFS=',' read -r -a sibling_list <<<"$child_name,$child_aliases"
            for sibling in "${sibling_list[@]}"; do
                if [[ -n "${SIBLING_SEEN["$key|$sibling"]:-}" ]]; then
                    die "duplicate subcommand name/alias under ${key//|/ }: $sibling"
                fi
                SIBLING_SEEN["$key|$sibling"]=1
            done

            child_key="$key|$child_name"
            if [[ -n "${DECLARED[$child_key]:-}" ]]; then
                die "subcommand declared more than once: ${child_key//|/ }"
            fi
            DECLARED[$child_key]=1
            CHILD_STATUS[$child_key]="$status"
            DECLARED_ALIASES[$child_key]="$child_aliases"
        done <<<"${NODE_SUBS[$key]}"
    done
}

# Compare every declaration with the fragments on disk.
check_declared_status() {
    local child_key status
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
}

check_stale_fragments() {
    local key
    for key in "${!FRAG_FILE[@]}"; do
        [[ "$key" == "$root" ]] && continue
        if [[ -z "${DECLARED[$key]:-}" ]]; then
            STALE_PATHS+=("${key//|/ }")
        fi
    done
}

# The lists are filled from associative arrays, whose iteration order is
# unspecified; sorting keeps a multi-path diagnostic deterministic.
sort_diagnostics() {
    local -a list
    local i
    for i in 1 2 3; do
        case "$i" in
            1) list=("${TODO_PATHS[@]}") ;;
            2) list=("${MISSING_PATHS[@]}") ;;
            3) list=("${STALE_PATHS[@]}") ;;
        esac
        [[ ${#list[@]} -gt 1 ]] || continue
        mapfile -t list < <(printf '%s\n' "${list[@]}" | LC_ALL=C sort)
        case "$i" in
            1) TODO_PATHS=("${list[@]}") ;;
            2) MISSING_PATHS=("${list[@]}") ;;
            3) STALE_PATHS=("${list[@]}") ;;
        esac
    done
}

report_validation() {
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
}

validate_tree() {
    collect_declarations
    check_declared_status
    check_stale_fragments
    sort_diagnostics
    report_validation
}

# --- SPEC rendering ---------------------------------------------------------

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
                "case" | "coproc" | "do" | "done" | "elif" | "else" | "esac" | "fi" | "for" | "function" | "if" | "in" | "select" | "then" | "time" | "until" | "while" | "{" | "}" | "!" | "[[" | "]]" | "command" | "echo" | "cat" | "tail" | "head" | "eval" | "exec" | "exit" | "return" | "set" | "shift" | "source" | "test")
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

# Build "<char repeated depth times>" without forking printf|tr once per node.
nest_marker() {
    local depth="$1" char="$2" pad
    printf -v pad '%*s' "$depth" ''
    printf '%s\n' "${pad// /$char}"
}

render_meta() {
    local meta="$1" key value
    while IFS=$'\x1f' read -r key value; do
        [[ -n "$key" ]] || continue
        if [[ -n "$value" ]]; then
            printf '# @meta %s %s\n' "$key" "$value" >>"$gen_block"
        else
            printf '# @meta %s\n' "$key" >>"$gen_block"
        fi
    done <<<"$meta"
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

# Items arrive pre-rendered by validate-fragment.jq in records mode (tag,
# description, static function name, terminated/described flags, static body),
# so assembly only aligns the tag column and routes the static body to STATIC.
render_items() {
    local key="$1" items="$2" tag desc static_fn _terminated _described body
    while IFS=$'\x1f' read -r tag desc static_fn _terminated _described body; do
        [[ -n "$tag" ]] || continue
        emit_item_line "$tag" "$desc"
        [[ -n "$static_fn" ]] || continue
        register_static_fn "$key" "$static_fn"
        emit_static_fn "$static_fn" "$body"
    done <<<"$items"
}

render_children() {
    local key="$1" name child_key
    while IFS=$'\x1f' read -r name _ _ _; do
        [[ -n "$name" ]] || continue
        child_key="$key|$name"
        if [[ -s "$gen_block" ]]; then
            printf '\n' >>"$gen_block"
        fi
        render_child "$child_key"
    done <<<"${NODE_SUBS[$key]}"
}

render_child() {
    local key="$1" depth path marker fn aliases
    depth="$(node_depth "$key")"
    path="${key//|/ }"
    marker="$(nest_marker "$depth" '{')"
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
    printf '# %s %s\n' "$(nest_marker "$depth" '}')" "$path" >>"$gen_block"
    render_children "$key"
}

render_blocks() {
    if [[ -n "${NODE_DESC[$root]}" ]]; then
        printf '# @describe %s\n' "${NODE_DESC[$root]}" >>"$gen_block"
    fi
    render_meta "${NODE_META[$root]}"
    render_items "$root" "${NODE_ITEMS[$root]}"
    render_children "$root"
}

# One render can emit both compared blocks, so a caller that needs SPEC and
# STATIC (verify-completion.sh) loads and validates every fragment only once.
handle_dump_modes() {
    if [[ -n "$dump_dir" ]]; then
        mkdir -p "$dump_dir"
        cat "$gen_block" >"$dump_dir/SPEC"
        # Match the separating newline emitted before the closing block marker.
        if [[ -s "$gen_block" ]]; then
            printf '\n' >>"$dump_dir/SPEC"
        fi
        if [[ -s "$static_block" ]]; then
            cat "$static_block" >"$dump_dir/STATIC"
        else
            : >"$dump_dir/STATIC"
        fi
        exit 0
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
}

# --- preserved surroundings -------------------------------------------------

standard_header() {
    cat <<'HEADER'
#!/usr/bin/env bash
# Generated by argc-completions-generate. Edit only inside the marked blocks.
HEADER
}

standard_post() {
    cat <<'POST'
command eval "$(argc --argc-eval "$0" "$@")"
POST
}

extract_named_block() {
    local file="$1" name="$2" dest="$3" rc=0
    extract_block "$file" "$name" "$dest" || rc=$?
    case "$rc" in
        0) return 0 ;;
        1) return 1 ;;
        *) die "block '$name' must appear exactly once and in order in $file" ;;
    esac
}

# Determine which source script provides prompt/choice content. An explicit
# --context wins; otherwise the existing output is the source.
resolve_source_file() {
    source_file=""
    if [[ -n "$context_override" ]]; then
        source_file="$context_override"
    elif [[ -f "$output_file" ]]; then
        source_file="$output_file"
    fi
}

# HINTS and CHOICES are preserved verbatim from their blocks; an absent block
# means that section is empty.
load_preserved_blocks() {
    if ! extract_named_block "$source_file" 'HINTS' "$prompt_content"; then
        : >"$prompt_content"
    fi
    if ! extract_named_block "$source_file" 'CHOICES' "$choice_content"; then
        : >"$choice_content"
    fi
    # emit_block adds the separating blank line itself; keep re-assembly idempotent.
    trim_blank_edges_inplace "$prompt_content"
    trim_blank_edges_inplace "$choice_content"
}

# Parse block_facts once for one script into the FACTS_*/BLOCK_* globals.
# Every block count and boundary this script needs comes from that single pass.
read_block_facts() {
    local file="$1" name f2 f3 f4 f5
    FACTS_FIRST=0
    FACTS_LAST=0
    BLOCK_OPENS=()
    BLOCK_START=()
    BLOCK_END=()
    BLOCK_CLOSES=()
    while read -r name f2 f3 f4 f5; do
        case "$name" in
            first=*) FACTS_FIRST="${name#first=}" ;;
            last=*) FACTS_LAST="${name#last=}" ;;
            SPEC | HINTS | STATIC | CHOICES)
                BLOCK_OPENS[$name]="$f2"
                BLOCK_START[$name]="$f3"
                BLOCK_END[$name]="$f4"
                BLOCK_CLOSES[$name]="$f5"
                ;;
        esac
    done < <(block_facts "$file")
}

# Everything outside the blocks is preserved; only the block layout is
# supported, because assembly preserves nothing else.
load_surrounding_content() {
    read_block_facts "$output_file"
    if [[ "${BLOCK_OPENS[SPEC]:-0}" -eq 0 ]]; then
        die "no block markers in $output_file: add '# >>> SPEC'/'# <<< SPEC' and '# >>> HINTS'/'# <<< HINTS' before rebuilding; assembly preserves nothing outside those blocks"
    fi
    if [[ "${BLOCK_OPENS[SPEC]}" -ne 1 || "${BLOCK_CLOSES[SPEC]}" -ne 1 ]]; then
        die "SPEC block must appear exactly once in $output_file"
    fi
    if [[ "$FACTS_FIRST" -ge "$FACTS_LAST" ]]; then
        die "invalid block layout: $output_file"
    fi
    head -n $((FACTS_FIRST - 1)) "$output_file" >"$pre_content"
    tail -n +$((FACTS_LAST + 1)) "$output_file" >"$post_content"
    trim_trailing_blank_edges "$pre_content" "$pre_content.trim"
    mv "$pre_content.trim" "$pre_content"
    trim_leading_blank_edges "$post_content" "$post_content.trim"
    mv "$post_content.trim" "$post_content"
}

resolve_surroundings() {
    resolve_source_file
    if [[ -n "$source_file" && -f "$source_file" ]]; then
        read_block_facts "$source_file"
        if [[ "${BLOCK_OPENS[SPEC]:-0}" -eq 0 ]]; then
            die "no block markers in $source_file: add '# >>> SPEC'/'# <<< SPEC', '# >>> HINTS'/'# <<< HINTS', and '# >>> CHOICES'/'# <<< CHOICES' before rebuilding"
        fi
        load_preserved_blocks
    fi

    if [[ -f "$output_file" ]]; then
        load_surrounding_content
    else
        standard_header >"$pre_content"
        standard_post >"$post_content"
    fi

    if [[ ! -s "$pre_content" ]]; then
        standard_header >"$pre_content"
    fi
    if [[ ! -s "$post_content" ]]; then
        standard_post >"$post_content"
    fi
}

# A generated static-choice function must not shadow a preserved definition.
# One grep over all preserved text instead of one grep per generated function.
check_static_shadowing() {
    local shadow_pattern="" static_fn shadow_line shadow_fn
    [[ ${#STATIC_FN_SOURCE[@]} -gt 0 ]] || return 0
    for static_fn in "${!STATIC_FN_SOURCE[@]}"; do
        shadow_pattern+="${shadow_pattern:+|}^[[:space:]]*(function[[:space:]]+)?${static_fn}(\(\))?[[:space:]]*\\{"
    done
    shadow_line="$(grep -Eh -m 1 "$shadow_pattern" \
        "$prompt_content" "$choice_content" "$pre_content" "$post_content" || true)"
    if [[ -n "$shadow_line" ]]; then
        shadow_fn="$(printf '%s\n' "$shadow_line" | gawk '
            { sub(/^[[:space:]]*/, ""); sub(/^function[[:space:]]+/, ""); sub(/\(\).*/, ""); sub(/[[:space:]{].*/, ""); print; exit }
        ')"
        die "static choice function name collision: $shadow_fn (${STATIC_FN_SOURCE[$shadow_fn]:-unknown}) is already defined outside STATIC; bind choice_fn instead"
    fi
}

# --- output -----------------------------------------------------------------

has_content() {
    local file="$1"
    [[ -f "$file" ]] && grep -q '[^[:space:]]' "$file"
}

emit_block() {
    local name="$1" content="$2"
    printf '# >>> %s\n' "$name"
    cat "$content"
    # argc reads the closing marker as a description continuation when it
    # immediately follows a tag line, so only the tag-terminated SPEC block
    # keeps a separating blank line.
    if [[ "$name" == SPEC ]]; then
        printf '\n'
    fi
    printf '# <<< %s\n' "$name"
}

# SPEC and HINTS always appear (HINTS may be empty); STATIC and CHOICES exist
# only while they have content.
emit_script() {
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
}

# --- generated-reference checks ---------------------------------------------

# The generated SPEC block must never carry a completion function.
check_spec_definitions() {
    if grep -Eq '^[[:space:]]*_choice_[A-Za-z0-9_]*\(\)[[:space:]]*\{' "$gen_block"; then
        die "generated SPEC block defines a completion function"
    fi
}

# Every choice_fn/meta reference must have a function definition in the output.
# References come from the records already in memory, and the definitions are
# collected with one pass over the output: no jq or grep per fragment/ref.
check_references() {
    local key ref missing_refs=()
    local -A DEFINED_FN=()
    local refs_file="$tmp_dir/refs.txt"
    : >"$refs_file"
    for key in "${!FRAG_FILE[@]}"; do
        printf '%s' "${NODE_REFS[$key]}" >>"$refs_file"
        while IFS=$'\x1f' read -r _meta_key _meta_value; do
            [[ -n "$_meta_value" ]] || continue
            while [[ "$_meta_value" == *\`*\`* ]]; do
                _meta_value="${_meta_value#*\`}"
                printf '%s\n' "${_meta_value%%\`*}" >>"$refs_file"
                _meta_value="${_meta_value#*\`}"
            done
        done <<<"${NODE_META[$key]}"
    done

    while IFS= read -r defined; do
        [[ -n "$defined" ]] || continue
        DEFINED_FN["$defined"]=1
    done < <(grep -Eo '^[[:space:]]*[A-Za-z_][A-Za-z0-9_]*\(\)[[:space:]]*\{' "$full_output" |
        gawk '{ sub(/^[[:space:]]*/, ""); sub(/\(.*/, ""); print }')

    while IFS= read -r ref; do
        [[ -n "$ref" ]] || continue
        [[ -n "${DEFINED_FN[$ref]:-}" ]] || missing_refs+=("$ref")
    done < <(LC_ALL=C sort -u "$refs_file")

    if [[ ${#missing_refs[@]} -gt 0 ]]; then
        log_error "missing choice function definitions:"
        printf '  - %s\n' "${missing_refs[@]}" >&2
        exit 1
    fi
}

check_generated_script_exports() {
    local export_err="$tmp_dir/export.err"
    local export_json="$tmp_dir/export.json"
    if ! argc --argc-export "$(native_path "$full_output")" >"$export_json" 2>"$export_err"; then
        log_error "argc --argc-export failed for generated script:"
        cat "$export_err" >&2
        exit 1
    fi

    # A first generation must not invent completion functions.
    if [[ -z "$source_file" || ! -f "$source_file" ]]; then
        local header_line header_fn undeclared_fn=""
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

        local -a static_names=()
        if [[ ${#STATIC_FN_SOURCE[@]} -gt 0 ]]; then
            static_names=("${!STATIC_FN_SOURCE[@]}")
        fi
        if ! export_has_foreign_fn_choice "$export_json" "${static_names[@]}"; then
            die "new completion script unexpectedly contains Fn choices"
        fi
    fi
}

verify_script() {
    if ! bash -n "$full_output"; then
        die "generated script has a syntax error"
    fi
    check_generated_script_exports
    if ! block_layout_ok "$full_output"; then
        case "$BLOCK_LAYOUT_REASON" in
            duplicate:*)
                die "final script has an invalid '${BLOCK_LAYOUT_REASON#duplicate:}' block"
                ;;
            *)
                die "final script block order is invalid"
                ;;
        esac
    fi
}

# --- delivery ---------------------------------------------------------------

deliver() {
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
}

main() {
    parse_args "$@"
    validate_inputs
    init_state
    load_fragments
    validate_tree
    render_blocks
    handle_dump_modes
    resolve_surroundings
    check_static_shadowing
    emit_script
    check_spec_definitions
    check_references
    verify_script
    deliver
}

main "$@"
