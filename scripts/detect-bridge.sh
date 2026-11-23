#!/usr/bin/env bash
# Detect which completion bridge (bridges/<name>.sh) a command supports,
# and whether that bridge's dynamic completion can complete argument values.
#
# Algorithm:
#   1. Resolve <command> with `command -v` and `realpath`.
#   2. Classify it with `file(1)`:
#        - Node.js/JavaScript script        -> javascript
#        - Python script (or python shebang) -> python
#        - ELF/Mach-O/PE executable         -> `strings` signature probe:
#            ^rustc? version   -> rust
#            ^\.go\.buildinfo  -> go
#   3. Probe the bridges for the detected language(s) with
#        argc --argc-compgen generic bridges/<name>.sh <command> <args...>
#      A probe passes only when every non-empty output line matches
#      ^-\S+.* and at least one such line exists.
#   4. For a passing bridge, find the command's GitHub repository with
#      `gh search repos` and look for the framework's custom value-completion
#      calls with `gh search code`:
#        clap:        ArgValueCompleter, ValueCompleter
#        cobra:       RegisterFlagCompletionFunc, ValidArgsFunction
#        urfave:      ShellComplete
#        click:       shell_complete
#        argcomplete: completer=, .completer
#        yargs:       .completion(
#      File/directory hints (MarkFlagFilename, ValueHint, Path/File) do not
#      count as custom value completion.
#
# Bridge order: clap cobra urfave click argcomplete yargs
# Language map: rust=clap go=cobra,urfave python=click,argcomplete
#               javascript=yargs
#
# Examples:
#   scripts/detect-bridge.sh rclone
#   scripts/detect-bridge.sh --repo cli/cli gh
#   scripts/detect-bridge.sh --all -v kubectl get -
#
# Env: ARGC_BIN, GH_BIN, DETECT_BRIDGE_GH_TIMEOUT
#
# The probe word defaults to "-" when [args...] is omitted; pass
# "kubectl get -" to probe in a subcommand context. Probing executes
# <command> with stdin closed, stderr discarded, and a timeout.
#
# GitHub lookups need an authenticated `gh`; every run queries GitHub
# directly (no cache). GitHub code search is limited to 10 requests/minute.
#
# Output: one line "bridge<TAB>state" per passing bridge, where state is
# dynamic, static, or unknown. With no bridge the single token "unknown" is
# printed. Exit status: 0 bridge found, 1 no bridge or invalid arguments,
# 2 environment error.

set -euo pipefail

# @describe Detect the completion bridge a command supports
# @flag -a --all              Probe every bridge, not only the detected language's
# @flag -v --verbose          Print detection evidence and GitHub lookups to stderr
# @option -t --timeout <s>    Per-probe timeout for argc compgen (default: 5)
# @flag --no-dynamic          Skip GitHub checks; report dynamic state as unknown
# @option --repo <OWNER/REPO> Use this repository instead of `gh search repos`
# @arg cmd!                   Command to detect
# @arg args~                  Probe args (default: -)

ROOT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
BRIDGE_ORDER=(clap cobra urfave click argcomplete yargs)
DEFAULT_TIMEOUT=5
DEFAULT_GH_TIMEOUT=30

# Repository resolution is deliberately conservative: a wrong repository would
# produce a confident but wrong dynamic state, so uncertain cases stay unknown.
REPO_MIN_STARS=1000
REPO_MAX_AGE_DAYS=365
REPO_MAX_AGE_SECONDS=$((REPO_MAX_AGE_DAYS * 86400))
REPO_DOMINANCE=10

all_mode=0
verbose=0
no_dynamic=0
repo_override=""
probe_timeout="$DEFAULT_TIMEOUT"
probe_args=()
CANDIDATES=()
CMD_NAME=""
cmd=""

gh_bin="${GH_BIN:-gh}"
gh_timeout="${DETECT_BRIDGE_GH_TIMEOUT:-$DEFAULT_GH_TIMEOUT}"
[[ "$gh_timeout" =~ ^[1-9][0-9]*$ ]] || gh_timeout="$DEFAULT_GH_TIMEOUT"

