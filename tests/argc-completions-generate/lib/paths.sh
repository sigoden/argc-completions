#!/usr/bin/env bash
# Paths, host probes, and the per-process caches they need.
#
# Sourced by helper.sh. Everything here is safe to run before helper_init: it
# defines variables and functions only, except for two one-time probes whose
# answers cannot change during a case file (PATH and the host type).

HELPER_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEST_DIR="$HELPER_DIR"
ROOT_DIR="$(cd "$TEST_DIR/../.." && pwd)"
SKILL_DIR="$ROOT_DIR/skills/argc-completions-generate"
SCRIPTS="$SKILL_DIR/scripts"
# shellcheck disable=SC2034 # read by lib/fixtures.sh and the case files
FIXTURES="$TEST_DIR/fixtures"

# has_command <name>: command -v with a per-process cache. Presence probes are
# stable because PATH does not change inside a case file.
declare -A HAS_COMMAND_CACHE=()
has_command() {
    local name="$1"
    if [[ -n "${HAS_COMMAND_CACHE[$name]+set}" ]]; then
        [[ "${HAS_COMMAND_CACHE[$name]}" == 1 ]]
        return
    fi
    if command -v "$name" >/dev/null 2>&1; then
        HAS_COMMAND_CACHE[$name]=1
        return 0
    fi
    HAS_COMMAND_CACHE[$name]=0
    return 1
}

# A non-MSYS host never converts paths; decide that once, when this file is
# sourced, instead of on every native_path call.
HOST_IS_MSYS=0
if [[ "${OSTYPE:-}" == msys* || "${OSTYPE:-}" == cygwin* ]] && has_command cygpath; then
    HOST_IS_MSYS=1
fi

# NATIVE_ROOTS holds "<posix>|<native>" prefixes for the directories test paths
# live under (built by native_roots_build). The table must live in globals:
# `$(native_path ...)` is a subshell, so a cache written inside the function is
# discarded, while a prefix built in the parent is inherited.
NATIVE_ROOTS=()
declare -A NATIVE_CACHE=()
# NATIVE_SCRIPTS is the native form of the skill script directory. jq takes its
# module directory (-L) and program files (-f) as ordinary arguments, so both
# operands need it on a host where a native jq cannot open a POSIX path.
# shellcheck disable=SC2034 # written here, read by lib/fixtures.sh
NATIVE_SCRIPTS=""

# native_roots_build: convert each test root once so native_path stays fork-free
# for the rest of the case file.
native_roots_build() {
    NATIVE_ROOTS=()
    NATIVE_CACHE=()
    native_path_to NATIVE_SCRIPTS "$SCRIPTS"
    [[ "$HOST_IS_MSYS" == 1 ]] || return 0
    local dir
    for dir in "${TMP_DIR:-}" "$ROOT_DIR"; do
        [[ -n "$dir" && "$dir" == /* ]] || continue
        NATIVE_ROOTS+=("$dir|$(cygpath -m "$dir")")
    done
}

# Translate a POSIX file path to the form a native Windows binary can open.
# Git Bash runs jq/argc as .exe files, which cannot resolve /c/... or /tmp/...
# when MSYS path conversion is disabled. cygpath -m yields C:/..., which both
# native and MSYS tools accept and which avoids backslash escaping in shell
# code. Non-Windows hosts, relative paths, and Windows paths pass through.
# A path under a known root is rewritten from the prefix table (a pure string
# operation); anything else converts once through cygpath and is memoized.
#
# native_path_to writes into a caller variable so a hot path (a jq assertion,
# say) does not pay for a command substitution. native_path is the printable
# form every shell caller uses.
native_path_to() {
    local var="$1" value="$2" entry prefix converted
    if [[ "$HOST_IS_MSYS" != 1 || "$value" != /* ]]; then
        printf -v "$var" '%s' "$value"
        return 0
    fi
    for entry in "${NATIVE_ROOTS[@]}"; do
        prefix="${entry%%|*}"
        if [[ "$value" == "$prefix" || "$value" == "$prefix"/* ]]; then
            printf -v "$var" '%s%s' "${entry#*|}" "${value#"$prefix"}"
            return 0
        fi
    done
    if [[ -n "${NATIVE_CACHE[$value]+set}" ]]; then
        printf -v "$var" '%s' "${NATIVE_CACHE[$value]}"
        return 0
    fi
    converted="$(cygpath -m "$value")"
    NATIVE_CACHE[$value]="$converted"
    printf -v "$var" '%s' "$converted"
}

native_path() {
    local path
    native_path_to path "$1"
    printf '%s\n' "$path"
}

# The repo ships its own bash under bin/ for hosts that need a newer one.
require_bash5() {
    if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
        if [ -x "$ROOT_DIR/bin/bash" ] && [ "${ARGC_BASH_REEXEC:-0}" != "1" ]; then
            ARGC_BASH_REEXEC=1 exec "$ROOT_DIR/bin/bash" "$0" "$@"
        fi
        echo "bash >= 5 is required (run ./install.sh)" >&2
        exit 1
    fi
}
