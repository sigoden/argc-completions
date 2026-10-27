#!/usr/bin/env bash
# Shared helpers for the argc-completions-generate skill scripts.

set -euo pipefail

LIB_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
REPO_ROOT="$(cd -P "$LIB_DIR/../../.." && pwd -P)"
export PATH="$REPO_ROOT/bin:$PATH"

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

detect_os() {
    if [[ "${OS:-}" == "Windows_NT" ]]; then
        echo windows
    elif [[ "$(uname)" == "Darwin" ]]; then
        echo macos
    else
        echo linux
    fi
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
    # The compile contract writes .txt help targets; reject a mistaken command
    # name such as `tree` before it creates a stray file.
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
