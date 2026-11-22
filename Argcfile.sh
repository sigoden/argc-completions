#!/usr/bin/env bash
set -e

# @describe argc-completions maintenance tasks

ARGCFILE_ROOT="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
SKILL_SCRIPTS="$ARGCFILE_ROOT/skills/argc-completions-generate/scripts"

# Use the repository's pinned argc, and let the generated CHOICES guard and the
# _argc_util_* helpers resolve against this checkout.
export PATH="$ARGCFILE_ROOT/bin:$PATH"
export ARGC_COMPLETIONS_ROOT="$ARGCFILE_ROOT"

# @cmd
# @arg cmd[`_choice_cmd`]
verify() {
    local cmd=$1
    bash "$SKILL_SCRIPTS/verify-completion.sh" "$(_completion_file "$cmd")"
}

# @cmd
verify:all() {
    local file log failed=0
    log="$(mktemp "${TMPDIR:-/tmp}/argc-completions-verify.XXXXXX")"
    while IFS= read -r file; do
        if bash "$SKILL_SCRIPTS/verify-completion.sh" "$file" >"$log" 2>&1; then
            echo "Verify ${file#"$ARGCFILE_ROOT/"} ✓"
        else
            echo "Verify ${file#"$ARGCFILE_ROOT/"} ✗"
            grep -E '^(FAIL|WARN|NOTE|RESULT)' "$log" >&2 || cat "$log" >&2
            failed=1
        fi
    done < <(find "$ARGCFILE_ROOT/completions" -type f -name '*.sh' | sort)
    rm -f "$log"
    return "$failed"
}

# @cmd
test:all() {
    for t in tests/*; do
        local s="$t/run.sh"
        echo "======== $s ========"
        bash "$s"
        echo
    done
}

# @cmd
# @arg cmd[`_choice_cmd`]
clean() {
    local cmd=$1
    local clean_dir="tmp/clean/$cmd"
    local completion
    completion="$(_completion_file "$cmd")"
    if [[ ! -f "$completion" ]]; then
        echo "no completion script for $cmd ($completion)" >&2
        return 1
    fi
    mkdir -p "$clean_dir"
    rm -rf "$clean_dir/compile"
    mv "$completion" "$clean_dir/$cmd.sh"
    mv "cache/compile/$cmd" "$clean_dir/compile"
}

# @cmd Print skill/repo roots and the per-command workflow report
# @arg root[`_choice_root`] Root command (omit for path-only output)
preflight() {
    exec bash "$SKILL_SCRIPTS/preflight.sh" "$@"
}

# @cmd Cache status for one fragment before dispatching a compile
# @arg root![`_choice_root`] Root command
# @arg path~                  Subcommand path words
check-fragment() {
    exec bash "$SKILL_SCRIPTS/check-fragment.sh" "$@"
}

# @cmd Canonicalize the CHOICES block of completion scripts
# @flag --check               Do not write files; exit 1 when a file would change
# @flag -v --verbose
# @arg file+ <FILE>           Completion script(s)
format-choices() {
    local -a opts=()
    if [[ "${argc_check:-0}" == 1 ]]; then
        opts+=(--check)
    fi
    if [[ "${argc_verbose:-0}" == 1 ]]; then
        opts+=(--verbose)
    fi
    exec bash "$SKILL_SCRIPTS/format-choices.sh" "${opts[@]}" "$@"
}

# @cmd Run one choice/helper function from a completion script
#
# Loads the script's STATIC and CHOICES blocks without running its final argc
# eval, exports ARGC_COMPLETIONS_ROOT, and calls the function. Set argc__*
# context variables yourself when the function reads them.
#
# For example:
#   argc choice-fn completions/git.sh _choice_branch
#   argc choice-fn -C /tmp/repo completions/git.sh _choice_branch
# @option -C --cwd <dir>     Change workdir before running the function
# @arg script_file!          Completion script containing the function
# @arg fn![?`_choice_fn_name`]
# @arg args~                 Arguments passed to the function
choice-fn() {
    local script block
    if [[ ! -f "$argc_script_file" ]]; then
        echo "choice-fn: no such file: $argc_script_file" >&2
        exit 1
    fi
    script="$(cd "$(dirname "$argc_script_file")" && pwd -P)/$(basename "$argc_script_file")"
    block="$(
        sed -n '/^# >>> STATIC/,/^# <<< STATIC/p' "$script" | sed '1d;$d'
        sed -n '/^# >>> CHOICES/,/^# <<< CHOICES/p' "$script" | sed '1d;$d'
    )"
    (
        cd "${argc_cwd:-$PWD}" || exit 1
        eval "$block"
        if [[ "$(type -t "$argc_fn")" != function ]]; then
            echo "choice-fn: function not found: $argc_fn" >&2
            exit 1
        fi
        "$argc_fn" "${argc_args[@]}"
    )
}

# @cmd Print the repo revision, platform, and tool versions
version() {
    local rev
    rev="$(git -C "$ARGCFILE_ROOT" rev-parse --short HEAD 2>/dev/null || true)"
    printf 'argc-completions %s\n' "${rev:-unknown}"
    printf 'repo: %s\n' "$ARGCFILE_ROOT"
    printf 'platform: %s\n' "$(uname -s -r -m 2>/dev/null || echo unknown)"
    echo
    bash "$ARGCFILE_ROOT/install.sh" --check
}

# Shell completion only: agents resolve completions through SKILL.md §Invariants.
# Both layouts are listed, so a platform-only script is still a candidate and a
# platform directory name never becomes a root.
_choice_cmd() {
    local dir file
    for dir in "$ARGCFILE_ROOT/completions" "$ARGCFILE_ROOT/completions/linux" \
        "$ARGCFILE_ROOT/completions/macos" "$ARGCFILE_ROOT/completions/windows"; do
        for file in "$dir"/*.sh; do
            [[ -f "$file" ]] || continue
            file="${file##*/}"
            printf '%s\n' "${file%.sh}"
        done
    done | sort -u
}

