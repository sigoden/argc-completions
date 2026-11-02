#!/usr/bin/env bash
# Shared helpers for the argc-completions-generate skill scripts.

set -euo pipefail

LIB_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
REPO_ROOT="$(cd -P "$LIB_DIR/../../.." && pwd -P)"
export PATH="$REPO_ROOT/bin:$PATH"

# Bump when the fragment schema, compile semantics, hash framing, or help
# canonicalization changes; every cache hash includes this value.
SKILL_CACHE_VERSION="v2"

log_info() {
    if [[ "${VERBOSE:-0}" -eq 1 ]]; then
        printf '[info] %s\n' "$*" >&2
    fi
}

log_warn() {
    printf '[warn] %s\n' "$*" >&2
}

log_error() {
    printf '[error] %s\n' "$*" >&2
}

die() {
    log_error "$@"
    exit 1
}

if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
    die "bash >= 5 required (current: ${BASH_VERSION:-unknown})"
fi

# Detect the host OS from uname first: a Windows environment often exports
# OS=Windows_NT, and WSL inherits it while running a real Linux userspace.
# Only fall back to OS when uname reports an unknown kernel.
detect_os() {
    case "$(uname -s 2>/dev/null || true)" in
        Darwin) echo macos ;;
        Linux) echo linux ;;
        CYGWIN* | MINGW* | MSYS* | Windows_NT) echo windows ;;
        *)
            if [[ "${OS:-}" == "Windows_NT" ]]; then
                echo windows
            else
                echo linux
            fi
            ;;
    esac
}

