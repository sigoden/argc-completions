#!/usr/bin/env bash
# Check that committed shell code uses sed/grep/find forms supported by both
# macOS built-in (BSD) tools and GNU tools.
#
# POSIX is the shared reference, not an upper bound: non-POSIX options are
# allowed when both implementations accept them (for example sed -E/-r/-u,
# grep -r/--line-buffered, and find -maxdepth/-mindepth/-print0).
#
# A line that deliberately uses a tool-specific option (for example a GNU-only
# branch guarded at runtime) may opt out with a trailing
# `# lint: allow-unportable` comment.

set -euo pipefail

TEST_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$TEST_DIR/../.." && pwd)"
export PATH="$ROOT_DIR/bin:$PATH"

if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
    if [ -x "$ROOT_DIR/bin/bash" ] && [ "${ARGC_BASH_REEXEC:-0}" != "1" ]; then
        ARGC_BASH_REEXEC=1 exec "$ROOT_DIR/bin/bash" "$0" "$@"
    fi
    echo "bash >= 5 is required (run ./install.sh)" >&2
    exit 1
fi

for cmd in sed grep find xargs awk; do
    command -v "$cmd" >/dev/null || { echo "$cmd is required" >&2; exit 1; }
done

files=()
while IFS= read -r file; do
    [ "$file" = "$TEST_DIR/run.sh" ] && continue
    files+=("$file")
done < <(
    find "$ROOT_DIR/completions" "$ROOT_DIR/utils" "$ROOT_DIR/scripts" "$ROOT_DIR/skills" "$ROOT_DIR/tests" \
        -type f -name '*.sh'
    [ -f "$ROOT_DIR/install.sh" ] && printf '%s\n' "$ROOT_DIR/install.sh"
    [ -f "$ROOT_DIR/Argcfile.sh" ] && printf '%s\n' "$ROOT_DIR/Argcfile.sh"
)

[ "${#files[@]}" -gt 0 ] || { echo "no shell files found" >&2; exit 1; }

printf 'a\n' | sed -n 's/a/A/p' | grep -qx 'A' || {
    echo "sed/grep smoke test failed" >&2
    exit 1
}

[ "$(find . -maxdepth 0 -type d 2>/dev/null)" = "." ] || {
    echo "find smoke test failed" >&2
    exit 1
}

failures=0

# One grep per pattern over every file: per-file greps cost thousands of
# processes and dominate the runtime of this lint.
lint() {
    local label="$1" pattern="$2" matches
    matches="$(grep -HnE -- "$pattern" "${files[@]}" 2>/dev/null \
        | grep -vE '^[^:]+:[0-9]+:[[:space:]]*#' \
        | grep -vE 'lint:[[:space:]]*allow-unportable' || true)"
    if [ -n "$matches" ]; then
        printf '%s\n  pattern: %s\n%s\n' "$label" "$pattern" "$matches" >&2
        failures=$((failures + 1))
    fi
}

# sed: GNU-only, macOS-only, and semantic differences.
lint 'GNU-only sed option' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[[:space:]]?-[bsz]([[:space:]]|$)'
lint 'non-portable sed -l' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[[:space:]]?-l([[:space:]]|$)'
lint 'non-portable sed -i form' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[[:space:]]?-i([[:space:]]|$)'
lint 'non-portable sed -i form' \
    "(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[[:space:]]?-i(''|\"\")([[:space:]]|\$)"
lint 'macOS-only sed option' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[[:space:]]?-[aI]([^[:alnum:]_]|$)'
lint 'GNU-only sed long option' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[[:space:]]?--(binary|debug|expression|file|follow-symlinks|help|in-place|line-length|null-data|posix|quiet|regexp-extended|sandbox|separate|silent|unbuffered|version)([[:space:]]|=|$)'
lint 'GNU-only sed escape' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*\\[sSwWbB<>x+?|]'
lint 'GNU-only sed address' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*0,/'
lint 'GNU-only sed address' \
    '(^|[^[:alnum:]_])sed[[:space:]][^|;&]*[0-9]+~[0-9]+'
lint 'GNU-only sed a/i/c one-line form' \
    "(^|[^[:alnum:]_])sed[[:space:]][^|;&]*['\"]/[^'\"]*/[[:space:]]*[aic][[:space:]]"

# grep: GNU-only, macOS-only, and semantic differences.
lint 'non-portable grep option' \
    '(^|[^[:alnum:]_])grep[[:space:]][^|;&]*[[:space:]]?-(P|Z|z)([[:space:]]|$)'
lint 'GNU-only grep long option' \
    '(^|[^[:alnum:]_])grep[[:space:]][^|;&]*[[:space:]]?--(perl-regexp|null-data)([[:space:]]|=|$)'
lint 'macOS-only grep option' \
    '(^|[^[:alnum:]_])grep[[:space:]][^|;&]*[[:space:]]?-(J|O|p)([[:space:]]|$)'
lint 'macOS-only grep long option' \
    '(^|[^[:alnum:]_])grep[[:space:]][^|;&]*[[:space:]]?--(include-dir|mmap|decompress)([[:space:]]|=|$)'
lint 'GNU-only grep escape' \
    "(^|[^[:alnum:]_])grep[[:space:]][^|;&]*['\"][^'\"]*\\\\[sSwWbB<>x+?|][^'\"]*['\"]"

# find: GNU-only, macOS-only, and semantic differences.
lint 'GNU-only find option' \
    '(^|[^[:alnum:]_])find[[:space:]][^|;&]*[[:space:]]?-(printf|fprintf|regextype|files0-from|newermt|daystart|warn|nowarn|noleaf|ignore_readdir_race)([[:space:]]|$)'
lint 'GNU-only find option' \
    '(^|[^[:alnum:]_])find[[:space:]][^|;&]*[[:space:]]?-[DO]([[:space:]]|$)'
lint 'macOS-only find option' \
    '(^|[^[:alnum:]_])find[[:space:]][^|;&]*[[:space:]]?-[EX]([[:space:]]|$)'
lint 'GNU-only find permission form' \
    '(^|[^[:alnum:]_])find[[:space:]][^|;&]*[[:space:]]?-perm[[:space:]]+/[^[:space:]]+'

if [ "$failures" -ne 0 ]; then
    printf '%s incompatible sed/grep/find construct group(s) found\n' "$failures" >&2
    exit 1
fi

printf 'ok   Unix tool compatibility lint (%s files)\n' "${#files[@]}"
