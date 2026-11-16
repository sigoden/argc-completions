#!/usr/bin/env bash
# Shared helpers for the argc-completions-generate skill scripts.
#
# Sections, in source order:
#   bootstrap, logging, prerequisites, host platform, process control,
#   tools and help sources, cli helpers, completion paths, help canonicalization,
#   command paths and fragment naming, fragment records, export checks,
#   block markers and layout, HINTS sections, file helpers.
# Every script sources this file; agents/compile.md sources it too.

# --- bootstrap ---------------------------------------------------------------

set -euo pipefail

LIB_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
REPO_ROOT="$(cd -P "$LIB_DIR/../../.." && pwd -P)"
export PATH="$REPO_ROOT/bin:$PATH"

# Bump when a change alters an existing fragment's canonical help or hash body,
# or when the compile contract requires every node to be rebuilt. A
# backward-compatible widening of source.command leaves existing hashes valid
# and does not bump it.
# shellcheck disable=SC2034 # read by fragment-hash.sh
SKILL_CACHE_VERSION="v2"

# --- logging ----------------------------------------------------------------

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

# --- prerequisites ----------------------------------------------------------

if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
    die "bash >= 5 required (current: ${BASH_VERSION:-unknown})"
fi

# --- host platform ----------------------------------------------------------

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

# detect_os forks uname, and fragment_name_encode/decode run once per path
# segment on every cache walk. Resolve it once when lib.sh is sourced instead;
# every caller reads this instead of the function.
ARGCLIB_OS="$(detect_os)"

# has_command <name>: command -v with a per-process cache. Every script sources
# lib.sh once and probes the same few tools (cygpath, argc, jq, ...); PATH is
# fixed for the lifetime of the process, so the answer is stable.
declare -A ARGCLIB_CMDS=()
has_command() {
    local name="$1"
    if [[ -n "${ARGCLIB_CMDS[$name]+set}" ]]; then
        [[ "${ARGCLIB_CMDS[$name]}" == 1 ]]
        return
    fi
    if command -v "$name" >/dev/null 2>&1; then
        ARGCLIB_CMDS[$name]=1
        return 0
    fi
    ARGCLIB_CMDS[$name]=0
    return 1
}