# Run a command with stdout/stderr captured to files and a hard timeout.
# Usage: run_with_timeout <stdout-file> <stderr-file> <seconds> <cmd...>
# Pass '-' as the stderr file to merge stderr into stdout.
# Returns the command status; a timeout yields the wrapper's status (124 with
# GNU timeout/gtimeout, 143 from the background fallback). Use it in `if`/`||`
# because lib.sh runs under `set -e`.
run_with_timeout() {
    local out="$1" err="$2" seconds="$3"
    shift 3
    local -a timeout_cmd=()
    local rc=0 pid watcher
    if command -v timeout >/dev/null 2>&1; then
        timeout_cmd=(timeout "$seconds")
    elif command -v gtimeout >/dev/null 2>&1; then
        timeout_cmd=(gtimeout "$seconds")
    fi
    if [[ ${#timeout_cmd[@]} -gt 0 ]]; then
        if [[ "$err" == "-" ]]; then
            "${timeout_cmd[@]}" "$@" >"$out" 2>&1
        else
            "${timeout_cmd[@]}" "$@" >"$out" 2>"$err"
        fi
        return $?
    fi
    # Portable fallback for hosts without GNU coreutils (macOS).
    if [[ "$err" == "-" ]]; then
        "$@" >"$out" 2>&1 &
    else
        "$@" >"$out" 2>"$err" &
    fi
    pid=$!
    ( sleep "$seconds"; kill -TERM "$pid" 2>/dev/null ) >/dev/null 2>&1 &
    watcher=$!
    wait "$pid" || rc=$?
    kill "$watcher" 2>/dev/null || true
    wait "$watcher" 2>/dev/null || true
    return "$rc"
}

# Run a help command with stdin closed and a timeout so a pager or an
# interactive prompt cannot hang the caller. Stdout and stderr share one file.
# Usage: capture_help <output-file> <timeout-seconds> <cmd...>
# Returns the command status; use it in `if`/`||` because lib.sh runs under
# `set -e`.
capture_help() {
    local output="$1" seconds="$2"
    shift 2
    run_with_timeout "$output" "-" "$seconds" \
        env PAGER=cat MANPAGER=cat COLUMNS=9999 NO_COLOR=1 "$@" </dev/null
}

require_cmd() {
    local cmd="$1" hint="${2:-}"
    if ! command -v "$cmd" >/dev/null 2>&1; then
        if [[ -n "$hint" ]]; then
            die "missing dependency: $cmd ($hint)"
        else
            die "missing dependency: $cmd"
        fi
    fi
}

# A source.command is a space-separated token string; it is executed through
# an argv array, never through eval or a shell. The `help` builtin needs a fixed
# wrapper and exactly one argument.
source_command_ok() {
    local command="$1"
    local -a argv=()
    [[ "$command" =~ ^[A-Za-z0-9_.+:@/-]+( [A-Za-z0-9_.+:@/-]+)*$ ]] || return 1
    read -r -a argv <<<"$command"
    [[ ${#argv[@]} -gt 0 ]] || return 1
    if [[ "${argv[0]}" == "help" ]]; then
        [[ ${#argv[@]} -eq 2 ]] || return 1
    fi
    return 0
}

# Run source.command with the fixed help environment and a timeout.
# Usage: capture_source_command <output-file> <timeout-seconds> <command>
# Returns 2 for an unsafe/malformed command; otherwise the command status.
capture_source_command() {
    local output="$1" seconds="$2" command="$3"
    local -a argv=()
    source_command_ok "$command" || return 2
    read -r -a argv <<<"$command"
    if [[ "${argv[0]}" == "help" ]]; then
        capture_help "$output" "$seconds" bash -c 'help "$1"' _ "${argv[1]}"
    else
        capture_help "$output" "$seconds" "${argv[@]}"
    fi
}

require_sha256() {
    if command -v sha256sum >/dev/null 2>&1 \
        || command -v shasum >/dev/null 2>&1 \
        || command -v openssl >/dev/null 2>&1; then
        return 0
    fi
    die "missing dependency: sha256sum, shasum, or openssl"
}

# Print the lowercase hex SHA-256 of stdin.
sha256_hex() {
    local output
    require_sha256
    if command -v sha256sum >/dev/null 2>&1; then
        output="$(sha256sum)"
    elif command -v shasum >/dev/null 2>&1; then
        output="$(shasum -a 256)"
    else
        output="$(openssl dgst -sha256)"
    fi
    output="$(printf '%s\n' "$output" | grep -oE '[0-9a-f]{64}' | head -n 1 || true)"
    [[ -n "$output" ]] || die "failed to parse sha256 output"
    printf '%s\n' "$output"
}

require_pipeline_tools() {
    require_cmd argc "run $REPO_ROOT/install.sh"
    require_cmd jq "run $REPO_ROOT/install.sh"
    require_cmd gawk "run $REPO_ROOT/install.sh or install gawk"
    require_cmd sed
    require_cmd grep
    require_cmd find
}

resolve_completion_file() {
    local root="$1" override="${2:-}" os candidate
    if [[ -n "$override" ]]; then
        printf '%s\n' "$override"
        return 0
    fi
    os="$(detect_os)"
    for candidate in "$REPO_ROOT/completions/$os/$root.sh" "$REPO_ROOT/completions/$root.sh"; do
        if [[ -f "$candidate" ]]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_other_completion_file() {
    local root="$1" chosen="$2" os candidate
    os="$(detect_os)"
    for candidate in "$REPO_ROOT/completions/$os/$root.sh" "$REPO_ROOT/completions/$root.sh"; do
        if [[ -f "$candidate" ]] && [[ "$candidate" != "$chosen" ]]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

canonicalize_help() {
    gawk '
    function strip_escapes(s,    out, i, c, n) {
        out = ""
        n = length(s)
        for (i = 1; i <= n; i++) {
            c = substr(s, i, 1)
            if (c == "\033") {
                if (substr(s, i + 1, 1) == "[") {
                    i += 2
                    while (i <= n) {
                        c = substr(s, i, 1)
                        if (c ~ /[@-~]/) break
                        i++
                    }
                    continue
                }
                if (substr(s, i + 1, 1) == "]") {
                    i += 2
                    while (i <= n) {
                        c = substr(s, i, 1)
                        if (c == "\007") break
                        if (c == "\033" && substr(s, i + 1, 1) == "\\") { i++; break }
                        i++
                    }
                    continue
                }
                if (i < n && substr(s, i + 1, 1) ~ /[@-_]/) i++
                continue
            }
            out = out c
        }
        return out
    }
    function strip_backspaces(s,    out, i, c) {
        out = ""
        for (i = 1; i <= length(s); i++) {
            c = substr(s, i, 1)
            if (c == "\b") {
                if (length(out) > 0) out = substr(out, 1, length(out) - 1)
            } else {
                out = out c
            }
        }
        return out
    }
    {
        line = strip_escapes($0)
        line = strip_backspaces(line)
        sub(/\r$/, "", line)
        sub(/[ \t]+$/, "", line)
        if (line == "") {
            blank = blank + 1
        } else {
            for (i = 0; i < blank; i++) print ""
            blank = 0
            print line
        }
    }
    '
}

canonicalize_help_file() {
    local input="$1" output="$2"
    # Help files live in a temporary directory and keep the .txt suffix; reject
    # a mistaken command name such as `tree` before it creates a stray file.
    case "$output" in
        *.txt) ;;
        *)
            log_error "canonicalize_help_file: output must be a .txt file (got '$output')"
            return 2
            ;;
    esac
    canonicalize_help <"$input" >"$output"
}

# compare-help.sh-like helper: 0 means canonical content is identical.
help_files_equal() {
    local left="$1" right="$2" tmp_dir left_norm right_norm rc=0
    tmp_dir="$(mktemp -d)"
    left_norm="$tmp_dir/left"
    right_norm="$tmp_dir/right"
    canonicalize_help <"$left" >"$left_norm"
    canonicalize_help <"$right" >"$right_norm"
    if ! cmp -s "$left_norm" "$right_norm"; then
        rc=1
    fi
    rm -rf "$tmp_dir"
    return "$rc"
}

# A root command name is limited to the characters a completion file and its
# cache directory can safely carry. ":" stays out: nothing names a root after a
# subcommand, and delete-cache.sh moves a whole root directory by this name.
root_name_ok() {
    [[ "$1" != "." && "$1" != ".." ]] && [[ "$1" =~ ^[A-Za-z0-9_.+@-]+$ ]]
}

# A subcommand path segment accepts ":" on top of the root set, because argc
# subcommands such as `pm2 profile:mem` and `pm2 module:update` keep the colon.
# validate-fragment.jq's cmd_name allows it too; the leading "-" it also allows
# stays out, because the callers' option parser would consume it as a flag.
sub_name_ok() {
    [[ "$1" != "." && "$1" != ".." ]] && [[ "$1" =~ ^[A-Za-z0-9_.+:@-]+$ ]]
}

# Print the fragment file path for a command path.
# Usage: fragment_file_path <fragment-dir> <root> [subcommand...]
fragment_file_path() {
    local fragments="$1" root="$2" result
    shift 2
    if [[ $# -eq 0 ]]; then
        printf '%s\n' "$fragments/_root.json"
        return 0
    fi
    result="$fragments/$1"
    shift
    local part
    for part in "$@"; do
        result="$result/$part"
    done
    printf '%s.json\n' "$result"
}

# Run a jq filter or program with this directory on the module search path, so
# a program can `include "description-rules"` (validate-fragment.jq and
# the description normalizer share one rule set).
# Usage: jq_skill [jq-options...] <filter|--file>
jq_skill() {
    jq -L "$LIB_DIR" "$@"
}

# --- Block markers ----------------------------------------------------------
# The pipeline-block contract (# >>> NAME / # <<< NAME) is shared by assemble,
# verify, and format-choices, so the marker parsing lives here and nowhere else.

# Count the opening (direction '>>>') or closing (direction '<<<') marker lines
# for one block name. A missing file counts as zero.
count_marker() {
    local file="$1" direction="$2" name="$3" count
    count="$(grep -c "^# $direction $name$" "$file" 2>/dev/null || true)"
    printf '%s\n' "${count:-0}"
}

# Print the 1-based line number of the first marker of that kind, if any.
block_line() {
    local file="$1" direction="$2" name="$3"
    grep -n "^# $direction $name$" "$file" 2>/dev/null | head -n 1 | cut -d: -f1 || true
}

# Extract the body between one block's markers into <dest>.
# Usage: extract_block <file> <name> <dest>
# Returns 0 when extracted, 1 when both markers are absent (no such block),
# 2 when the markers are duplicated or out of order. The caller owns the
# message, because assemble treats 2 as fatal and verify as a check failure.
extract_block() {
    local file="$1" name="$2" dest="$3" starts ends start_line end_line
    starts="$(count_marker "$file" '>>>' "$name")"
    ends="$(count_marker "$file" '<<<' "$name")"
    if [[ "$starts" -eq 0 && "$ends" -eq 0 ]]; then
        return 1
    fi
    [[ "$starts" -eq 1 && "$ends" -eq 1 ]] || return 2
    start_line="$(block_line "$file" '>>>' "$name")"
    end_line="$(block_line "$file" '<<<' "$name")"
    [[ -n "$start_line" && -n "$end_line" && "$start_line" -lt "$end_line" ]] || return 2
    gawk -v start="$start_line" -v end="$end_line" 'NR > start && NR < end { print }' "$file" >"$dest"
    return 0
}

# --- File helpers -----------------------------------------------------------

# Copy <input> to <output>, dropping blank lines at both edges.
trim_blank_edges() {
    local input="$1" output="$2"
    gawk '
    { lines[NR] = $0 }
    END {
        first = 1
        last = NR
        while (first <= last && lines[first] ~ /^[[:space:]]*$/) first++
        while (last >= first && lines[last] ~ /^[[:space:]]*$/) last--
        for (i = first; i <= last; i++) print lines[i]
    }
    ' "$input" >"$output"
}

# In-place variant; the temporary file stays in the same directory so the
# rename never crosses a filesystem.
trim_blank_edges_inplace() {
    local file="$1" tmp="$1.trim.$$"
    trim_blank_edges "$file" "$tmp" && mv "$tmp" "$file"
}

# Move a finished temporary file over <target>, keeping the target's mode when
# it already exists (mktemp creates 0600, a converted fragment should not
# silently lose 0644).
install_atomic() {
    local source="$1" target="$2" mode
    if mode="$(stat -c '%a' "$target" 2>/dev/null)" || mode="$(stat -f '%Lp' "$target" 2>/dev/null)"; then
        chmod "$mode" "$source"
    fi
    mv -f "$source" "$target"
}

# Write <content> (plus a trailing newline) to <target> atomically.
# Usage: write_file_atomic <target> <content>
write_file_atomic() {
    local target="$1" content="$2" dir tmp
    dir="$(dirname "$target")"
    tmp="$(mktemp "$dir/.$(basename "$target").XXXXXX")" || return 1
    printf '%s\n' "$content" >"$tmp" || { rm -f "$tmp"; return 1; }
    install_atomic "$tmp" "$target"
}
