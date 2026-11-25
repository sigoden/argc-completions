#!/usr/bin/env bash
set -e

export PATH="$(pwd -P)/bin:$PATH"
export ARGC_COMPLETIONS_ROOT="$(pwd -P)"

# @cmd Verify one completion script against its cache fragments
# @arg cmd![`_choice_cmd`]
verify() {
    bash "skills/argc-completions-generate/scripts/verify-completion.sh" "$(_completion_file "$1")"
}

# @cmd Verify every completion script in completions/
verify:all() {
    bash scripts/batch-verify-completions.sh --skip-compgen
}

# @cmd Run test suites under tests/
# @arg test_suite*[`_choice_test_suite`]
test() {
    local suite script
    local suites=("$@")
    if (( ${#suites[@]} == 0 )); then
        for script in tests/*/run.sh; do
            [[ -f "$script" ]] || continue
            suites+=("$(basename "${script%/run.sh}")")
        done
    fi
    local index=0
    for suite in "${suites[@]}"; do
        if [[ "$index" -gt 0 ]]; then
            echo
        fi
        echo "======== tests/$suite/run.sh ========"
        bash "tests/$suite/run.sh"
        index=$((index + 1))
    done
}

# @cmd Move a command's completion script and compile cache into cache/trash
# @flag -u --undo   Restore the command from the trash directory
# @arg cmd![?`_choice_cmd`]
trash() {
    local cmd="$1" os
    local cache_dir="cache/compile/$cmd"
    local trash_dir="cache/trash/$cmd"
    local completions_dir="completions"
    mkdir -p "$(dirname "$trash_dir")"
    os="$(_os)"
    if [[ -n "$argc_undo" ]]; then
        if [[ -f "$trash_dir/$cmd.$os.sh" ]]; then
            mv "$trash_dir/$cmd.$os.sh" "$completions_dir/$os/$cmd.sh"
        fi
        if [[ -f "$trash_dir/$cmd.sh" ]]; then
            mv "$trash_dir/$cmd.sh" "$completions_dir/$cmd.sh"
        fi
        if [[ -d "$trash_dir" ]]; then
            mv "$trash_dir" "$cache_dir"
        fi
    else
        if [[ -d "$cache_dir" ]]; then
            mv "$cache_dir" "$trash_dir"
        else
            mkdir -p "$trash_dir"
        fi
        if [[ -f "$completions_dir/$os/$cmd.sh" ]]; then
            mv "$completions_dir/$os/$cmd.sh" "$trash_dir/$cmd.$os.sh"
        fi
        if [[ -f "$completions_dir/$cmd.sh" ]]; then
            mv "$completions_dir/$cmd.sh" "$trash_dir/$cmd.sh"
        fi
    fi
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
        cd "${argc_cwd:-.}" || exit 1
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
    rev="$(git rev-parse --short HEAD 2>/dev/null || true)"
    printf 'argc-completions %s\n' "${rev:-unknown}"
    printf 'platform: %s\n' "$(uname -s -r -m 2>/dev/null || echo unknown)"
    echo
    bash install.sh --check
}

# Shell completion only: agents resolve completions through SKILL.md §Invariants.
# Both layouts are listed, so a platform-only script is still a candidate and a
# platform directory name never becomes a root.
_choice_cmd() {
    local dir file
    for dir in completions completions/linux \
        completions/macos completions/windows; do
        for file in "$dir"/*.sh; do
            [[ -f "$file" ]] || continue
            file="${file##*/}"
            printf '%s\n' "${file%.sh}"
        done
    done | sort -u
}

# Shell completion only: functions defined in the script's CHOICES block.
_choice_fn_name() {
    local file="${argc_script_file:-}"
    [[ -f "$file" ]] || return 0
    sed -n '/^# >>> CHOICES/,/^# <<< CHOICES/p' "$file" |
        grep -E '^_(choice|helper)_[A-Za-z0-9_]+\(\)[[:space:]]*\{[[:space:]]*$' |
        sed 's/()[[:space:]]*{[[:space:]]*$//'
}

# Shell completion only: test suites defined in the tests directory
_choice_test_suite() {
    local script
    for script in tests/*/run.sh; do
        [[ -f "$script" ]] || continue
        script="${script%/run.sh}"
        printf '%s\n' "${script##*/}"
    done
}

_completion_file() {
    local cmd="$1" os candidate
    os="$(_os)"
    for candidate in \
        "completions/$os/$cmd.sh" \
        "completions/$cmd.sh"; do
        if [[ -f "$candidate" ]]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    printf '%s\n' "completions/$cmd.sh"
}

_os() {
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


# See more details at https://github.com/sigoden/argc
eval "$(argc --argc-eval "$0" "$@")"