# Shell completion only: caches may hold roots without a generated script yet.
_choice_root() {
    {
        if [[ -d "$ARGCFILE_ROOT/cache/compile" ]]; then
            find "$ARGCFILE_ROOT/cache/compile" -mindepth 1 -maxdepth 1 -type d -exec basename {} \;
        fi
        _choice_cmd
    } | sort -u
}

# Shell completion only: functions defined in the script's CHOICES block.
_choice_fn_name() {
    local file="${argc_script_file:-}"
    [[ -f "$file" ]] || return 0
    sed -n '/^# >>> CHOICES/,/^# <<< CHOICES/p' "$file" |
        grep -E '^_(choice|helper)_[A-Za-z0-9_]+\(\)[[:space:]]*\{[[:space:]]*$' |
        sed 's/()[[:space:]]*{[[:space:]]*$//'
}

# --- completion paths -------------------------------------------------------
# Same placement rule as the skill: a first generation writes completions/<root>.sh
# on every host, an existing script stays in the directory it occupies, and a
# host-OS lookup comes before the common path.

# Print the host platform directory name, mirroring detect_os in the skill's
# scripts/lib.sh: uname decides first, OS=Windows_NT only covers an unknown
# kernel, and everything else falls back to linux.
_completion_os() {
    case "$(uname -s 2>/dev/null)" in
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

# _completion_file <cmd>: the completion script for <cmd>, host-OS directory
# first, then the common path, then the other platform directories. Prints the
# common path when none exists, so a caller can report it in a not-found message.
_completion_file() {
    local cmd="$1" os candidate
    os="$(_completion_os)"
    for candidate in \
        "$ARGCFILE_ROOT/completions/$os/$cmd.sh" \
        "$ARGCFILE_ROOT/completions/$cmd.sh" \
        "$ARGCFILE_ROOT/completions/linux/$cmd.sh" \
        "$ARGCFILE_ROOT/completions/macos/$cmd.sh" \
        "$ARGCFILE_ROOT/completions/windows/$cmd.sh"; do
        if [[ -f "$candidate" ]]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    printf '%s\n' "$ARGCFILE_ROOT/completions/$cmd.sh"
}


# See more details at https://github.com/sigoden/argc
eval "$(argc --argc-eval "$0" "$@")"