argc_bin=""
timeout_bin=""
GH_PATH=""

verbose_log() {
    if ((verbose)); then
        printf 'detect-bridge: %s\n' "$*" >&2
    fi
}

die() {
    printf 'detect-bridge: %s\n' "$*" >&2
    exit 2
}

warned=0
warn_once() {
    if ((!warned)); then
        printf 'detect-bridge: warning: %s\n' "$*" >&2
        warned=1
    fi
}

normalize_repo() {
    local repo="$1"
    repo="${repo#https://github.com/}"
    repo="${repo#http://github.com/}"
    repo="${repo%/}"
    repo="${repo%.git}"
    [[ "$repo" =~ ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$ ]] || return 1
    printf '%s\n' "$repo"
}

resolve_bin() {
    local bin="$1"
    if [[ "$bin" == */* ]]; then
        if [[ -x "$bin" ]]; then
            printf '%s\n' "$bin"
        fi
    else
        command -v -- "$bin" 2>/dev/null || true
    fi
    return 0
}

# ---------------------------------------------------------------------------
# 1. Language detection
# ---------------------------------------------------------------------------

DETECTED_LANGS=()
LANG_EVIDENCE=()
FILE_DESC=""

add_lang() {
    local lang="$1" evidence="$2" i
    for i in "${!DETECTED_LANGS[@]}"; do
        [[ "${DETECTED_LANGS[i]}" == "$lang" ]] && return 0
    done
    DETECTED_LANGS+=("$lang")
    LANG_EVIDENCE+=("$evidence")
}

has_lang() {
    local lang="$1" i
    for i in "${!DETECTED_LANGS[@]}"; do
        [[ "${DETECTED_LANGS[i]}" == "$lang" ]] && return 0
    done
    return 1
}

detect_language() {
    local path="$1" desc="" shebang="" line sigs=""

    if command -v file >/dev/null 2>&1; then
        desc="$(LC_ALL=C file -b "$path" 2>/dev/null || true)"
    fi
    FILE_DESC="$desc"

    if [[ "$desc" == *ELF* || "$desc" == *Mach-O* || "$desc" == *PE32* ]]; then
        if command -v strings >/dev/null 2>&1; then
            sigs="$(strings -a "$path" 2>/dev/null |
                grep -m2 -E '^(rustc? version|\.go\.buildinfo)' || true)"
            while IFS= read -r line; do
                case "$line" in
                "rust version"* | "rustc version"*) add_lang rust "signature: $line" ;;
                ".go.buildinfo") add_lang go "signature: $line" ;;
                esac
            done <<<"$sigs"
        else
            verbose_log "strings not found; binary language unknown"
        fi
        return 0
    fi

    case "$desc" in
    *Node.js* | *JavaScript*)
        add_lang javascript "file: $desc"
        return 0
        ;;
    *Python*)
        add_lang python "file: $desc"
        return 0
        ;;
    esac

    { IFS= read -r shebang <"$path"; } 2>/dev/null || true
    case "$shebang" in
    '#!'*python*) add_lang python "shebang: $shebang" ;;
    '#!'*node* | '#!'*deno* | '#!'*bun* | '#!'*tsx*)
        add_lang javascript "shebang: $shebang"
        ;;
    esac
    return 0
}

# ---------------------------------------------------------------------------
# 2. Bridge candidates and argc compgen probe
# ---------------------------------------------------------------------------

add_candidate() {
    local bridge="$1" i
    for i in "${!CANDIDATES[@]}"; do
        [[ "${CANDIDATES[i]}" == "$bridge" ]] && return 0
    done
    CANDIDATES+=("$bridge")
}

build_candidates() {
    local lang
    CANDIDATES=()
    if ((all_mode)); then
        CANDIDATES=("${BRIDGE_ORDER[@]}")
        return 0
    fi
    for lang in rust go python javascript; do
        has_lang "$lang" || continue
        case "$lang" in
        rust) add_candidate clap ;;
        go)
            add_candidate cobra
            add_candidate urfave
            ;;
        python)
            add_candidate click
            add_candidate argcomplete
            ;;
        javascript) add_candidate yargs ;;
        esac
    done
    return 0
}

PROBE_STATE=""
FLAG_LINES=0

probe_bridge() {
    local bridge="$1"
    local bridge_path="$ROOT_DIR/bridges/$bridge.sh"
    local out="" rc=0 line=""
    local -a cmdline=("$argc_bin" --argc-compgen generic "$bridge_path" "$cmd" "${probe_args[@]}")

    PROBE_STATE=""
    FLAG_LINES=0
    [[ -f "$bridge_path" ]] || die "bridge not found: $bridge_path"

    if [[ -n "$timeout_bin" ]]; then
        if out="$(ARGC_COMPLETIONS_ROOT="$ROOT_DIR" "$timeout_bin" "$probe_timeout" \
            "${cmdline[@]}" 2>/dev/null </dev/null)"; then
            rc=0
        else
            rc=$?
        fi
    else
        if out="$(ARGC_COMPLETIONS_ROOT="$ROOT_DIR" "${cmdline[@]}" 2>/dev/null </dev/null)"; then
            rc=0
        else
            rc=$?
        fi
    fi

    if ((rc == 124)); then
        PROBE_STATE="timeout after ${probe_timeout}s"
        return 1
    fi

    while IFS= read -r line; do
        [[ -z "$line" ]] && continue
        if [[ "$line" =~ ^-[^[:space:]]+ ]]; then
            FLAG_LINES=$((FLAG_LINES + 1))
        else
            PROBE_STATE="non-flag line: ${line:0:60}"
            return 1
        fi
    done <<<"$out"
    if ((FLAG_LINES == 0)); then
        if ((rc != 0)); then
            PROBE_STATE="exit $rc, no flags"
        else
            PROBE_STATE="no flags"
        fi
        return 1
    fi
    PROBE_STATE="pass"
    return 0
}

# ---------------------------------------------------------------------------
# 3. GitHub lookups: repository resolution, custom value-completion search
# ---------------------------------------------------------------------------

bridge_language() {
    case "$1" in
    clap) printf 'rust\n' ;;
    cobra | urfave) printf 'go\n' ;;
    click | argcomplete) printf 'python\n' ;;
    yargs) printf 'javascript\n' ;;
    *) return 1 ;;
    esac
}

github_language() {
    case "$1" in
    rust) printf 'Rust\n' ;;
    go) printf 'Go\n' ;;
    python) printf 'Python\n' ;;
    javascript) printf 'JavaScript\n' ;;
    *) return 1 ;;
    esac
}

gh_available() {
    if [[ -z "$GH_PATH" ]]; then
        GH_PATH="$(resolve_bin "$gh_bin")"
    fi
    [[ -n "$GH_PATH" && -x "$GH_PATH" ]]
}

GH_OUT=""
GH_ERR=""
run_gh() {
    local err_file rc=0 out=""
    err_file="$(mktemp "${TMPDIR:-/tmp}/detect-bridge-gh.XXXXXX" 2>/dev/null)" || {
        GH_ERR="mktemp failed"
        return 1
    }
    if [[ -n "$timeout_bin" ]]; then
        if out="$("$timeout_bin" "$gh_timeout" "$GH_PATH" "$@" 2>"$err_file")"; then
            rc=0
        else
            rc=$?
        fi
    else
        if out="$("$GH_PATH" "$@" 2>"$err_file")"; then
            rc=0
        else
            rc=$?
        fi
    fi
    GH_OUT="$out"
    GH_ERR="$(head -n 1 "$err_file" 2>/dev/null || true)"
    rm -f "$err_file"
    if ((rc == 124)); then
        GH_ERR="timeout after ${gh_timeout}s"
    fi
    return "$rc"
}

REPO=""
REPO_REASON=""
REPO_CANDIDATES=()

append_repo_candidates() {
    local full stars fork archived recent name owner name_lc owner_lc cmd_lc match
    cmd_lc="${CMD_NAME,,}"
    while IFS=$'\t' read -r full stars fork archived recent; do
        [[ -n "$full" ]] || continue
        [[ "$fork" == "false" && "$archived" == "false" ]] || continue
        owner="${full%%/*}"
        name="${full#*/}"
        name_lc="${name,,}"
        owner_lc="${owner,,}"
        match=""
        if [[ "$name_lc" == "$cmd_lc" ]]; then
            match="name"
        elif [[ "$name_lc" == "${cmd_lc}-cli" || "$name_lc" == "${cmd_lc}_cli" ]]; then
            match="name-suffix"
        elif [[ "$owner_lc" == "$cmd_lc" && "$name_lc" == "cli" ]]; then
            match="owner-cli"
        fi
        [[ -n "$match" ]] || continue
        [[ "$stars" =~ ^[0-9]+$ ]] || continue
        if ((stars >= REPO_MIN_STARS || recent == 1)); then
            REPO_CANDIDATES+=("$full"$'\t'"$stars"$'\t'"$match")
        fi
    done <<<"$GH_OUT"
}

select_repo_candidate() {
    local entry full stars match rest best="" best_stars=-1 best_match=""
    local second_stars=-1
    REPO=""
    if ((${#REPO_CANDIDATES[@]} == 0)); then
        REPO_REASON="no confident name match"
        return 1
    fi
    for entry in "${REPO_CANDIDATES[@]}"; do
        full="${entry%%$'\t'*}"
        rest="${entry#*$'\t'}"
        stars="${rest%%$'\t'*}"
        match="${rest#*$'\t'}"
        if ((stars > best_stars)); then
            second_stars=$best_stars
            best="$full"
            best_stars=$stars
            best_match="$match"
        elif ((stars > second_stars)); then
            second_stars=$stars
        fi
    done
    if ((second_stars >= 0 && best_stars < second_stars * REPO_DOMINANCE)); then
        REPO_REASON="ambiguous candidates (${best_stars} vs ${second_stars} stars)"
        return 1
    fi
    REPO="$best"
    REPO_REASON="$best_match match, ${best_stars} stars"
    return 0
}

resolve_repo() {
    local bridge="$1" lang gh_lang search_lang
    local had_search_error=0 repo_error=""
    local -a search_langs=()

    REPO=""
    REPO_REASON=""

    if [[ -n "$repo_override" ]]; then
        REPO="$repo_override"
        REPO_REASON="--repo override"
        return 0
    fi

    if ! lang="$(bridge_language "$bridge")"; then
        REPO_REASON="no language for bridge"
        return 1
    fi
    gh_lang="$(github_language "$lang")"

    if ! gh_available; then
        warn_once "gh not found; dynamic completion state unknown"
        REPO_REASON="gh not found"
        return 1
    fi

    search_langs=("$gh_lang")
    if [[ "$lang" == "javascript" ]]; then
        search_langs+=("TypeScript")
    fi

    REPO_CANDIDATES=()
    for search_lang in "${search_langs[@]}"; do
        if ! run_gh search repos "$CMD_NAME" --match name --language "$search_lang" \
            --limit 30 --sort stars \
            --json fullName,stargazersCount,isFork,isArchived,pushedAt \
            --jq '.[] | "\(.fullName)\t\(.stargazersCount)\t\(.isFork)\t\(.isArchived)\t\(if ((now - ((.pushedAt // "1970-01-01T00:00:00Z") | fromdateiso8601)) < '"$REPO_MAX_AGE_SECONDS"') then 1 else 0 end)"'; then
            had_search_error=1
            repo_error="${GH_ERR:-unknown error}"
            verbose_log "repo: $bridge search '$search_lang' failed ($repo_error)"
            continue
        fi
        append_repo_candidates
    done

    if select_repo_candidate; then
        REPO_REASON="$REPO_REASON, languages=${search_langs[*]}"
        return 0
    fi

    if ((had_search_error)); then
        warn_once "gh search repos failed for $bridge ($repo_error); dynamic state unknown"
        REPO_REASON="repo search failed: $repo_error"
        return 1
    fi

    return 1
}

is_source_path() {
    local path="$1"
    case "$path" in
    *.md | *.rst | *.txt | *.adoc | *.json | *.yaml | *.yml | *.lock | *.sum)
        return 1
        ;;
    *_test.go | *_test.py | test_*.py | *.test.js | *.spec.js | *.min.js)
        return 1
        ;;
    esac
    if printf '%s\n' "$path" |
        grep -Eq '(^|/)(vendor|vendors|node_modules|third_party|deps|dist|build|target|docs|doc|examples|example|samples|sample|testdata|test|tests|spec|fixtures|fixture)/'; then
        return 1
    fi
    return 0
}

DYNAMIC_STATE="unknown"
DYNAMIC_EVIDENCE=""
DYNAMIC_REASON=""

detect_dynamic() {
    local bridge="$1" pattern path hit="" hit_pattern=""
    local had_error=0
    local -a patterns=()

    DYNAMIC_STATE="unknown"
    DYNAMIC_EVIDENCE=""
    DYNAMIC_REASON=""

    if [[ -z "$REPO" ]]; then
        DYNAMIC_REASON="no repository"
        return 1
    fi

    if ! gh_available; then
        warn_once "gh not found; dynamic completion state unknown"
        DYNAMIC_REASON="gh not found"
        return 1
    fi

    case "$bridge" in
    clap) patterns=(ArgValueCompleter ValueCompleter) ;;
    cobra) patterns=(RegisterFlagCompletionFunc ValidArgsFunction) ;;
    urfave) patterns=(ShellComplete) ;;
    click) patterns=(shell_complete) ;;
    argcomplete) patterns=('completer=' '.completer') ;;
    yargs) patterns=('.completion(') ;;
    *)
        DYNAMIC_REASON="no pattern set for bridge"
        return 1
        ;;
    esac

    for pattern in "${patterns[@]}"; do
        if ! run_gh search code "$pattern" --repo "$REPO" --limit 30 \
            --json path --jq '.[].path'; then
            had_error=1
            verbose_log "dynamic: $bridge search '$pattern' failed (${GH_ERR:-unknown error})"
            continue
        fi
        while IFS= read -r path; do
            [[ -n "$path" ]] || continue
            if is_source_path "$path"; then
                hit="$path"
                hit_pattern="$pattern"
                break
            fi
            verbose_log "dynamic: $bridge skip filtered hit for '$pattern': $path"
        done <<<"$GH_OUT"
        if [[ -n "$hit" ]]; then
            break
        fi
    done

    if [[ -n "$hit" ]]; then
        DYNAMIC_STATE="dynamic"
        DYNAMIC_EVIDENCE="$hit"
        DYNAMIC_REASON="pattern: $hit_pattern"
        return 0
    fi

    if ((had_error)); then
        warn_once "gh search code failed for $bridge (${GH_ERR:-rate limit?}); dynamic state unknown"
        DYNAMIC_REASON="code search failed: ${GH_ERR:-unknown error}"
        return 1
    fi

    DYNAMIC_STATE="static"
    DYNAMIC_REASON="no source hit"
    return 0
}