# Resolve a user-supplied path. Git Bash accepts drive-prefixed paths, but
# prefixing them with PWD would point at a different file; cygpath normalizes
# them to the POSIX form the rest of the scripts use.
absolute_path() {
    local path="$1"
    case "$path" in
        /*) printf '%s\n' "$path" ;;
        [A-Za-z]:[\\/]*)
            if has_command cygpath; then
                cygpath -u "$path"
            else
                printf '%s\n' "$path"
            fi
            ;;
        *) printf '%s/%s\n' "$PWD" "$path" ;;
    esac
}

# Translate a POSIX file path to the form a native Windows binary can open.
# Git Bash runs jq/argc as .exe files, which cannot resolve /c/... or /tmp/...
# when MSYS path conversion is disabled. cygpath -m yields C:/..., which both
# native and MSYS tools accept and which avoids backslash escaping in shell
# code. Non-Windows hosts, relative paths, and Windows paths pass through.
#
# The host check (OSTYPE plus a cached cygpath probe) is resolved once here so a
# call costs nothing beyond the conversion itself; paths are not cached, so a
# caller always gets what cygpath reports for the path it passed.
ARGCLIB_MSYS=0
if [[ "${OSTYPE:-}" == msys* || "${OSTYPE:-}" == cygwin* ]] && has_command cygpath; then
    ARGCLIB_MSYS=1
fi

native_path() {
    local path="$1"
    if [[ "$ARGCLIB_MSYS" == 1 && "$path" == /* ]]; then
        cygpath -m "$path"
    else
        printf '%s\n' "$path"
    fi
}

# --- process control --------------------------------------------------------

# Run a command with stdout/stderr captured to files and a hard timeout.
# Usage: run_with_timeout <stdout-file> <stderr-file> <seconds> <cmd...>
# Pass '-' as the stderr file to merge stderr into stdout.
# Returns the command status; a timeout yields 124, or 137 for a child that
# needed the SIGKILL.
#
# Pure-Perl inline implementation (no external timeout/setsid needed).
# On POSIX the child runs in a new session via POSIX::setsid(), so it cannot
# read the caller's controlling terminal (same intent as `setsid --wait`).
# MSYS2/Cygwin can lose the wait status of a native .exe that is a session
# leader, leaving a zombie the parent never reaps. There the child gets its
# own process group instead, and stdin is redirected from the null device.
run_with_timeout() {
    local out="$1" err="$2" seconds="$3"
    shift 3
    perl -e '
        use strict;
        use warnings;
        use POSIX qw(:sys_wait_h setsid setpgid);
        use Time::HiRes qw(time sleep);

        my ($out, $err, $secs, @cmd) = @ARGV;
        die "usage: run_with_timeout <out> <err> <secs> <cmd...>\n" unless @cmd;

        my $KILL_AFTER = 2;
        my $KILL_GRACE = 1;
        my $WINDOWSISH = ($^O =~ /^(?:msys|cygwin|MSWin32)$/i) ? 1 : 0;
        my $devnull    = ($^O eq "MSWin32") ? "nul" : "/dev/null";

        # Open the output files ("-" means merge/inherit).
        my ($out_fh, $err_fh);
        if ($out eq "-") { open $out_fh, ">&", \*STDOUT or die "dup stdout: $!" }
        else             { open $out_fh, ">", $out    or die "open $out: $!" }
        if ($err eq "-") { open $err_fh, ">&", $out_fh or die "dup err: $!" }
        else             { open $err_fh, ">", $err    or die "open $err: $!" }

        my $pid = fork();
        die "fork: $!" unless defined $pid;

        if ($pid == 0) {
            # Child: contain descendants in their own group and close stdin,
            # then redirect and exec.
            if ($WINDOWSISH) {
                # setsid() makes the child a session leader; MSYS2 can then
                # miss its termination when it is a native .exe, so use a
                # process group instead. Closing stdin keeps a pager from
                # reading the terminal of the caller.
                setpgid(0, 0);
                open STDIN, "<", $devnull or die "open stdin: $!";
            } else {
                setsid();
            }
            open STDOUT, ">&", $out_fh or die "dup2 stdout: $!";
            open STDERR, ">&", $err_fh or die "dup2 stderr: $!";
            exec @cmd;
            exit 127;
        }

        # Mirror the group setup from the parent so the group exists even if
        # the timeout fires before the child runs. A child that has already
        # execd rejects this harmlessly.
        setpgid($pid, $pid) if $WINDOWSISH;

        sub signal_child {
            my ($sig, $target) = @_;
            # Signal the whole group first so a choice function that spawned
            # bash/sleep does not outlive the timeout.
            my $sent = kill $sig, -$target;
            $sent = kill $sig, $target unless $sent;
            return $sent;
        }

        sub child_is_zombie {
            my ($target) = @_;
            open my $fh, "<", "/proc/$target/stat" or return 0;
            my $line = <$fh>;
            close $fh;
            return 0 unless defined $line;
            my $close = rindex($line, ")");
            return 0 if $close < 0;
            my $state = substr($line, $close + 1);
            $state =~ s/^\s+//;
            $state = substr($state, 0, 1);
            return $state eq "Z";
        }

        sub taskkill_tree {
            my ($target) = @_;
            # argc runs a completion function in a detached shell that is not
            # in the process group of argc, so the group signal cannot reach
            # it. taskkill /T walks the Windows parent chain and ends it.
            return unless $WINDOWSISH;
            my $winpid = 0;
            if (open my $fh, "<", "/proc/$target/winpid") {
                my $line = <$fh>;
                close $fh;
                $winpid = $1 if defined $line && $line =~ /(\d+)/;
            }
            return unless $winpid > 0;
            my $root = $ENV{SystemRoot} || $ENV{SYSTEMROOT};
            my $taskkill = "taskkill";
            if ($root) {
                $taskkill = "$root/System32/taskkill.exe";
                $taskkill =~ s{\\}{/}g;
            }
            my $cmd = qq{"$taskkill" /F /T /PID $winpid >$devnull 2>&1};
            # Git Bash rewrites native arguments that look like paths, which
            # turns /F into a drive path. Exempt this one command.
            local $ENV{MSYS2_ARG_CONV_EXCL} = "*";
            system($cmd);
        }

        # Parent: wait with timeout and kill-after logic.
        my $deadline     = time + $secs;
        my $term_sent_at;
        my $killed       = 0;
        my $kill_sent_at;

        while (1) {
            my $r = waitpid($pid, WNOHANG);
            if ($r == $pid) {
                my $st  = $?;
                my $sig = $st & 127;
                if ($killed && $sig == 9) {
                    exit 137;              # only SIGKILL could end it
                }
                if (defined $term_sent_at) {
                    exit 124;              # we sent TERM -> timed out
                }
                exit($sig ? 128 + $sig : $st >> 8);  # normal exit: propagate
            }

            my $now = time;
            if (!defined $term_sent_at && $now >= $deadline) {
                # On Windows, end the tree while argc is still alive: once
                # argc exits, taskkill can no longer find the detached shell
                # that runs the completion function.
                taskkill_tree($pid) if $WINDOWSISH;
                signal_child("TERM", $pid);
                $term_sent_at = $now;
            }
            if (defined $term_sent_at && !$killed
                && $now >= $term_sent_at + $KILL_AFTER) {
                taskkill_tree($pid);
                signal_child("KILL", $pid);
                $killed = 1;
                $kill_sent_at = $now;
            }
            # A child whose wait status the runtime never reports must not
            # spin the wrapper forever. The timeout already fired, so report
            # the documented timeout status.
            if (defined $kill_sent_at && $now >= $kill_sent_at + $KILL_GRACE) {
                exit 137;
            }
            if (defined $term_sent_at && child_is_zombie($pid)) {
                exit($killed ? 137 : 124);
            }
            sleep 0.05;
        }
    ' -- "$out" "$err" "$seconds" "$@"
}

# Run a help command with stdin closed and a timeout so a pager, an
# interactive prompt, or a terminal probe cannot hang the caller. Stdout and
# stderr share one file.
# Usage: capture_help <output-file> <timeout-seconds> <cmd...>
# Returns the command status; use it in `if`/`||` because lib.sh runs under
# `set -e`.
capture_help() {
    local output="$1" seconds="$2"
    shift 2
    run_with_timeout "$output" "-" "$seconds" \
        env PAGER=cat MANPAGER=cat COLUMNS=9999 NO_COLOR=1 "$@" </dev/null
}

# --- tools and help sources -------------------------------------------------

require_cmd() {
    local cmd="$1" hint="${2:-}"
    if ! has_command "$cmd"; then
        if [[ -n "$hint" ]]; then
            die "missing dependency: $cmd ($hint)"
        else
            die "missing dependency: $cmd"
        fi
    fi
}

# A source.command is a single-line shell expression. It must be non-empty and
# free of control characters: the fragment record stream is line-based, so a
# newline would truncate the command before it is executed.
source_command_ok() {
    local command="$1"
    [[ -n "$command" ]] || return 1
    [[ "$command" =~ [^[:space:]] ]] || return 1
    [[ ! "$command" =~ [[:cntrl:]] ]]
}

# The old safe-token form. It keeps the argv fast path, so existing fragments
# run exactly as before and their hashes stay valid; any other expression goes
# through `bash -c`.
source_command_simple() {
    [[ "$1" =~ ^[A-Za-z0-9_.+:@/-]+( [A-Za-z0-9_.+:@/-]+)*$ ]]
}

# Run source.command with the fixed help environment and a timeout.
# Usage: capture_source_command <output-file> <timeout-seconds> <command>
# Returns 2 for an invalid command; otherwise the command status. A simple
# token command runs as an argv array; a shell expression runs through
# `bash -c` with BASH_ENV/ENV cleared so a user startup file cannot pollute the
# capture. The `help` builtin is a bash builtin, so it takes the shell path too.
capture_source_command() {
    local output="$1" seconds="$2" command="$3"
    local -a argv=()
    source_command_ok "$command" || return 2
    if source_command_simple "$command"; then
        read -r -a argv <<<"$command"
        if [[ "${argv[0]}" != "help" ]]; then
            capture_help "$output" "$seconds" "${argv[@]}"
            return
        fi
    fi
    capture_help "$output" "$seconds" env BASH_ENV= ENV= bash -c "$command"
}

# Print the lowercase hex SHA-256 of stdin.
sha256_hex() {
    perl -MDigest::SHA -e 'binmode STDIN; my $d = Digest::SHA->new(256); $d->addfile(*STDIN); print $d->hexdigest, "\n"'
}

# Entry points that run the whole pipeline call this once; a script that needs
# one tool calls require_cmd for exactly that tool instead of pulling the whole
# prerequisite set in. references/setup.md §Environment documents the same set.
require_pipeline_tools() {
    require_cmd argc "run $REPO_ROOT/install.sh"
    require_cmd jq "run $REPO_ROOT/install.sh"
    require_cmd gawk "run $REPO_ROOT/install.sh or install gawk"
    require_cmd sed
    require_cmd grep
    require_cmd find
}

# --- cli helpers ------------------------------------------------------------

# cli_require_value <flag> <remaining-argc>: die with the documented message
# when an option that takes a value is missing it, so every script keeps the
# same wording and exit status.
cli_require_value() {
    [[ "$2" -ge 2 ]] || die "$1 requires a value"
}

# path_args_valid <root> [<sub>...]: a root/subcommand path made only of the
# characters a completion file and its cache directory can carry. The caller
# owns the message; a script that reports one component at a time calls
# root_name_ok/sub_name_ok directly.
path_args_valid() {
    local root="$1" part
    shift
    root_name_ok "$root" || return 1
    for part in "$@"; do
        [[ -n "$part" ]] || return 1
        sub_name_ok "$part" || return 1
    done
    return 0
}

# fragment_cache_dir <root> [<override>]: the fragment cache directory.
fragment_cache_dir() {
    local root="$1" override="${2:-}"
    if [[ -n "$override" ]]; then
        printf '%s\n' "$override"
    else
        printf '%s\n' "$REPO_ROOT/cache/compile/$root"
    fi
}

# --- completion paths -------------------------------------------------------

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

# completion_bridge_name <file>: print the bridge name when <file> is a copy of
# bridges/<name>.sh, or nothing otherwise. A bridge completion binds
# `_choice_bridge_<name>` in a SPEC @arg/@option/@flag line; matching only those
# lines keeps an unrelated CHOICES function from counting as a bridge.
completion_bridge_name() {
    local ref
    ref="$(grep -E '^# @(arg|option|flag) ' "$1" |
        grep -oE '`_choice_bridge_[A-Za-z0-9_]+`' |
        head -n 1 | tr -d '`' || true)"
    [[ -n "$ref" ]] || return 0
    printf '%s\n' "${ref#_choice_bridge_}"
}

# --- help canonicalization --------------------------------------------------

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

# Print the summary from the NAME section of `man <name>`.
#
# Output is the raw one-line text after the NAME entry's " - " or " -- "
# separator, with wrapped lines joined; pass it to normalize-description.sh.
# Returns 1 when man or the NAME summary is unavailable, 2 for an invalid name.
# This is a description-only read: it never supplies items, and it never
# changes a fragment's source.command, source.kind, or hash.
man_name_summary() {
    local name="$1" tmp_dir raw clean summary
    # A leading "-" would reach man as an option (for example -k), so the man
    # name is stricter than a generic root name.
    [[ "$name" != "." && "$name" != ".." && "$name" =~ ^[A-Za-z0-9_.+@][A-Za-z0-9_.+@-]*$ ]] || return 2
    tmp_dir="$(mktemp -d)"
    raw="$tmp_dir/man.txt"
    clean="$tmp_dir/man-clean.txt"
    if ! capture_source_command "$raw" 10 "LC_ALL=C MANWIDTH=1000 man $name" || [[ ! -s "$raw" ]]; then
        rm -rf "$tmp_dir"
        return 1
    fi
    if ! canonicalize_help <"$raw" >"$clean"; then
        rm -rf "$tmp_dir"
        return 1
    fi
    # A man NAME entry is "name[, alias...] - description" (some pages use
    # " -- "); the first separator ends the name list, and continuation lines
    # are indented, so join them before cutting.
    if ! summary="$(gawk '
        BEGIN { in_name = 0 }
        /^NAME[[:space:]]*$/ { in_name = 1; next }
        in_name && /^[^[:space:]]/ { exit }
        in_name {
            sub(/^[[:space:]]+/, "")
            if ($0 == "") next
            out = (out == "" ? $0 : out " " $0)
        }
        END {
            if (out == "") exit 1
            i1 = index(out, " - ")
            i2 = index(out, " -- ")
            if (i1 == 0 && i2 == 0) exit 1
            if (i2 > 0 && (i1 == 0 || i2 < i1)) {
                out = substr(out, i2 + 4)
            } else {
                out = substr(out, i1 + 3)
            }
            sub(/^[[:space:]]+/, "", out)
            sub(/[[:space:]]+$/, "", out)
            if (out == "") exit 1
            print out
        }
    ' "$clean")"; then
        rm -rf "$tmp_dir"
        return 1
    fi
    rm -rf "$tmp_dir"
    printf '%s\n' "$summary"
}

# --- command paths and fragment naming --------------------------------------

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

# Windows cannot store ":" in a file name, but argc command paths such as
# `pm2 profile:mem` keep it. On Windows only, encode that character; "%" is not
# a valid path character, so the mapping is unambiguous. Other platforms keep
# the existing colon names.
fragment_name_encode() {
    if [[ "$ARGCLIB_OS" == windows ]]; then
        printf '%s\n' "${1//:/%3A}"
    else
        printf '%s\n' "$1"
    fi
}

fragment_name_decode() {
    if [[ "$ARGCLIB_OS" == windows ]]; then
        printf '%s\n' "${1//%3A/:}"
    else
        printf '%s\n' "$1"
    fi
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
    result="$fragments/$(fragment_name_encode "$1")"
    shift
    local part
    for part in "$@"; do
        result="$result/$(fragment_name_encode "$part")"
    done
    printf '%s.json\n' "$result"
}

# Print the fragment file of a child declared by <parent-fragment>.
# Usage: fragment_child_file <cache-dir> <parent-fragment> <child-name>...
# A parent beside the root fragment puts its children in the cache directory;
# a deeper parent puts them in its own directory.
fragment_child_file() {
    local cache_dir="$1" parent="$2" name dir
    shift 2
    if [[ "$parent" == "$cache_dir/_root.json" ]]; then
        dir="$cache_dir"
    else
        dir="${parent%.json}"
    fi
    for name in "$@"; do
        dir="$dir/$(fragment_name_encode "$name")"
    done
    printf '%s.json\n' "$dir"
}

# Walk every fragment in a cache directory in a stable order.
# Usage: fragment_walk <cache-dir> <root>
# Prints one "<key>\t<relative-path>\t<absolute-path>" line per fragment.
# The Windows colon decoding is inlined so the walk does not fork once per path
# segment: this runs for every fragment of every root.
fragment_walk() {
    local cache_dir="$1" root="$2" file rel key part decoded
    local -a parts
    while IFS= read -r file; do
        rel="${file#"$cache_dir"/}"
        [[ "$rel" != "$file" ]] || continue
        case "$rel" in
            *.json) ;;
            *) continue ;;
        esac
        rel="${rel%.json}"
        if [[ "$rel" == "_root" ]]; then
            key="$root"
        else
            key="$root"
            IFS='/' read -r -a parts <<<"$rel"
            for part in "${parts[@]}"; do
                decoded="$part"
                if [[ "$ARGCLIB_OS" == windows ]]; then
                    decoded="${decoded//%3A/:}"
                fi
                key="$key|$decoded"
            done
        fi
        printf '%s\t%s\t%s\n' "$key" "$rel" "$file"
    done < <(find "$cache_dir" -type f -name '*.json' | LC_ALL=C sort)
}

# --- fragment records -------------------------------------------------------

# Run a jq filter or program with this directory on the module search path, so
# a program can `include "description-rules"` (validate-fragment.jq and
# the description normalizer share one rule set).
# Usage: jq_skill [jq-options...] <filter|--file>
jq_skill() {
    jq -L "$JQ_SKILL_DIR" "$@"
}

# The jq module search path, resolved once: every jq_skill call would otherwise
# re-run native_path (a cygpath fork on Windows).
JQ_SKILL_DIR="$(native_path "$LIB_DIR")"

# Print the record stream for one fragment (validate-fragment.jq in records
# mode): one derived-field record per line instead of one jq invocation per
# field. The fragment is validated first, so this fails with the same message
# validate-fragment.jq itself prints and emits nothing.
# Usage: read_fragment_records <key> <fragment-file>
read_fragment_records() {
    jq_skill -b -r -f "$JQ_SKILL_DIR/validate-fragment.jq" \
        --arg key "$1" --arg mode records "$(native_path "$2")"
}

# Same records without the schema verdict, for a caller that checks individual
# fields itself (verify-completion's provenance and cache hygiene, and the hash
# helper, which reads source.kind/source.command before the fragment is known
# to be valid). <key> only names the generated static-choice functions.
extract_fragment_records() {
    jq_skill -b -r -f "$JQ_SKILL_DIR/validate-fragment.jq" \
        --arg key "${1:-}" --arg mode extract "$(native_path "$2")"
}

extract_fragment_records() {
    jq_skill -b -r -f "$JQ_SKILL_DIR/validate-fragment.jq" \
        --arg key "${1:-}" --arg mode extract "$(native_path "$2")"
}

# Turn a record stream into one provenance line, keeping the record's own US
# separator: "kind<US>hash<US>source.command<US>source.section" (the X record
# fields). US is not IFS whitespace, so an empty hash or section survives the
# caller's `read`; a tab would collapse the fields. Pure bash, because the
# caller already holds the stream.
# Returns 1 when the stream has no X record.
# Usage: records_provenance "<records>"
records_provenance() {
    local records="$1" line f1 f2 f3 f4
    while IFS= read -r line; do
        [[ "$line" == X$'\x1f'* ]] || continue
        IFS=$'\x1f' read -r _ f1 f2 f3 f4 <<<"$line"
        printf '%s\x1f%s\x1f%s\x1f%s\n' "$f1" "$f2" "$f3" "$f4"
        return 0
    done <<<"$records"
    return 1
}

# Print the S records (declared subcommands) of a record stream unchanged:
# "S<US>name<US>status<US>aliases-csv<US>description", one per line.
# Usage: records_declared_subcommands "<records>"
records_declared_subcommands() {
    local records="$1" line
    while IFS= read -r line; do
        if [[ "$line" == S$'\x1f'* ]]; then
            printf '%s\n' "$line"
        fi
    done <<<"$records"
}

# Print a JSON array of strings: json_string_array a b -> ["a","b"].
json_string_array() {
    local out="" value
    for value in "$@"; do
        value="${value//\\/\\\\}"
        value="${value//\"/\\\"}"
        out+="${out:+,}\"$value\""
    done
    printf '[%s]\n' "$out"
}

# --- export checks ----------------------------------------------------------

# True when an argc export binds a choice function this run did not generate
# (no allowed _static_* name), i.e. a completion function leaked into a script
# that must not define one. One jq program, shared by assemble and verify.
# Usage: export_has_foreign_fn_choice <export-json> [<allowed-static-name>...]
# Returns 0 when no foreign Fn choice exists.
export_has_foreign_fn_choice() {
    local export_json="$1" names_json="[]"
    shift
    if [[ $# -gt 0 ]]; then
        names_json="$(printf '%s\n' "$@" | jq -R . | jq -s .)"
    fi
    jq -e --argjson names "$names_json" '
        [.. | objects | select(has("choice")) | .choice
         | select(. != null and .type == "Fn") | .data[0]
         | select((($names // []) | index(.)) == null)] | length == 0
    ' "$(native_path "$export_json")" >/dev/null
}

# --- block markers and layout -----------------------------------------------

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

# Summarize one script's pipeline blocks in a single pass.
# Usage: block_facts <file>
# Prints, in order:
#   layout=marked|unmarked      any block marker present
#   first=<n>|0                 first opening marker line
#   last=<n>|0                  last closing marker line
#   SPEC <opens> <start> <end> <closes>
#   HINTS ... / STATIC ... / CHOICES ...
# Every block count, order, and region boundary comes from this, so assemble and
# verify share one parser instead of a dozen greps and heads.
block_facts() {
    local file="$1"
    if [[ ! -f "$file" ]]; then
        printf 'layout=unmarked\nfirst=0\nlast=0\n'
        printf '%s 0 0 0 0\n' SPEC HINTS STATIC CHOICES
        return 0
    fi
    gawk '
    BEGIN {
        split("SPEC HINTS STATIC CHOICES", order, " ")
        for (i = 1; i <= 4; i++) {
            opens[order[i]] = 0
            closes[order[i]] = 0
            start[order[i]] = 0
            end[order[i]] = 0
        }
        first = 0
        last = 0
    }
    /^# >>> (SPEC|HINTS|STATIC|CHOICES)$/ {
        name = substr($0, 7)
        opens[name]++
        if (start[name] == 0) start[name] = NR
        if (first == 0 || NR < first) first = NR
        next
    }
    /^# <<< (SPEC|HINTS|STATIC|CHOICES)$/ {
        name = substr($0, 7)
        closes[name]++
        if (end[name] == 0) end[name] = NR
        if (NR > last) last = NR
    }
    END {
        print (first > 0 ? "layout=marked" : "layout=unmarked")
        print "first=" first
        print "last=" last
        for (i = 1; i <= 4; i++) {
            name = order[i]
            print name, opens[name], start[name], end[name], closes[name]
        }
    }
    ' "$file"
}

# Facts of the last block_facts_load call.
BLOCK_FACTS_LAYOUT=""
BLOCK_FACTS_FIRST=0
BLOCK_FACTS_LAST=0
declare -A BLOCK_OPENS=() BLOCK_START=() BLOCK_END=() BLOCK_CLOSES=()

# Parse block_facts for one file into the BLOCK_* globals above, so a caller
# gets every count and boundary it reports from one pass and one process.
# Usage: block_facts_load <file>
block_facts_load() {
    local file="$1" name f2 f3 f4 f5
    BLOCK_FACTS_LAYOUT=""
    BLOCK_FACTS_FIRST=0
    BLOCK_FACTS_LAST=0
    BLOCK_OPENS=()
    BLOCK_START=()
    BLOCK_END=()
    BLOCK_CLOSES=()
    while read -r name f2 f3 f4 f5; do
        case "$name" in
            layout=*) BLOCK_FACTS_LAYOUT="${name#layout=}" ;;
            first=*) BLOCK_FACTS_FIRST="${name#first=}" ;;
            last=*) BLOCK_FACTS_LAST="${name#last=}" ;;
            SPEC | HINTS | STATIC | CHOICES)
                BLOCK_OPENS[$name]="$f2"
                BLOCK_START[$name]="$f3"
                BLOCK_END[$name]="$f4"
                BLOCK_CLOSES[$name]="$f5"
                ;;
        esac
    done < <(block_facts "$file")
}

# True when the block layout is the supported one: SPEC and HINTS exactly once,
# STATIC and CHOICES absent or exactly once, ordered SPEC -> HINTS -> [STATIC]
# -> [CHOICES], every present block closed after it opens, and at least one
# marker present. Both callers already print their own message, so this also
# reports why it failed.
# Usage: block_layout_ok <file>
# Reads BLOCK_LAYOUT_REASON afterwards: unmarked, bounds, duplicate:<NAME>, or
# order.
# Set the reason the last block_layout_ok call failed. One assignment site, so
# the "global is written but never read here" note stays in one place.
# shellcheck disable=SC2034 # read by the callers that print the verdict
_block_layout_reason() { BLOCK_LAYOUT_REASON="$1"; }

# shellcheck disable=SC2034 # read by the callers that print the verdict
BLOCK_LAYOUT_REASON=""
block_layout_ok() {
    local name
    _block_layout_reason ""
    block_facts_load "$1"

    if [[ "$BLOCK_FACTS_LAYOUT" != "marked" ]]; then
        _block_layout_reason unmarked
        return 1
    fi
    if ! [[ "$BLOCK_FACTS_FIRST" -gt 0 && "$BLOCK_FACTS_LAST" -gt 0 && "$BLOCK_FACTS_FIRST" -lt "$BLOCK_FACTS_LAST" ]]; then
        _block_layout_reason bounds
        return 1
    fi
    for name in SPEC HINTS; do
        if ! [[ "${BLOCK_OPENS[$name]}" -eq 1 && "${BLOCK_CLOSES[$name]}" -eq 1 ]]; then
            _block_layout_reason "duplicate:$name"
            return 1
        fi
    done
    for name in STATIC CHOICES; do
        if ! [[ "${BLOCK_OPENS[$name]}" -eq "${BLOCK_CLOSES[$name]}" && "${BLOCK_OPENS[$name]}" -le 1 ]]; then
            _block_layout_reason "duplicate:$name"
            return 1
        fi
        if [[ "${BLOCK_OPENS[$name]}" -eq 1 ]] && ! [[ "${BLOCK_START[$name]}" -lt "${BLOCK_END[$name]}" ]]; then
            _block_layout_reason order
            return 1
        fi
    done
    if ! [[ "${BLOCK_START[SPEC]}" -lt "${BLOCK_START[HINTS]}" ]]; then
        _block_layout_reason order
        return 1
    fi
    if [[ "${BLOCK_OPENS[STATIC]}" -eq 1 ]] && ! [[ "${BLOCK_START[HINTS]}" -lt "${BLOCK_START[STATIC]}" ]]; then
        _block_layout_reason order
        return 1
    fi
    if [[ "${BLOCK_OPENS[CHOICES]}" -eq 1 ]]; then
        if [[ "${BLOCK_OPENS[STATIC]}" -eq 1 ]]; then
            if ! [[ "${BLOCK_START[STATIC]}" -lt "${BLOCK_START[CHOICES]}" ]]; then
                _block_layout_reason order
                return 1
            fi
        elif ! [[ "${BLOCK_START[HINTS]}" -lt "${BLOCK_START[CHOICES]}" ]]; then
            _block_layout_reason order
            return 1
        fi
    fi
    return 0
}

# --- HINTS sections ---------------------------------------------------------
# The HINTS block holds prompt text for the compile subagents. Lines before the
# first `# %%` marker are common to every command path; a `# %%<path>` section
# is visible only for that exact path (no inheritance). Compare paths with
# collapsed whitespace so an extra space or a trailing blank still matches.

# Collapse whitespace runs in a space-separated command path and trim both edges.
normalize_path_spaces() {
    local path="$1"
    path="$(printf '%s' "$path" | tr -s '[:blank:]' ' ')"
    path="${path# }"
    path="${path% }"
    printf '%s\n' "$path"
}

# Print the normalized command path of a `# %%<path>` marker line. Returns 1
# when the line is not a marker; a marker without a path prints an empty line.
hints_marker_path() {
    local line="$1"
    [[ "$line" == '# %%'* ]] || return 1
    normalize_path_spaces "${line#'# %%'}"
}

# Print the HINTS lines visible to one command path.
# Usage: hints_select <hints_body> <path>
# Common lines lead, the exact-path section follows, and both keep their file
# order and whitespace. A marker without a path never matches a real path.
hints_select() {
    gawk -v want="$(normalize_path_spaces "$2")" '
    function norm(s) {
        gsub(/[ \t]+/, " ", s)
        sub(/^ /, "", s)
        sub(/ $/, "", s)
        return s
    }
    /^# %%/ {
        in_section = 1
        section = norm(substr($0, 5))
        if (section == "") section = "\001"
        next
    }
    !in_section || section == want { print }
    ' "$1"
}

# --- file helpers -----------------------------------------------------------

# Copy <input> to <output>, dropping the leading blank lines.
trim_leading_blank_edges() {
    local input="$1" output="$2"
    gawk '
    { lines[NR] = $0 }
    END {
        start = 1
        while (start <= NR && lines[start] ~ /^[[:space:]]*$/) start++
        for (i = start; i <= NR; i++) print lines[i]
    }
    ' "$input" >"$output"
}

# Copy <input> to <output>, dropping the trailing blank lines.
trim_trailing_blank_edges() {
    local input="$1" output="$2"
    gawk '
    { lines[NR] = $0 }
    END {
        end = NR
        while (end >= 1 && lines[end] ~ /^[[:space:]]*$/) end--
        for (i = 1; i <= end; i++) print lines[i]
    }
    ' "$input" >"$output"
}

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