# ---------------------------------------------------------------------------
# 4. Main flow
# ---------------------------------------------------------------------------

main() {
    local cmd_path real_path bridge state i
    local -a matches=() states=()

    all_mode="${argc_all:-0}"
    verbose="${argc_verbose:-0}"
    no_dynamic="${argc_no_dynamic:-0}"
    probe_timeout="${argc_timeout:-$DEFAULT_TIMEOUT}"
    [[ "$probe_timeout" =~ ^[1-9][0-9]*$ ]] || die "invalid timeout: $probe_timeout"

    repo_override=""
    if [[ -n "${argc_repo:-}" ]]; then
        repo_override="$(normalize_repo "$argc_repo")" || die "invalid repo: $argc_repo"
    fi

    cmd="$argc_cmd"
    CMD_NAME="${cmd##*/}"
    probe_args=()
    if [[ -n "${argc_args+x}" ]]; then
        probe_args=("${argc_args[@]}")
    fi
    if ((${#probe_args[@]} == 0)); then
        probe_args=(-)
    fi

    if ! cmd_path="$(command -v -- "$cmd" 2>/dev/null)" || [[ -z "$cmd_path" ]]; then
        die "command not found: $cmd"
    fi
    [[ -f "$cmd_path" ]] || die "not a file-backed command: $cmd ($cmd_path)"

    if command -v realpath >/dev/null 2>&1; then
        real_path="$(realpath "$cmd_path" 2>/dev/null)" || real_path="$cmd_path"
    else
        real_path="$cmd_path"
    fi

    argc_bin="$(resolve_bin "${ARGC_BIN:-}")"
    if [[ -z "$argc_bin" && -x "$ROOT_DIR/bin/argc" ]]; then
        argc_bin="$ROOT_DIR/bin/argc"
    fi
    if [[ -z "$argc_bin" ]]; then
        argc_bin="$(command -v -- argc 2>/dev/null || true)"
    fi
    [[ -n "$argc_bin" ]] || die "argc not found (set ARGC_BIN)"

    timeout_bin="$(command -v timeout 2>/dev/null || command -v gtimeout 2>/dev/null || true)"
    if [[ -z "$timeout_bin" ]]; then
        printf 'detect-bridge: warning: no timeout/gtimeout; probes run without a timeout\n' >&2
    fi

    detect_language "$real_path"

    if ((verbose)); then
        verbose_log "cmd=$cmd"
        verbose_log "path=$cmd_path"
        verbose_log "realpath=$real_path"
        verbose_log "file=${FILE_DESC:-<unavailable>}"
        if ((${#DETECTED_LANGS[@]})); then
            for i in "${!DETECTED_LANGS[@]}"; do
                verbose_log "language=${DETECTED_LANGS[i]} (${LANG_EVIDENCE[i]})"
            done
        else
            verbose_log "language=unknown"
        fi
    fi

    build_candidates

    if ((${#CANDIDATES[@]} == 0)); then
        verbose_log "no bridge candidates; use --all to probe every bridge"
    fi

    for bridge in "${CANDIDATES[@]}"; do
        if probe_bridge "$bridge"; then
            matches+=("$bridge")
            verbose_log "probe: $bridge -> $FLAG_LINES flag line(s) (PASS)"

            state="unknown"
            if ((no_dynamic)); then
                verbose_log "dynamic: $bridge -> unknown (--no-dynamic)"
            elif resolve_repo "$bridge"; then
                verbose_log "repo: $bridge -> $REPO ($REPO_REASON)"
                detect_dynamic "$bridge" || true
                state="$DYNAMIC_STATE"
                if [[ "$state" == "dynamic" ]]; then
                    verbose_log "dynamic: $bridge -> dynamic (${DYNAMIC_EVIDENCE}) [${DYNAMIC_REASON#pattern: }]"
                else
                    verbose_log "dynamic: $bridge -> $state ($DYNAMIC_REASON)"
                fi
            else
                verbose_log "repo: $bridge -> unknown ($REPO_REASON)"
            fi
            states+=("$state")

            ((all_mode)) || break
        else
            verbose_log "probe: $bridge -> ${PROBE_STATE:-failed} (FAIL)"
        fi
    done

    if ((${#matches[@]} == 0)); then
        printf 'unknown\n'
        exit 1
    fi

    if ((all_mode)); then
        for i in "${!matches[@]}"; do
            printf '%s\t%s\n' "${matches[i]}" "${states[i]}"
        done
    else
        printf '%s\t%s\n' "${matches[0]}" "${states[0]}"
        verbose_log "selected=${matches[0]}"
    fi
    exit 0
}

command eval "$(argc --argc-eval "$0" "$@")"
